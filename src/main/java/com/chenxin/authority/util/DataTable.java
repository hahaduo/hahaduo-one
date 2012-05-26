package com.chenxin.authority.util;

import com.aspose.cells.ICellsDataTable;

/**
 * Created with IntelliJ IDEA.
 * User: lihj
 * Date: 12-4-21
 * Time: 上午9:51
 * To change this template use File | Settings | File Templates.
 */
public class DataTable implements ICellsDataTable {
    public String[] getColumns() {
        return new String[0];
    }

    public int getCount() {
        return 0;
    }

    public void beforeFirst() {
    }

    /**
     *
     * @param i
     * @return
     */
    public Object get(int i) {
        return null;
    }

    public Object get(String s) {
        return null;
    }

    public boolean next() {
        return false;
    }
}
