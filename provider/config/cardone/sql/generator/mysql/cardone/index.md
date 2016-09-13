
### 用户中心(usercenter)

#### ER 图

![用户中心](usercenter.png)

#### 表结构

##### 组织（c1_org）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(19)|开始时间
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
NAME|YES|String(255)|名称
ORG_CODE|NO|String(255)|组织代码
ORG_ID|NO|String(255)|组织标识
PARENT_CODE|YES|String(255)|父级代码
PARENT_TREE_CODE|YES|String(1023)|父级树代码
PARENT_TREE_NAME|YES|String(1023)|父级树名称
PERMISSION_CODES|YES|String(1023)|许可代码集合
ROLE_CODES|YES|String(1023)|角色代码集合
STATE_CODE|YES|String(255)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识

##### 部门（c1_department）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(19)|开始时间
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
DEPARTMENT_CODE|YES|String(255)|部门代码
DEPARTMENT_ID|NO|String(255)|部门标识
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
NAME|NO|String(255)|名称
ORG_CODE|YES|String(255)|组织代码
PARENT_CODE|YES|String(255)|父级代码
PARENT_TREE_CODE|YES|String(1023)|父级树代码
PARENT_TREE_NAME|YES|String(1023)|父级树名称
PERMISSION_CODES|YES|String(1023)|许可代码集合
ROLE_CODES|YES|String(1023)|角色代码集合
STATE_CODE|YES|String(255)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识

##### 用户与部门（c1_user_department）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(19)|开始时间
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
DEPARTMENT_CODE|YES|String(255)|部门代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
ORG_CODE|YES|String(255)|组织代码
PERMISSION_CODES|YES|String(1023)|许可代码集合
ROLE_CODES|YES|String(1023)|角色代码集合
STATE_CODE|YES|String(255)|状态代码
USER_CODE|NO|String(255)|用户代码
USER_DEPARTMENT_ID|NO|String(255)|用户与部门标识
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识

##### 用户（c1_user）

字段名|可为空|类型及范围|说明
---|---|---|---
ADDRESS|YES|String(255)|地址
AGE|YES|Long(10)|年龄
AREA_CODE|YES|String(255)|地区代码
BEGIN_DATE|YES|Date(19)|开始时间
BIRTHDAY|YES|Date(19)|出生日期
CALL_NAME|YES|String(255)|昵称
CITY_CODE|YES|String(255)|城市代码
COMPANY_NAME|YES|String(255)|工作单位
CONTACT|YES|String(255)|联系人
COUNTRY_CODE|YES|String(255)|国家代码
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
DEPARTMENT_CODE|YES|String(255)|部门代码
DIPLOMA_CODE|YES|String(255)|学历/文凭代码
EMAIL|YES|String(255)|邮箱
END_DATE|YES|Date(19)|结束时间
FLAG_CODE|YES|String(255)|标记代码
FOLK_CODE|YES|String(255)|民族代码
ID_CARD_CODE|YES|String(255)|证件类型代码
ID_CARD_NO|YES|String(255)|证件号
INTRO|YES|String(65535)|简介
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
LOCUS|YES|String(255)|现居住地
MARRY_STATE_CODE|YES|String(255)|婚姻状态代码
MOBILE_PHONE|YES|String(255)|手机
NAME|NO|String(255)|名称
ORG_CODE|YES|String(255)|组织代码
PASSWORD_|NO|String(255)|密码
PASSWORD_SALT|YES|String(255)|密码盐
PERMISSION_CODES|YES|String(1023)|许可代码集合
PORTRAIT_URL|YES|String(255)|肖像路径
PRIVATE_PASSWORD|YES|String(255)|隐私资料查看密码
PRIVATE_PASSWORD_SALT|YES|String(255)|隐私密码盐
PROFESSION_CODE|YES|String(255)|职业代码
PROVINCE_CODE|YES|String(255)|省份代码
QQ|YES|String(255)|QQ号码
REGION_CODE2|YES|String(255)|区域代码
REMARK|YES|String(511)|备注
ROLE_CODES|YES|String(1023)|角色代码集合
SEX_CODE|YES|String(255)|性别代码
STATE_CODE|YES|String(255)|状态代码
TELEPHONE|YES|String(255)|联系电话
USER_CODE|NO|String(255)|用户代码
USER_ID|NO|String(255)|用户标识
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识

##### 开放用户（c1_open_user）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(19)|开始时间
CLIENT_ID|NO|String(255)|客户端标识
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
DEPARTMENT_CODE|YES|String(255)|部门代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
OPEN_USER_ID|NO|String(255)|开放用户标识
ORG_CODE|YES|String(255)|组织代码
PERMISSION_CODES|YES|String(1023)|许可代码集合
ROLE_CODES|YES|String(1023)|角色代码集合
STATE_CODE|YES|String(255)|状态代码
USER_CODE|NO|String(255)|用户代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识

##### 省份（c1_province）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(19)|开始时间
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
NAME|NO|String(255)|名称
PERMISSION_CODES|YES|String(1023)|许可代码集合
PROVINCE_CODE|NO|String(255)|省份代码
PROVINCE_ID|NO|String(255)|省份标识
ROLE_CODES|YES|String(1023)|角色代码集合
STATE_CODE|YES|String(255)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识

##### 城市（c1_city）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(19)|开始时间
CITY_CODE|NO|String(255)|城市代码
CITY_ID|NO|String(255)|城市标识
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
NAME|NO|String(255)|名称
PERMISSION_CODES|YES|String(1023)|许可代码集合
PROVINCE_CODE|NO|String(255)|省份代码
ROLE_CODES|YES|String(1023)|角色代码集合
STATE_CODE|YES|String(255)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识

##### 地区（c1_area）

字段名|可为空|类型及范围|说明
---|---|---|---
AREA_CODE|NO|String(255)|地区代码
AREA_ID|NO|String(255)|地区标识
BEGIN_DATE|YES|Date(19)|开始时间
CITY_CODE|YES|String(255)|城市代码
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
NAME|NO|String(255)|名称
PERMISSION_CODES|YES|String(1023)|许可代码集合
PROVINCE_CODE|NO|String(255)|省份代码
ROLE_CODES|YES|String(1023)|角色代码集合
STATE_CODE|YES|String(255)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识

##### 区域（c1_region）

字段名|可为空|类型及范围|说明
---|---|---|---
AREA_CODE|YES|String(255)|地区代码
BEGIN_DATE|YES|Date(19)|开始时间
CITY_CODE|YES|String(255)|城市代码
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
NAME|NO|String(255)|名称
PARENT_CODE|YES|String(255)|父级代码
PARENT_TREE_CODE|YES|String(1023)|父级树代码
PARENT_TREE_NAME|YES|String(1023)|父级树名称
PERMISSION_CODES|YES|String(1023)|许可代码集合
PROVINCE_CODE|YES|String(255)|省份代码
REGION_CODE|NO|String(255)|区域代码
REGION_ID|NO|String(255)|区域标识
ROLE_CODES|YES|String(1023)|角色代码集合
STATE_CODE|YES|String(255)|状态代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识
