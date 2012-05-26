insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'sex', '�Ա�', '0', '��', 1, 1);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'sex', '�Ա�', '1', 'Ů', 1, 2);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'sex', '�Ա�', '2', '����', 1, 3);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'sex', '�Ա�', '3', '����', 0, 4);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'pagesize', 'ÿҳ��ʾ����', '10', '10��/ҳ', 1, 1);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'pagesize', 'ÿҳ��ʾ����', '20', '20��/ҳ', 1, 2);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'pagesize', 'ÿҳ��ʾ����', '30', '30��/ҳ', 1, 3);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'pagesize', 'ÿҳ��ʾ����', '50', '50��/ҳ', 1, 4);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'theme', '���', 'xtheme-blue.css', '������ɫ', 1, 1);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'theme', '���', 'xtheme-gray.css', '��Լ��ɫ', 1, 2);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'leaf', '��ģ��', '0', '���ڵ�', 1, 1);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'leaf', '��ģ��', '1', '�ӽڵ�', 1, 2);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'expanded', 'չ��״̬', '0', '����', 1, 1);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'expanded', 'չ��״̬', '1', 'չ��', 1, 2);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'isdisplay', '�Ƿ���ʾ', '0', '��', 1, 1);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'isdisplay', '�Ƿ���ʾ', '1', '��', 1, 2);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'pagesize', 'ÿҳ��ʾ����', '100', '100��/ҳ', 1, 5);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'pagesize', 'ÿҳ��ʾ����', '200', '200��/ҳ', 1, 6);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'pagesize', 'ÿҳ��ʾ����', '500', '500��/ҳ', 0, 7);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'enabled', '�Ƿ�����', '0', '����', 1, 2);
insert into BASE_FIELDS (field_id, field, field_name, value_field, display_field, enabled, sort)values (sys_guid(), 'enabled', '�Ƿ�����', '1', '����', 1, 1);
commit;




insert into BASE_MODULES (module_id, module_name, module_url, parent_id, leaf, expanded, display_index, is_display, en_module_name, icon_css, information)
values (14, 'ϵͳ�ֶι���', '/field', 1, 1, 1, 4, 1, 'field', 'field', null);
insert into BASE_MODULES (module_id, module_name, module_url, parent_id, leaf, expanded, display_index, is_display, en_module_name, icon_css, information)
values (11, '��ɫ����', '/role', 1, 1, 0, 3, 1, 'Role Management', 'role', null);
insert into BASE_MODULES (module_id, module_name, module_url, parent_id, leaf, expanded, display_index, is_display, en_module_name, icon_css, information)
values (12, '�û�����', '/user', 1, 1, 0, 2, 1, 'User Management', 'user', null);
insert into BASE_MODULES (module_id, module_name, module_url, parent_id, leaf, expanded, display_index, is_display, en_module_name, icon_css, information)
values (13, 'ģ�����', '/module', 1, 1, 0, 1, 1, 'Module Management', 'module', null);
insert into BASE_MODULES (module_id, module_name, module_url, parent_id, leaf, expanded, display_index, is_display, en_module_name, icon_css, information)
values (1, 'ϵͳ����', null, 0, 0, 1, 1, 1, 'System Settings', 'system_settings', null);
insert into BASE_MODULES (module_id, module_name, module_url, parent_id, leaf, expanded, display_index, is_display, en_module_name, icon_css, information)
values (2, '��Ӧ�̹���', null, 0, 0, 1, 2, 1, 'Operator', 'abc', null);
insert into BASE_MODULES (module_id, module_name, module_url, parent_id, leaf, expanded, display_index, is_display, en_module_name, icon_css, information)
values (21, '��Ӧ����Ϣ', '/oprator', 2, 1, 0, 1, 1, 'oprator', 'cde', null);
commit;


insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('91F1012B942441BBBFEBB01E0859F453', '754701188F1F40C782171D0E3040E5D2', 2);
insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('BB6294112EEE412F9F5C2E717958E10D', '754701188F1F40C782171D0E3040E5D2', 21);
insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('E730317B9410429DB6F9A00ABF9332FF', '3D84F5FEB9D44E28B5D91710C637283A', 1);
insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('3B84F28C3E5C428DAA8FAB14661AF2F5', '3D84F5FEB9D44E28B5D91710C637283A', 2);
insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('4E46393B3BFC4F70AD67C667744F4653', '3D84F5FEB9D44E28B5D91710C637283A', 13);
insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('75E5CFFE05F644099BDE0A98B15D7C5C', '3D84F5FEB9D44E28B5D91710C637283A', 12);
insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('8C11EF2FAC9A4B94AE92FE3DE614B31D', '3D84F5FEB9D44E28B5D91710C637283A', 11);
insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('86D6AFEC6E4642E5840831CE0E1A307D', '3D84F5FEB9D44E28B5D91710C637283A', 14);
insert into BASE_ROLE_MODULE (role_module_id, role_id, module_id)values ('70D092E4C4644417AF64963B7DAB7D13', '3D84F5FEB9D44E28B5D91710C637283A', 21);
commit;


insert into BASE_ROLES (role_id, role_name, role_desc)values ('3D84F5FEB9D44E28B5D91710C637283A', '����Ա', '����Ա');
insert into BASE_ROLES (role_id, role_name, role_desc)values ('754701188F1F40C782171D0E3040E5D2', '���Խ�ɫ', '���Խ�ɫ');
commit;

insert into BASE_USERS (user_id, account, password, real_name, sex, email, mobile, office_phone, last_login_time, last_login_ip, remark)values ('E9F8563613364D13AC7F503591EE8F6E', 'test', 'c0f40fddd2c81de6bd37023d8219782f', '�����û�', 0, 'test@qq.com', '119', '110', to_date('21-11-2011 15:48:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into BASE_USERS (user_id, account, password, real_name, sex, email, mobile, office_phone, last_login_time, last_login_ip, remark)values ('38AD4E59A9D64F95AE77AAB16D198DDA', 'admin', 'c0f40fddd2c81de6bd37023d8219782f', '��������Ա', 0, 'admin@whty.com.cn', '119', '110', to_date('16-12-2011 12:01:36', 'dd-mm-yyyy hh24:mi:ss'), '127.0.0.1', '�û���Ϣ');
commit;

insert into BASE_USER_ROLE (user_role_id, user_id, role_id)values ('D1424A23EB254AE59FFE604343E2BBB3', '38AD4E59A9D64F95AE77AAB16D198DDA', '3D84F5FEB9D44E28B5D91710C637283A');
insert into BASE_USER_ROLE (user_role_id, user_id, role_id)values ('543E84984C4D4E76BE120174225A8422', 'E9F8563613364D13AC7F503591EE8F6E', '754701188F1F40C782171D0E3040E5D2');
commit;