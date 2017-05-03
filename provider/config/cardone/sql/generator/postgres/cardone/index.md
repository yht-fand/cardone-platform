
### 用户中心(usercenter)

#### ER 图

![用户中心](usercenter.png)

#### 表结构

##### 组织（c1_org）

字段名|可为空|类型及范围|说明
---|---|---|---
address|YES|String(255)|地址
area_code|YES|String(255)|地区代码
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
city_code|YES|String(255)|城市代码
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
name|YES|String(255)|名称
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
org_id|NO|String(255)|组织标识
parent_code|YES|String(255)|父级代码
parent_tree_code|YES|String(1023)|父级树代码
parent_tree_name|YES|String(1023)|父级树名称
personal_code|YES|String(255)|个人代码
province_code|YES|String(255)|省份代码
region_code|YES|String(255)|区域代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
version_|YES|Integer(10)|版本

##### 部门（c1_department）

字段名|可为空|类型及范围|说明
---|---|---|---
address|YES|String(255)|地址
area_code|YES|String(255)|地区代码
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
city_code|YES|String(255)|城市代码
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
department_id|NO|String(255)|部门标识
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
name|NO|String(255)|名称
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
parent_code|YES|String(255)|父级代码
parent_tree_code|YES|String(1023)|父级树代码
parent_tree_name|YES|String(1023)|父级树名称
personal_code|YES|String(255)|个人代码
province_code|YES|String(255)|省份代码
region_code|YES|String(255)|区域代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
version_|YES|Integer(10)|版本

##### 用户与部门（c1_user_department）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
personal_code|YES|String(255)|个人代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
user_code|YES|String(255)|用户代码
user_department_id|NO|String(255)|用户与部门标识
version_|YES|Integer(10)|版本

##### 用户与组织（c1_user_org）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
personal_code|YES|String(255)|个人代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
user_code|YES|String(255)|用户代码
user_org_id|NO|String(255)|用户与组织标识
version_|YES|Integer(10)|版本

##### 用户与地址（c1_user_address）

字段名|可为空|类型及范围|说明
---|---|---|---
area_code|YES|String(255)|地区代码
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
city_code|YES|String(255)|城市代码
country_code|YES|String(255)|国家代码(数据字典)
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
is_default|YES|String(255)|是否默认(数据字典)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
personal_code|YES|String(255)|个人代码
province_code|YES|String(255)|省份代码
region_code|YES|String(255)|区域代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
type_code|YES|String(255)|类别代码(数据字典)
user_address_id|NO|String(255)|用户与地址标识
user_code|YES|String(255)|用户代码
version_|YES|Integer(10)|版本

##### 用户（c1_user）

字段名|可为空|类型及范围|说明
---|---|---|---
address|YES|String(255)|地址
age|YES|Integer(10)|年龄
alias_name|YES|String(255)|别名
area_code|YES|String(255)|地区代码
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
birthday|YES|Date(29)|出生日期
call_name|YES|String(255)|昵称
city_code|YES|String(255)|城市代码
company_name|YES|String(255)|工作单位
contact|YES|String(255)|联系人
country_code|YES|String(255)|国家代码(数据字典)
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
diploma_code|YES|String(255)|学历/文凭代码(数据字典)
email|YES|String(255)|邮箱
end_date|YES|Date(29)|结束时间
first_name|YES|String(255)|名字
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
folk_code|YES|String(255)|民族代码(数据字典)
id_card_code|YES|String(255)|证件类型代码
id_card_no|YES|String(255)|证件号
intro|YES|String(2147483647)|简介
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
last_name|YES|String(255)|姓氏
locus|YES|String(255)|现居住地
marry_state_code|YES|String(255)|婚姻状态代码(数据字典)
mobile_phone|YES|String(255)|手机
name|NO|String(255)|名称
name_pinyin|YES|String(255)|拼音
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
password_|NO|String(255)|密码
password_salt|YES|String(255)|密码盐
personal_code|YES|String(255)|个人代码
portrait_url|YES|String(255)|肖像路径
private_password|YES|String(255)|隐私密码
private_password_salt|YES|String(255)|隐私密码盐
profession_code|YES|String(255)|职业代码
province_code|YES|String(255)|省份代码
qq|YES|String(255)|QQ号码
region_code|YES|String(255)|区域代码
remark|YES|String(511)|备注
sex_code|YES|String(255)|性别代码(数据字典)
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
telephone|YES|String(255)|联系电话
user_code|NO|String(255)|用户代码
user_id|NO|String(255)|用户标识
version_|YES|Integer(10)|版本

##### 开放用户（c1_open_user）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
client_id|NO|String(255)|客户端标识
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
open_user_id|NO|String(255)|开放用户标识
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
personal_code|YES|String(255)|个人代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
user_code|YES|String(255)|用户代码
version_|YES|Integer(10)|版本

##### 省份（c1_province）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
country_code|YES|String(255)|国家代码(数据字典)
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
name|NO|String(255)|名称
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
personal_code|YES|String(255)|个人代码
province_code|NO|String(255)|省份代码
province_id|NO|String(255)|省份标识
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
version_|YES|Integer(10)|版本

##### 城市（c1_city）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
city_code|NO|String(255)|城市代码
city_id|NO|String(255)|城市标识
country_code|YES|String(255)|国家代码(数据字典)
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
name|NO|String(255)|名称
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
personal_code|YES|String(255)|个人代码
province_code|YES|String(255)|省份代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
version_|YES|Integer(10)|版本

##### 地区（c1_area）

字段名|可为空|类型及范围|说明
---|---|---|---
area_code|YES|String(255)|地区代码
area_id|NO|String(255)|地区标识
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
city_code|YES|String(255)|城市代码
country_code|YES|String(255)|国家代码(数据字典)
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
name|NO|String(255)|名称
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
personal_code|YES|String(255)|个人代码
province_code|YES|String(255)|省份代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
version_|YES|Integer(10)|版本

##### 区域（c1_region）

字段名|可为空|类型及范围|说明
---|---|---|---
area_code|YES|String(255)|地区代码
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始时间
city_code|YES|String(255)|城市代码
country_code|YES|String(255)|国家代码(数据字典)
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(29)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(29)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(29)|最后修改时间
name|NO|String(255)|名称
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
parent_code|YES|String(255)|父级代码
parent_tree_code|YES|String(1023)|父级树代码
parent_tree_name|YES|String(1023)|父级树名称
personal_code|YES|String(255)|个人代码
province_code|YES|String(255)|省份代码
region_code|NO|String(255)|区域代码
region_id|NO|String(255)|区域标识
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
version_|YES|Integer(10)|版本
