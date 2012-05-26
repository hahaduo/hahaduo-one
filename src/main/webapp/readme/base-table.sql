alter table base_role_module
   drop constraint FK_BASE_ROL_REFERENCE_BASE_ROL;

alter table base_role_module
   drop constraint FK_BASE_ROL_REFERENCE_BASE_MOD;

alter table base_user_role
   drop constraint FK_BASE_USE_REFERENCE_BASE_USE;

alter table base_user_role
   drop constraint FK_BASE_USE_REFERENCE_BASE_ROL;

drop table base_fields cascade constraints;

drop table base_modules cascade constraints;

drop table base_role_module cascade constraints;

drop table base_roles cascade constraints;

drop table base_user_role cascade constraints;

drop table base_users cascade constraints;

/*==============================================================*/
/* Table: base_fields                                         */
/*==============================================================*/
create table base_fields  (
   field_id           VARCHAR2(32)                    not null,
   field              VARCHAR2(64),
   field_name         VARCHAR2(128),
   value_field        VARCHAR2(128),
   display_field      VARCHAR2(128),
   enabled            NUMBER(2),
   sort               NUMBER(2),
   constraint PK_BASE_FIELDS primary key (field_id)
);

comment on table base_fields is
'ϵͳ�ֶ����ñ�';

comment on column base_fields.field_id is
'�ֶ�ID';

comment on column base_fields.field is
'�ֶ�';

comment on column base_fields.field_name is
'�ֶ����';

comment on column base_fields.value_field is
'�ֶ�ֵ';

comment on column base_fields.display_field is
'�ֶ���ʾֵ';

comment on column base_fields.enabled is
'�Ƿ�����';

comment on column base_fields.sort is
'����';

/*==============================================================*/
/* Table: base_modules                                        */
/*==============================================================*/
create table base_modules  (
   module_id          NUMBER(9)                       not null,
   module_name        VARCHAR2(64)                    not null,
   module_url         VARCHAR2(64),
   parent_id          NUMBER(9),
   leaf               NUMBER(1),
   expanded           NUMBER(1),
   display_index      NUMBER(2),
   is_display         NUMBER(1),
   en_module_name     VARCHAR2(64),
   icon_css           VARCHAR2(128),
   information        VARCHAR2(128),
   constraint PK_BASE_MODULES primary key (module_id)
);

comment on table base_modules is
'ϵͳģ���';

comment on column base_modules.module_id is
'ģ��ID';

comment on column base_modules.module_name is
'ģ�����';

comment on column base_modules.module_url is
'ģ��URL';

comment on column base_modules.parent_id is
'��ģ��ID';

comment on column base_modules.leaf is
'Ҷ�ӽڵ�(0:��֦�ڵ�;1:Ҷ�ӽڵ�)';

comment on column base_modules.expanded is
'չ��״̬(1:չ��;0:����)';

comment on column base_modules.display_index is
'��ʾ˳��';

comment on column base_modules.is_display is
'�Ƿ���ʾ 0:�� 1:��';

comment on column base_modules.en_module_name is
'ģ��Ӣ�����';

comment on column base_modules.icon_css is
'ͼ�������ʽ';

comment on column base_modules.information is
'�ڵ�˵��';

/*==============================================================*/
/* Table: base_role_module                                    */
/*==============================================================*/
create table base_role_module  (
   role_module_id     VARCHAR2(32)                    not null,
   role_id            VARCHAR2(32)                    not null,
   module_id          NUMBER(9)                       not null,
   constraint PK_BASE_ROLE_MODULE primary key (role_module_id)
);

comment on table base_role_module is
'��ɫģ���';

comment on column base_role_module.role_module_id is
'��ɫģ��ID';

comment on column base_role_module.role_id is
'��ɫID';

comment on column base_role_module.module_id is
'ģ��ID';

/*==============================================================*/
/* Table: base_roles                                          */
/*==============================================================*/
create table base_roles  (
   role_id            VARCHAR2(32)                    not null,
   role_name          VARCHAR2(64),
   role_desc          VARCHAR2(128),
   constraint PK_BASE_ROLES primary key (role_id)
);

comment on table base_roles is
'��ɫ��';

comment on column base_roles.role_id is
'��ɫID';

comment on column base_roles.role_name is
'��ɫ���';

comment on column base_roles.role_desc is
'��ɫ����';

/*==============================================================*/
/* Table: base_user_role                                      */
/*==============================================================*/
create table base_user_role  (
   user_role_id       VARCHAR2(32)                    not null,
   user_id            VARCHAR2(32)                    not null,
   role_id            VARCHAR2(32)                    not null,
   constraint PK_BASE_USER_ROLE primary key (user_role_id)
);

comment on table base_user_role is
'�û���ɫ��';

comment on column base_user_role.user_role_id is
'�û���ɫID';

comment on column base_user_role.user_id is
'�û�ID';

comment on column base_user_role.role_id is
'��ɫID';



/*==============================================================*/
/* Table: base_users                                          */
/*==============================================================*/
create table base_users  (
   user_id            VARCHAR2(32)                    not null,
   account            VARCHAR2(64)                    not null,
   password           VARCHAR2(128)                   not null,
   real_name          VARCHAR2(64),
   sex                NUMBER(1),
   email              VARCHAR2(64),
   mobile             VARCHAR2(32),
   office_phone       VARCHAR2(32),
   error_count        NUMBER(2)                      default 0,
   last_login_time    DATE,
   last_login_ip      VARCHAR2(32),
   remark             VARCHAR2(128),
   constraint PK_BASE_USERS primary key (user_id)
);

comment on table base_users is
'�û���';

comment on column base_users.user_id is
'�û�ID';

comment on column base_users.account is
'�˺�';

comment on column base_users.password is
'����
DigestUtils.md5Hex(DigestUtils.md5Hex(password){account})';

comment on column base_users.real_name is
'�û���ʵ����';

comment on column base_users.sex is
'�Ա� 0:�� 1:Ů';

comment on column base_users.email is
'�����ʼ���ַ';

comment on column base_users.mobile is
'�ֻ�';

comment on column base_users.office_phone is
'�칫�绰';

comment on column base_users.error_count is
'����������';

comment on column base_users.last_login_time is
'�ϴε�¼ʱ��';

comment on column base_users.last_login_ip is
'�ϴε�¼IP��ַ';

comment on column base_users.remark is
'��ע';

alter table base_role_module
   add constraint FK_BASE_ROL_REFERENCE_BASE_ROL foreign key (role_id)
      references base_roles (role_id);

alter table base_role_module
   add constraint FK_BASE_ROL_REFERENCE_BASE_MOD foreign key (module_id)
      references base_modules (module_id);

alter table base_user_role
   add constraint FK_BASE_USE_REFERENCE_BASE_USE foreign key (user_id)
      references base_users (user_id);

alter table base_user_role
   add constraint FK_BASE_USE_REFERENCE_BASE_ROL foreign key (role_id)
      references base_roles (role_id);



