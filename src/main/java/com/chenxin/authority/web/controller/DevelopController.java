package com.chenxin.authority.web.controller;

import com.aspose.cells.*;
import com.chenxin.authority.service.BaseModulesService;
import com.chenxin.authority.util.DataTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: lihj
 * Date: 12-4-15
 * Time: 上午9:35
 * To change this template use File | Settings | File Templates.
 */

@Controller
@RequestMapping("/develop")
public class DevelopController implements ServletContextAware{

    private static final Logger logger = LoggerFactory.getLogger(DevelopController.class);

    private ServletContext servletContext;

    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    @Autowired
    private BaseModulesService baseModulesService;

    @RequestMapping(value = "naviToExportMenu",method = RequestMethod.GET)
     public String navi2ExportMenu() {
        return "develop/ExportMenu";
    }

    @RequestMapping(value = "exportMenu",method = RequestMethod.GET)
    public String exportMenu(HttpServletRequest request,HttpServletResponse response) {
//        baseModulesService.selectAllModules
        String template_rel_path = "";
        String template_file_path = request.getSession().getServletContext().getRealPath("template");
        try {
            Workbook wb = new Workbook(template_file_path);
            WorkbookDesigner designer = new WorkbookDesigner();
            designer.setWorkbook(wb);
            ICellsDataTable dataTable = new DataTable();
            designer.setDataSource("jj",dataTable);
            designer.process(false);

            setResponseHeader(response,wb.getFileName(),wb.getFileName());
            wb.save(response.getOutputStream(),wb.getFileFormat());
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "develop/ExportMenu";
    }

    protected void setResponseHeader(HttpServletResponse response, String fileName, String formatSuffix)
    {
        String contentType = "application/vnd.ms-excel";
        formatSuffix = formatSuffix.toLowerCase();
        if(formatSuffix.endsWith(".xlsx")
                || formatSuffix.endsWith(".xlsb")
                || formatSuffix.endsWith(".xlsm")
                || formatSuffix.endsWith(".xltm")
                || formatSuffix.endsWith(".xltx"))
        {
            contentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        }
        response.setContentType(contentType);
        response.addHeader("content-disposition", "inline;filename=" + fileName);
    }

}
