
-- 用户中心(usercenter)


-- 组织（c1_org）

--地址
drop index IF EXISTS idx_c1_org_address;
create index IF NOT EXISTS idx_c1_org_address ON c1_org ("address" varchar_pattern_ops);
--地区代码
drop index IF EXISTS idx_c1_org_area_code;
create index IF NOT EXISTS idx_c1_org_area_code ON c1_org ("area_code" varchar_pattern_ops);
--批次编号
drop index IF EXISTS idx_c1_org_batch_no;
create index IF NOT EXISTS idx_c1_org_batch_no ON c1_org ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_org_begin_date;
create index IF NOT EXISTS idx_c1_org_begin_date ON c1_org ("begin_date");
--城市代码
drop index IF EXISTS idx_c1_org_city_code;
create index IF NOT EXISTS idx_c1_org_city_code ON c1_org ("city_code" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_org_created_by_code;
create index IF NOT EXISTS idx_c1_org_created_by_code ON c1_org ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_org_created_date;
create index IF NOT EXISTS idx_c1_org_created_date ON c1_org ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_org_data_state_code;
create index IF NOT EXISTS idx_c1_org_data_state_code ON c1_org ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_org_department_code;
create index IF NOT EXISTS idx_c1_org_department_code ON c1_org ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_org_end_date;
create index IF NOT EXISTS idx_c1_org_end_date ON c1_org ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_org_flag_code;
create index IF NOT EXISTS idx_c1_org_flag_code ON c1_org ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_org_last_modified_by_code;
create index IF NOT EXISTS idx_c1_org_last_modified_by_code ON c1_org ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_org_last_modified_date;
create index IF NOT EXISTS idx_c1_org_last_modified_date ON c1_org ("last_modified_date");
--名称
drop index IF EXISTS idx_c1_org_name;
create index IF NOT EXISTS idx_c1_org_name ON c1_org ("name" varchar_pattern_ops);
--排序
drop index IF EXISTS idx_c1_org_order_by_;
create index IF NOT EXISTS idx_c1_org_order_by_ ON c1_org ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_org_org_code;
create index IF NOT EXISTS idx_c1_org_org_code ON c1_org ("org_code" varchar_pattern_ops);
--组织标识
drop index IF EXISTS idx_c1_org_org_id;
create index IF NOT EXISTS idx_c1_org_org_id ON c1_org ("org_id" varchar_pattern_ops);
--父级代码
drop index IF EXISTS idx_c1_org_parent_code;
create index IF NOT EXISTS idx_c1_org_parent_code ON c1_org ("parent_code" varchar_pattern_ops);
--父级树代码
drop index IF EXISTS idx_c1_org_parent_tree_code;
create index IF NOT EXISTS idx_c1_org_parent_tree_code ON c1_org ("parent_tree_code" varchar_pattern_ops);
--父级树名称
drop index IF EXISTS idx_c1_org_parent_tree_name;
create index IF NOT EXISTS idx_c1_org_parent_tree_name ON c1_org ("parent_tree_name" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_org_personal_code;
create index IF NOT EXISTS idx_c1_org_personal_code ON c1_org ("personal_code" varchar_pattern_ops);
--省份代码
drop index IF EXISTS idx_c1_org_province_code;
create index IF NOT EXISTS idx_c1_org_province_code ON c1_org ("province_code" varchar_pattern_ops);
--区域代码
drop index IF EXISTS idx_c1_org_region_code;
create index IF NOT EXISTS idx_c1_org_region_code ON c1_org ("region_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_org_site_code;
create index IF NOT EXISTS idx_c1_org_site_code ON c1_org ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_org_state_code;
create index IF NOT EXISTS idx_c1_org_state_code ON c1_org ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_org_system_info_code;
create index IF NOT EXISTS idx_c1_org_system_info_code ON c1_org ("system_info_code" varchar_pattern_ops);

-- 部门（c1_department）

--地址
drop index IF EXISTS idx_c1_department_address;
create index IF NOT EXISTS idx_c1_department_address ON c1_department ("address" varchar_pattern_ops);
--地区代码
drop index IF EXISTS idx_c1_department_area_code;
create index IF NOT EXISTS idx_c1_department_area_code ON c1_department ("area_code" varchar_pattern_ops);
--批次编号
drop index IF EXISTS idx_c1_department_batch_no;
create index IF NOT EXISTS idx_c1_department_batch_no ON c1_department ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_department_begin_date;
create index IF NOT EXISTS idx_c1_department_begin_date ON c1_department ("begin_date");
--城市代码
drop index IF EXISTS idx_c1_department_city_code;
create index IF NOT EXISTS idx_c1_department_city_code ON c1_department ("city_code" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_department_created_by_code;
create index IF NOT EXISTS idx_c1_department_created_by_code ON c1_department ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_department_created_date;
create index IF NOT EXISTS idx_c1_department_created_date ON c1_department ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_department_data_state_code;
create index IF NOT EXISTS idx_c1_department_data_state_code ON c1_department ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_department_department_code;
create index IF NOT EXISTS idx_c1_department_department_code ON c1_department ("department_code" varchar_pattern_ops);
--部门标识
drop index IF EXISTS idx_c1_department_department_id;
create index IF NOT EXISTS idx_c1_department_department_id ON c1_department ("department_id" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_department_end_date;
create index IF NOT EXISTS idx_c1_department_end_date ON c1_department ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_department_flag_code;
create index IF NOT EXISTS idx_c1_department_flag_code ON c1_department ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_department_last_modified_by_code;
create index IF NOT EXISTS idx_c1_department_last_modified_by_code ON c1_department ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_department_last_modified_date;
create index IF NOT EXISTS idx_c1_department_last_modified_date ON c1_department ("last_modified_date");
--名称
drop index IF EXISTS idx_c1_department_name;
create index IF NOT EXISTS idx_c1_department_name ON c1_department ("name" varchar_pattern_ops);
--排序
drop index IF EXISTS idx_c1_department_order_by_;
create index IF NOT EXISTS idx_c1_department_order_by_ ON c1_department ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_department_org_code;
create index IF NOT EXISTS idx_c1_department_org_code ON c1_department ("org_code" varchar_pattern_ops);
--父级代码
drop index IF EXISTS idx_c1_department_parent_code;
create index IF NOT EXISTS idx_c1_department_parent_code ON c1_department ("parent_code" varchar_pattern_ops);
--父级树代码
drop index IF EXISTS idx_c1_department_parent_tree_code;
create index IF NOT EXISTS idx_c1_department_parent_tree_code ON c1_department ("parent_tree_code" varchar_pattern_ops);
--父级树名称
drop index IF EXISTS idx_c1_department_parent_tree_name;
create index IF NOT EXISTS idx_c1_department_parent_tree_name ON c1_department ("parent_tree_name" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_department_personal_code;
create index IF NOT EXISTS idx_c1_department_personal_code ON c1_department ("personal_code" varchar_pattern_ops);
--省份代码
drop index IF EXISTS idx_c1_department_province_code;
create index IF NOT EXISTS idx_c1_department_province_code ON c1_department ("province_code" varchar_pattern_ops);
--区域代码
drop index IF EXISTS idx_c1_department_region_code;
create index IF NOT EXISTS idx_c1_department_region_code ON c1_department ("region_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_department_site_code;
create index IF NOT EXISTS idx_c1_department_site_code ON c1_department ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_department_state_code;
create index IF NOT EXISTS idx_c1_department_state_code ON c1_department ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_department_system_info_code;
create index IF NOT EXISTS idx_c1_department_system_info_code ON c1_department ("system_info_code" varchar_pattern_ops);

-- 用户与部门（c1_user_department）

--批次编号
drop index IF EXISTS idx_c1_user_department_batch_no;
create index IF NOT EXISTS idx_c1_user_department_batch_no ON c1_user_department ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_user_department_begin_date;
create index IF NOT EXISTS idx_c1_user_department_begin_date ON c1_user_department ("begin_date");
--创建人代码
drop index IF EXISTS idx_c1_user_department_created_by_code;
create index IF NOT EXISTS idx_c1_user_department_created_by_code ON c1_user_department ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_user_department_created_date;
create index IF NOT EXISTS idx_c1_user_department_created_date ON c1_user_department ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_user_department_data_state_code;
create index IF NOT EXISTS idx_c1_user_department_data_state_code ON c1_user_department ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_user_department_department_code;
create index IF NOT EXISTS idx_c1_user_department_department_code ON c1_user_department ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_user_department_end_date;
create index IF NOT EXISTS idx_c1_user_department_end_date ON c1_user_department ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_user_department_flag_code;
create index IF NOT EXISTS idx_c1_user_department_flag_code ON c1_user_department ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_user_department_last_modified_by_code;
create index IF NOT EXISTS idx_c1_user_department_last_modified_by_code ON c1_user_department ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_user_department_last_modified_date;
create index IF NOT EXISTS idx_c1_user_department_last_modified_date ON c1_user_department ("last_modified_date");
--排序
drop index IF EXISTS idx_c1_user_department_order_by_;
create index IF NOT EXISTS idx_c1_user_department_order_by_ ON c1_user_department ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_user_department_org_code;
create index IF NOT EXISTS idx_c1_user_department_org_code ON c1_user_department ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_user_department_personal_code;
create index IF NOT EXISTS idx_c1_user_department_personal_code ON c1_user_department ("personal_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_user_department_site_code;
create index IF NOT EXISTS idx_c1_user_department_site_code ON c1_user_department ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_user_department_state_code;
create index IF NOT EXISTS idx_c1_user_department_state_code ON c1_user_department ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_user_department_system_info_code;
create index IF NOT EXISTS idx_c1_user_department_system_info_code ON c1_user_department ("system_info_code" varchar_pattern_ops);
--用户代码
drop index IF EXISTS idx_c1_user_department_user_code;
create index IF NOT EXISTS idx_c1_user_department_user_code ON c1_user_department ("user_code" varchar_pattern_ops);
--用户与部门标识
drop index IF EXISTS idx_c1_user_department_user_department_id;
create index IF NOT EXISTS idx_c1_user_department_user_department_id ON c1_user_department ("user_department_id" varchar_pattern_ops);

-- 用户与组织（c1_user_org）

--批次编号
drop index IF EXISTS idx_c1_user_org_batch_no;
create index IF NOT EXISTS idx_c1_user_org_batch_no ON c1_user_org ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_user_org_begin_date;
create index IF NOT EXISTS idx_c1_user_org_begin_date ON c1_user_org ("begin_date");
--创建人代码
drop index IF EXISTS idx_c1_user_org_created_by_code;
create index IF NOT EXISTS idx_c1_user_org_created_by_code ON c1_user_org ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_user_org_created_date;
create index IF NOT EXISTS idx_c1_user_org_created_date ON c1_user_org ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_user_org_data_state_code;
create index IF NOT EXISTS idx_c1_user_org_data_state_code ON c1_user_org ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_user_org_department_code;
create index IF NOT EXISTS idx_c1_user_org_department_code ON c1_user_org ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_user_org_end_date;
create index IF NOT EXISTS idx_c1_user_org_end_date ON c1_user_org ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_user_org_flag_code;
create index IF NOT EXISTS idx_c1_user_org_flag_code ON c1_user_org ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_user_org_last_modified_by_code;
create index IF NOT EXISTS idx_c1_user_org_last_modified_by_code ON c1_user_org ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_user_org_last_modified_date;
create index IF NOT EXISTS idx_c1_user_org_last_modified_date ON c1_user_org ("last_modified_date");
--排序
drop index IF EXISTS idx_c1_user_org_order_by_;
create index IF NOT EXISTS idx_c1_user_org_order_by_ ON c1_user_org ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_user_org_org_code;
create index IF NOT EXISTS idx_c1_user_org_org_code ON c1_user_org ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_user_org_personal_code;
create index IF NOT EXISTS idx_c1_user_org_personal_code ON c1_user_org ("personal_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_user_org_site_code;
create index IF NOT EXISTS idx_c1_user_org_site_code ON c1_user_org ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_user_org_state_code;
create index IF NOT EXISTS idx_c1_user_org_state_code ON c1_user_org ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_user_org_system_info_code;
create index IF NOT EXISTS idx_c1_user_org_system_info_code ON c1_user_org ("system_info_code" varchar_pattern_ops);
--用户代码
drop index IF EXISTS idx_c1_user_org_user_code;
create index IF NOT EXISTS idx_c1_user_org_user_code ON c1_user_org ("user_code" varchar_pattern_ops);
--用户与组织标识
drop index IF EXISTS idx_c1_user_org_user_org_id;
create index IF NOT EXISTS idx_c1_user_org_user_org_id ON c1_user_org ("user_org_id" varchar_pattern_ops);

-- 用户与地址（c1_user_address）

--地址
drop index IF EXISTS idx_c1_user_address_address;
create index IF NOT EXISTS idx_c1_user_address_address ON c1_user_address ("address" varchar_pattern_ops);
--地区代码
drop index IF EXISTS idx_c1_user_address_area_code;
create index IF NOT EXISTS idx_c1_user_address_area_code ON c1_user_address ("area_code" varchar_pattern_ops);
--批次编号
drop index IF EXISTS idx_c1_user_address_batch_no;
create index IF NOT EXISTS idx_c1_user_address_batch_no ON c1_user_address ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_user_address_begin_date;
create index IF NOT EXISTS idx_c1_user_address_begin_date ON c1_user_address ("begin_date");
--城市代码
drop index IF EXISTS idx_c1_user_address_city_code;
create index IF NOT EXISTS idx_c1_user_address_city_code ON c1_user_address ("city_code" varchar_pattern_ops);
--国家代码(数据字典)
drop index IF EXISTS idx_c1_user_address_country_code;
create index IF NOT EXISTS idx_c1_user_address_country_code ON c1_user_address ("country_code" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_user_address_created_by_code;
create index IF NOT EXISTS idx_c1_user_address_created_by_code ON c1_user_address ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_user_address_created_date;
create index IF NOT EXISTS idx_c1_user_address_created_date ON c1_user_address ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_user_address_data_state_code;
create index IF NOT EXISTS idx_c1_user_address_data_state_code ON c1_user_address ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_user_address_department_code;
create index IF NOT EXISTS idx_c1_user_address_department_code ON c1_user_address ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_user_address_end_date;
create index IF NOT EXISTS idx_c1_user_address_end_date ON c1_user_address ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_user_address_flag_code;
create index IF NOT EXISTS idx_c1_user_address_flag_code ON c1_user_address ("flag_code" varchar_pattern_ops);
--是否默认(数据字典)
drop index IF EXISTS idx_c1_user_address_is_default;
create index IF NOT EXISTS idx_c1_user_address_is_default ON c1_user_address ("is_default" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_user_address_last_modified_by_code;
create index IF NOT EXISTS idx_c1_user_address_last_modified_by_code ON c1_user_address ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_user_address_last_modified_date;
create index IF NOT EXISTS idx_c1_user_address_last_modified_date ON c1_user_address ("last_modified_date");
--排序
drop index IF EXISTS idx_c1_user_address_order_by_;
create index IF NOT EXISTS idx_c1_user_address_order_by_ ON c1_user_address ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_user_address_org_code;
create index IF NOT EXISTS idx_c1_user_address_org_code ON c1_user_address ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_user_address_personal_code;
create index IF NOT EXISTS idx_c1_user_address_personal_code ON c1_user_address ("personal_code" varchar_pattern_ops);
--省份代码
drop index IF EXISTS idx_c1_user_address_province_code;
create index IF NOT EXISTS idx_c1_user_address_province_code ON c1_user_address ("province_code" varchar_pattern_ops);
--区域代码
drop index IF EXISTS idx_c1_user_address_region_code;
create index IF NOT EXISTS idx_c1_user_address_region_code ON c1_user_address ("region_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_user_address_site_code;
create index IF NOT EXISTS idx_c1_user_address_site_code ON c1_user_address ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_user_address_state_code;
create index IF NOT EXISTS idx_c1_user_address_state_code ON c1_user_address ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_user_address_system_info_code;
create index IF NOT EXISTS idx_c1_user_address_system_info_code ON c1_user_address ("system_info_code" varchar_pattern_ops);
--类别代码(数据字典)
drop index IF EXISTS idx_c1_user_address_type_code;
create index IF NOT EXISTS idx_c1_user_address_type_code ON c1_user_address ("type_code" varchar_pattern_ops);
--用户与地址标识
drop index IF EXISTS idx_c1_user_address_user_address_id;
create index IF NOT EXISTS idx_c1_user_address_user_address_id ON c1_user_address ("user_address_id" varchar_pattern_ops);
--用户代码
drop index IF EXISTS idx_c1_user_address_user_code;
create index IF NOT EXISTS idx_c1_user_address_user_code ON c1_user_address ("user_code" varchar_pattern_ops);

-- 用户（c1_user）

--地址
drop index IF EXISTS idx_c1_user_address;
create index IF NOT EXISTS idx_c1_user_address ON c1_user ("address" varchar_pattern_ops);
--年龄
drop index IF EXISTS idx_c1_user_age;
create index IF NOT EXISTS idx_c1_user_age ON c1_user ("age");
--别名
drop index IF EXISTS idx_c1_user_alias_name;
create index IF NOT EXISTS idx_c1_user_alias_name ON c1_user ("alias_name" varchar_pattern_ops);
--地区代码
drop index IF EXISTS idx_c1_user_area_code;
create index IF NOT EXISTS idx_c1_user_area_code ON c1_user ("area_code" varchar_pattern_ops);
--批次编号
drop index IF EXISTS idx_c1_user_batch_no;
create index IF NOT EXISTS idx_c1_user_batch_no ON c1_user ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_user_begin_date;
create index IF NOT EXISTS idx_c1_user_begin_date ON c1_user ("begin_date");
--出生日期
drop index IF EXISTS idx_c1_user_birthday;
create index IF NOT EXISTS idx_c1_user_birthday ON c1_user ("birthday");
--昵称
drop index IF EXISTS idx_c1_user_call_name;
create index IF NOT EXISTS idx_c1_user_call_name ON c1_user ("call_name" varchar_pattern_ops);
--城市代码
drop index IF EXISTS idx_c1_user_city_code;
create index IF NOT EXISTS idx_c1_user_city_code ON c1_user ("city_code" varchar_pattern_ops);
--工作单位
drop index IF EXISTS idx_c1_user_company_name;
create index IF NOT EXISTS idx_c1_user_company_name ON c1_user ("company_name" varchar_pattern_ops);
--联系人
drop index IF EXISTS idx_c1_user_contact;
create index IF NOT EXISTS idx_c1_user_contact ON c1_user ("contact" varchar_pattern_ops);
--国家代码(数据字典)
drop index IF EXISTS idx_c1_user_country_code;
create index IF NOT EXISTS idx_c1_user_country_code ON c1_user ("country_code" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_user_created_by_code;
create index IF NOT EXISTS idx_c1_user_created_by_code ON c1_user ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_user_created_date;
create index IF NOT EXISTS idx_c1_user_created_date ON c1_user ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_user_data_state_code;
create index IF NOT EXISTS idx_c1_user_data_state_code ON c1_user ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_user_department_code;
create index IF NOT EXISTS idx_c1_user_department_code ON c1_user ("department_code" varchar_pattern_ops);
--学历/文凭代码(数据字典)
drop index IF EXISTS idx_c1_user_diploma_code;
create index IF NOT EXISTS idx_c1_user_diploma_code ON c1_user ("diploma_code" varchar_pattern_ops);
--邮箱
drop index IF EXISTS idx_c1_user_email;
create index IF NOT EXISTS idx_c1_user_email ON c1_user ("email" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_user_end_date;
create index IF NOT EXISTS idx_c1_user_end_date ON c1_user ("end_date");
--名字
drop index IF EXISTS idx_c1_user_first_name;
create index IF NOT EXISTS idx_c1_user_first_name ON c1_user ("first_name" varchar_pattern_ops);
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_user_flag_code;
create index IF NOT EXISTS idx_c1_user_flag_code ON c1_user ("flag_code" varchar_pattern_ops);
--民族代码(数据字典)
drop index IF EXISTS idx_c1_user_folk_code;
create index IF NOT EXISTS idx_c1_user_folk_code ON c1_user ("folk_code" varchar_pattern_ops);
--证件类型代码
drop index IF EXISTS idx_c1_user_id_card_code;
create index IF NOT EXISTS idx_c1_user_id_card_code ON c1_user ("id_card_code" varchar_pattern_ops);
--证件号
drop index IF EXISTS idx_c1_user_id_card_no;
create index IF NOT EXISTS idx_c1_user_id_card_no ON c1_user ("id_card_no" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_user_last_modified_by_code;
create index IF NOT EXISTS idx_c1_user_last_modified_by_code ON c1_user ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_user_last_modified_date;
create index IF NOT EXISTS idx_c1_user_last_modified_date ON c1_user ("last_modified_date");
--姓氏
drop index IF EXISTS idx_c1_user_last_name;
create index IF NOT EXISTS idx_c1_user_last_name ON c1_user ("last_name" varchar_pattern_ops);
--现居住地
drop index IF EXISTS idx_c1_user_locus;
create index IF NOT EXISTS idx_c1_user_locus ON c1_user ("locus" varchar_pattern_ops);
--婚姻状态代码(数据字典)
drop index IF EXISTS idx_c1_user_marry_state_code;
create index IF NOT EXISTS idx_c1_user_marry_state_code ON c1_user ("marry_state_code" varchar_pattern_ops);
--手机
drop index IF EXISTS idx_c1_user_mobile_phone;
create index IF NOT EXISTS idx_c1_user_mobile_phone ON c1_user ("mobile_phone" varchar_pattern_ops);
--名称
drop index IF EXISTS idx_c1_user_name;
create index IF NOT EXISTS idx_c1_user_name ON c1_user ("name" varchar_pattern_ops);
--拼音
drop index IF EXISTS idx_c1_user_name_pinyin;
create index IF NOT EXISTS idx_c1_user_name_pinyin ON c1_user ("name_pinyin" varchar_pattern_ops);
--排序
drop index IF EXISTS idx_c1_user_order_by_;
create index IF NOT EXISTS idx_c1_user_order_by_ ON c1_user ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_user_org_code;
create index IF NOT EXISTS idx_c1_user_org_code ON c1_user ("org_code" varchar_pattern_ops);
--密码
drop index IF EXISTS idx_c1_user_password_;
create index IF NOT EXISTS idx_c1_user_password_ ON c1_user ("password_" varchar_pattern_ops);
--密码盐
drop index IF EXISTS idx_c1_user_password_salt;
create index IF NOT EXISTS idx_c1_user_password_salt ON c1_user ("password_salt" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_user_personal_code;
create index IF NOT EXISTS idx_c1_user_personal_code ON c1_user ("personal_code" varchar_pattern_ops);
--肖像路径
drop index IF EXISTS idx_c1_user_portrait_url;
create index IF NOT EXISTS idx_c1_user_portrait_url ON c1_user ("portrait_url" varchar_pattern_ops);
--隐私密码
drop index IF EXISTS idx_c1_user_private_password;
create index IF NOT EXISTS idx_c1_user_private_password ON c1_user ("private_password" varchar_pattern_ops);
--隐私密码盐
drop index IF EXISTS idx_c1_user_private_password_salt;
create index IF NOT EXISTS idx_c1_user_private_password_salt ON c1_user ("private_password_salt" varchar_pattern_ops);
--职业代码
drop index IF EXISTS idx_c1_user_profession_code;
create index IF NOT EXISTS idx_c1_user_profession_code ON c1_user ("profession_code" varchar_pattern_ops);
--省份代码
drop index IF EXISTS idx_c1_user_province_code;
create index IF NOT EXISTS idx_c1_user_province_code ON c1_user ("province_code" varchar_pattern_ops);
--QQ号码
drop index IF EXISTS idx_c1_user_qq;
create index IF NOT EXISTS idx_c1_user_qq ON c1_user ("qq" varchar_pattern_ops);
--区域代码
drop index IF EXISTS idx_c1_user_region_code;
create index IF NOT EXISTS idx_c1_user_region_code ON c1_user ("region_code" varchar_pattern_ops);
--性别代码(数据字典)
drop index IF EXISTS idx_c1_user_sex_code;
create index IF NOT EXISTS idx_c1_user_sex_code ON c1_user ("sex_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_user_site_code;
create index IF NOT EXISTS idx_c1_user_site_code ON c1_user ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_user_state_code;
create index IF NOT EXISTS idx_c1_user_state_code ON c1_user ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_user_system_info_code;
create index IF NOT EXISTS idx_c1_user_system_info_code ON c1_user ("system_info_code" varchar_pattern_ops);
--联系电话
drop index IF EXISTS idx_c1_user_telephone;
create index IF NOT EXISTS idx_c1_user_telephone ON c1_user ("telephone" varchar_pattern_ops);
--用户代码
drop index IF EXISTS idx_c1_user_user_code;
create index IF NOT EXISTS idx_c1_user_user_code ON c1_user ("user_code" varchar_pattern_ops);
--用户标识
drop index IF EXISTS idx_c1_user_user_id;
create index IF NOT EXISTS idx_c1_user_user_id ON c1_user ("user_id" varchar_pattern_ops);

-- 开放用户（c1_open_user）

--批次编号
drop index IF EXISTS idx_c1_open_user_batch_no;
create index IF NOT EXISTS idx_c1_open_user_batch_no ON c1_open_user ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_open_user_begin_date;
create index IF NOT EXISTS idx_c1_open_user_begin_date ON c1_open_user ("begin_date");
--客户端标识
drop index IF EXISTS idx_c1_open_user_client_id;
create index IF NOT EXISTS idx_c1_open_user_client_id ON c1_open_user ("client_id" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_open_user_created_by_code;
create index IF NOT EXISTS idx_c1_open_user_created_by_code ON c1_open_user ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_open_user_created_date;
create index IF NOT EXISTS idx_c1_open_user_created_date ON c1_open_user ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_open_user_data_state_code;
create index IF NOT EXISTS idx_c1_open_user_data_state_code ON c1_open_user ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_open_user_department_code;
create index IF NOT EXISTS idx_c1_open_user_department_code ON c1_open_user ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_open_user_end_date;
create index IF NOT EXISTS idx_c1_open_user_end_date ON c1_open_user ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_open_user_flag_code;
create index IF NOT EXISTS idx_c1_open_user_flag_code ON c1_open_user ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_open_user_last_modified_by_code;
create index IF NOT EXISTS idx_c1_open_user_last_modified_by_code ON c1_open_user ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_open_user_last_modified_date;
create index IF NOT EXISTS idx_c1_open_user_last_modified_date ON c1_open_user ("last_modified_date");
--开放用户标识
drop index IF EXISTS idx_c1_open_user_open_user_id;
create index IF NOT EXISTS idx_c1_open_user_open_user_id ON c1_open_user ("open_user_id" varchar_pattern_ops);
--排序
drop index IF EXISTS idx_c1_open_user_order_by_;
create index IF NOT EXISTS idx_c1_open_user_order_by_ ON c1_open_user ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_open_user_org_code;
create index IF NOT EXISTS idx_c1_open_user_org_code ON c1_open_user ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_open_user_personal_code;
create index IF NOT EXISTS idx_c1_open_user_personal_code ON c1_open_user ("personal_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_open_user_site_code;
create index IF NOT EXISTS idx_c1_open_user_site_code ON c1_open_user ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_open_user_state_code;
create index IF NOT EXISTS idx_c1_open_user_state_code ON c1_open_user ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_open_user_system_info_code;
create index IF NOT EXISTS idx_c1_open_user_system_info_code ON c1_open_user ("system_info_code" varchar_pattern_ops);
--用户代码
drop index IF EXISTS idx_c1_open_user_user_code;
create index IF NOT EXISTS idx_c1_open_user_user_code ON c1_open_user ("user_code" varchar_pattern_ops);

-- 省份（c1_province）

--批次编号
drop index IF EXISTS idx_c1_province_batch_no;
create index IF NOT EXISTS idx_c1_province_batch_no ON c1_province ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_province_begin_date;
create index IF NOT EXISTS idx_c1_province_begin_date ON c1_province ("begin_date");
--国家代码(数据字典)
drop index IF EXISTS idx_c1_province_country_code;
create index IF NOT EXISTS idx_c1_province_country_code ON c1_province ("country_code" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_province_created_by_code;
create index IF NOT EXISTS idx_c1_province_created_by_code ON c1_province ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_province_created_date;
create index IF NOT EXISTS idx_c1_province_created_date ON c1_province ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_province_data_state_code;
create index IF NOT EXISTS idx_c1_province_data_state_code ON c1_province ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_province_department_code;
create index IF NOT EXISTS idx_c1_province_department_code ON c1_province ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_province_end_date;
create index IF NOT EXISTS idx_c1_province_end_date ON c1_province ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_province_flag_code;
create index IF NOT EXISTS idx_c1_province_flag_code ON c1_province ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_province_last_modified_by_code;
create index IF NOT EXISTS idx_c1_province_last_modified_by_code ON c1_province ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_province_last_modified_date;
create index IF NOT EXISTS idx_c1_province_last_modified_date ON c1_province ("last_modified_date");
--名称
drop index IF EXISTS idx_c1_province_name;
create index IF NOT EXISTS idx_c1_province_name ON c1_province ("name" varchar_pattern_ops);
--排序
drop index IF EXISTS idx_c1_province_order_by_;
create index IF NOT EXISTS idx_c1_province_order_by_ ON c1_province ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_province_org_code;
create index IF NOT EXISTS idx_c1_province_org_code ON c1_province ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_province_personal_code;
create index IF NOT EXISTS idx_c1_province_personal_code ON c1_province ("personal_code" varchar_pattern_ops);
--省份代码
drop index IF EXISTS idx_c1_province_province_code;
create index IF NOT EXISTS idx_c1_province_province_code ON c1_province ("province_code" varchar_pattern_ops);
--省份标识
drop index IF EXISTS idx_c1_province_province_id;
create index IF NOT EXISTS idx_c1_province_province_id ON c1_province ("province_id" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_province_site_code;
create index IF NOT EXISTS idx_c1_province_site_code ON c1_province ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_province_state_code;
create index IF NOT EXISTS idx_c1_province_state_code ON c1_province ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_province_system_info_code;
create index IF NOT EXISTS idx_c1_province_system_info_code ON c1_province ("system_info_code" varchar_pattern_ops);

-- 城市（c1_city）

--批次编号
drop index IF EXISTS idx_c1_city_batch_no;
create index IF NOT EXISTS idx_c1_city_batch_no ON c1_city ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_city_begin_date;
create index IF NOT EXISTS idx_c1_city_begin_date ON c1_city ("begin_date");
--城市代码
drop index IF EXISTS idx_c1_city_city_code;
create index IF NOT EXISTS idx_c1_city_city_code ON c1_city ("city_code" varchar_pattern_ops);
--城市标识
drop index IF EXISTS idx_c1_city_city_id;
create index IF NOT EXISTS idx_c1_city_city_id ON c1_city ("city_id" varchar_pattern_ops);
--国家代码(数据字典)
drop index IF EXISTS idx_c1_city_country_code;
create index IF NOT EXISTS idx_c1_city_country_code ON c1_city ("country_code" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_city_created_by_code;
create index IF NOT EXISTS idx_c1_city_created_by_code ON c1_city ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_city_created_date;
create index IF NOT EXISTS idx_c1_city_created_date ON c1_city ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_city_data_state_code;
create index IF NOT EXISTS idx_c1_city_data_state_code ON c1_city ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_city_department_code;
create index IF NOT EXISTS idx_c1_city_department_code ON c1_city ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_city_end_date;
create index IF NOT EXISTS idx_c1_city_end_date ON c1_city ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_city_flag_code;
create index IF NOT EXISTS idx_c1_city_flag_code ON c1_city ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_city_last_modified_by_code;
create index IF NOT EXISTS idx_c1_city_last_modified_by_code ON c1_city ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_city_last_modified_date;
create index IF NOT EXISTS idx_c1_city_last_modified_date ON c1_city ("last_modified_date");
--名称
drop index IF EXISTS idx_c1_city_name;
create index IF NOT EXISTS idx_c1_city_name ON c1_city ("name" varchar_pattern_ops);
--排序
drop index IF EXISTS idx_c1_city_order_by_;
create index IF NOT EXISTS idx_c1_city_order_by_ ON c1_city ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_city_org_code;
create index IF NOT EXISTS idx_c1_city_org_code ON c1_city ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_city_personal_code;
create index IF NOT EXISTS idx_c1_city_personal_code ON c1_city ("personal_code" varchar_pattern_ops);
--省份代码
drop index IF EXISTS idx_c1_city_province_code;
create index IF NOT EXISTS idx_c1_city_province_code ON c1_city ("province_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_city_site_code;
create index IF NOT EXISTS idx_c1_city_site_code ON c1_city ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_city_state_code;
create index IF NOT EXISTS idx_c1_city_state_code ON c1_city ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_city_system_info_code;
create index IF NOT EXISTS idx_c1_city_system_info_code ON c1_city ("system_info_code" varchar_pattern_ops);

-- 地区（c1_area）

--地区代码
drop index IF EXISTS idx_c1_area_area_code;
create index IF NOT EXISTS idx_c1_area_area_code ON c1_area ("area_code" varchar_pattern_ops);
--地区标识
drop index IF EXISTS idx_c1_area_area_id;
create index IF NOT EXISTS idx_c1_area_area_id ON c1_area ("area_id" varchar_pattern_ops);
--批次编号
drop index IF EXISTS idx_c1_area_batch_no;
create index IF NOT EXISTS idx_c1_area_batch_no ON c1_area ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_area_begin_date;
create index IF NOT EXISTS idx_c1_area_begin_date ON c1_area ("begin_date");
--城市代码
drop index IF EXISTS idx_c1_area_city_code;
create index IF NOT EXISTS idx_c1_area_city_code ON c1_area ("city_code" varchar_pattern_ops);
--国家代码(数据字典)
drop index IF EXISTS idx_c1_area_country_code;
create index IF NOT EXISTS idx_c1_area_country_code ON c1_area ("country_code" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_area_created_by_code;
create index IF NOT EXISTS idx_c1_area_created_by_code ON c1_area ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_area_created_date;
create index IF NOT EXISTS idx_c1_area_created_date ON c1_area ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_area_data_state_code;
create index IF NOT EXISTS idx_c1_area_data_state_code ON c1_area ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_area_department_code;
create index IF NOT EXISTS idx_c1_area_department_code ON c1_area ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_area_end_date;
create index IF NOT EXISTS idx_c1_area_end_date ON c1_area ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_area_flag_code;
create index IF NOT EXISTS idx_c1_area_flag_code ON c1_area ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_area_last_modified_by_code;
create index IF NOT EXISTS idx_c1_area_last_modified_by_code ON c1_area ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_area_last_modified_date;
create index IF NOT EXISTS idx_c1_area_last_modified_date ON c1_area ("last_modified_date");
--名称
drop index IF EXISTS idx_c1_area_name;
create index IF NOT EXISTS idx_c1_area_name ON c1_area ("name" varchar_pattern_ops);
--排序
drop index IF EXISTS idx_c1_area_order_by_;
create index IF NOT EXISTS idx_c1_area_order_by_ ON c1_area ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_area_org_code;
create index IF NOT EXISTS idx_c1_area_org_code ON c1_area ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_area_personal_code;
create index IF NOT EXISTS idx_c1_area_personal_code ON c1_area ("personal_code" varchar_pattern_ops);
--省份代码
drop index IF EXISTS idx_c1_area_province_code;
create index IF NOT EXISTS idx_c1_area_province_code ON c1_area ("province_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_area_site_code;
create index IF NOT EXISTS idx_c1_area_site_code ON c1_area ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_area_state_code;
create index IF NOT EXISTS idx_c1_area_state_code ON c1_area ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_area_system_info_code;
create index IF NOT EXISTS idx_c1_area_system_info_code ON c1_area ("system_info_code" varchar_pattern_ops);

-- 区域（c1_region）

--地区代码
drop index IF EXISTS idx_c1_region_area_code;
create index IF NOT EXISTS idx_c1_region_area_code ON c1_region ("area_code" varchar_pattern_ops);
--批次编号
drop index IF EXISTS idx_c1_region_batch_no;
create index IF NOT EXISTS idx_c1_region_batch_no ON c1_region ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_region_begin_date;
create index IF NOT EXISTS idx_c1_region_begin_date ON c1_region ("begin_date");
--城市代码
drop index IF EXISTS idx_c1_region_city_code;
create index IF NOT EXISTS idx_c1_region_city_code ON c1_region ("city_code" varchar_pattern_ops);
--国家代码(数据字典)
drop index IF EXISTS idx_c1_region_country_code;
create index IF NOT EXISTS idx_c1_region_country_code ON c1_region ("country_code" varchar_pattern_ops);
--创建人代码
drop index IF EXISTS idx_c1_region_created_by_code;
create index IF NOT EXISTS idx_c1_region_created_by_code ON c1_region ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_region_created_date;
create index IF NOT EXISTS idx_c1_region_created_date ON c1_region ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_region_data_state_code;
create index IF NOT EXISTS idx_c1_region_data_state_code ON c1_region ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_region_department_code;
create index IF NOT EXISTS idx_c1_region_department_code ON c1_region ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_region_end_date;
create index IF NOT EXISTS idx_c1_region_end_date ON c1_region ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_region_flag_code;
create index IF NOT EXISTS idx_c1_region_flag_code ON c1_region ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_region_last_modified_by_code;
create index IF NOT EXISTS idx_c1_region_last_modified_by_code ON c1_region ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_region_last_modified_date;
create index IF NOT EXISTS idx_c1_region_last_modified_date ON c1_region ("last_modified_date");
--名称
drop index IF EXISTS idx_c1_region_name;
create index IF NOT EXISTS idx_c1_region_name ON c1_region ("name" varchar_pattern_ops);
--排序
drop index IF EXISTS idx_c1_region_order_by_;
create index IF NOT EXISTS idx_c1_region_order_by_ ON c1_region ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_region_org_code;
create index IF NOT EXISTS idx_c1_region_org_code ON c1_region ("org_code" varchar_pattern_ops);
--父级代码
drop index IF EXISTS idx_c1_region_parent_code;
create index IF NOT EXISTS idx_c1_region_parent_code ON c1_region ("parent_code" varchar_pattern_ops);
--父级树代码
drop index IF EXISTS idx_c1_region_parent_tree_code;
create index IF NOT EXISTS idx_c1_region_parent_tree_code ON c1_region ("parent_tree_code" varchar_pattern_ops);
--父级树名称
drop index IF EXISTS idx_c1_region_parent_tree_name;
create index IF NOT EXISTS idx_c1_region_parent_tree_name ON c1_region ("parent_tree_name" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_region_personal_code;
create index IF NOT EXISTS idx_c1_region_personal_code ON c1_region ("personal_code" varchar_pattern_ops);
--省份代码
drop index IF EXISTS idx_c1_region_province_code;
create index IF NOT EXISTS idx_c1_region_province_code ON c1_region ("province_code" varchar_pattern_ops);
--区域代码
drop index IF EXISTS idx_c1_region_region_code;
create index IF NOT EXISTS idx_c1_region_region_code ON c1_region ("region_code" varchar_pattern_ops);
--区域标识
drop index IF EXISTS idx_c1_region_region_id;
create index IF NOT EXISTS idx_c1_region_region_id ON c1_region ("region_id" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_region_site_code;
create index IF NOT EXISTS idx_c1_region_site_code ON c1_region ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_region_state_code;
create index IF NOT EXISTS idx_c1_region_state_code ON c1_region ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_region_system_info_code;
create index IF NOT EXISTS idx_c1_region_system_info_code ON c1_region ("system_info_code" varchar_pattern_ops);


