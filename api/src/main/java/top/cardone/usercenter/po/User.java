package top.cardone.usercenter.po;

import java.util.Date;

/**
 * 用户
 *
 * @author yao hai tao
 */
@lombok.ToString(callSuper = true)
public class User implements java.io.Serializable {

    /**
     * 地址
     */
    @lombok.Getter
    @lombok.Setter
    protected String address;

    /**
     * 年龄
     */
    @lombok.Getter
    @lombok.Setter
    protected Integer age;

    /**
     * 别名
     */
    @lombok.Getter
    @lombok.Setter
    protected String aliasName;

    /**
     * 地区编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String areaCode;

    /**
     * 批次编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String batchNo;

    /**
     * 开始日期
     */
    @lombok.Getter
    @lombok.Setter
    protected Date beginDate;

    /**
     * 出生日期
     */
    @lombok.Getter
    @lombok.Setter
    protected Date birthday;

    /**
     * 昵称
     */
    @lombok.Getter
    @lombok.Setter
    protected String callName;

    /**
     * 城市编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String cityCode;

    /**
     * 工作单位
     */
    @lombok.Getter
    @lombok.Setter
    protected String companyName;

    /**
     * 兼容部门编号1
     */
    @lombok.Getter
    @lombok.Setter
    protected String compatibleDepartmentCode1;

    /**
     * 兼容部门编号2
     */
    @lombok.Getter
    @lombok.Setter
    protected String compatibleDepartmentCode2;

    /**
     * 兼容密码1
     */
    @lombok.Getter
    @lombok.Setter
    protected String compatiblePassword1;

    /**
     * 兼容密码2
     */
    @lombok.Getter
    @lombok.Setter
    protected String compatiblePassword2;

    /**
     * 兼容用户编号1
     */
    @lombok.Getter
    @lombok.Setter
    protected String compatibleUserCode1;

    /**
     * 兼容用户编号2
     */
    @lombok.Getter
    @lombok.Setter
    protected String compatibleUserCode2;

    /**
     * 联系人
     */
    @lombok.Getter
    @lombok.Setter
    protected String contact;

    /**
     * 国家编号(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String countryCode;

    /**
     * 创建人编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String createdByCode;

    /**
     * 创建人标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String createdById;

    /**
     * 创建日期
     */
    @lombok.Getter
    @lombok.Setter
    protected Date createdDate;

    /**
     * 数据状态编号(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String dataStateCode;

    /**
     * 部门编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String departmentCode;

    /**
     * 部门标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String departmentId;

    /**
     * 学历/文凭编号(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String diplomaCode;

    /**
     * 邮箱
     */
    @lombok.Getter
    @lombok.Setter
    protected String email;

    /**
     * 结束日期
     */
    @lombok.Getter
    @lombok.Setter
    protected Date endDate;

    /**
     * 名字
     */
    @lombok.Getter
    @lombok.Setter
    protected String firstName;

    /**
     * 标记编号(数据字典：工作流、同步、生成、录入、审批)
     */
    @lombok.Getter
    @lombok.Setter
    protected String flagCode;

    /**
     * 标识对象编号(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
     */
    @lombok.Getter
    @lombok.Setter
    protected String flagObjectCode;

    /**
     * 民族编号(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String folkCode;

    /**
     * 证件类型编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String idCardCode;

    /**
     * 证件号
     */
    @lombok.Getter
    @lombok.Setter
    protected String idCardNo;

    /**
     * 简介
     */
    @lombok.Getter
    @lombok.Setter
    protected String intro;

    /**
     * json数据
     */
    @lombok.Getter
    @lombok.Setter
    protected Object jsonData;

    /**
     * 最后修改人编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String lastModifiedByCode;

    /**
     * 最后修改人标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String lastModifiedById;

    /**
     * 最后修改日期
     */
    @lombok.Getter
    @lombok.Setter
    protected Date lastModifiedDate;

    /**
     * 姓氏
     */
    @lombok.Getter
    @lombok.Setter
    protected String lastName;

    /**
     * 
     */
    @lombok.Getter
    @lombok.Setter
    protected Long lastSyncTime;

    /**
     * 现居住地
     */
    @lombok.Getter
    @lombok.Setter
    protected String locus;

    /**
     * 婚姻状态编号(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String marryStateCode;

    /**
     * 手机
     */
    @lombok.Getter
    @lombok.Setter
    protected String mobilePhone;

    /**
     * 名称
     */
    @lombok.Getter
    @lombok.Setter
    protected String name;

    /**
     * 拼音
     */
    @lombok.Getter
    @lombok.Setter
    protected String namePinyin;

    /**
     * 排序
     */
    @lombok.Getter
    @lombok.Setter
    protected Long orderBy;

    /**
     * 组织编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String orgCode;

    /**
     * 密码
     */
    @lombok.Getter
    @lombok.Setter
    protected String password;

    /**
     * 密码盐
     */
    @lombok.Getter
    @lombok.Setter
    protected String passwordSalt;

    /**
     * 个人编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String personalCode;

    /**
     * 个人标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String personalId;

    /**
     * 肖像路径
     */
    @lombok.Getter
    @lombok.Setter
    protected String portraitUrl;

    /**
     * 隐私密码
     */
    @lombok.Getter
    @lombok.Setter
    protected String privatePassword;

    /**
     * 隐私密码盐
     */
    @lombok.Getter
    @lombok.Setter
    protected String privatePasswordSalt;

    /**
     * 职业编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String professionCode;

    /**
     * 省份编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String provinceCode;

    /**
     * qq号码
     */
    @lombok.Getter
    @lombok.Setter
    protected String qq;

    /**
     * 区域编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String regionCode;

    /**
     * 备注
     */
    @lombok.Getter
    @lombok.Setter
    protected String remark;

    /**
     * 性别编号(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String sexCode;

    /**
     * 站点编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String siteCode;

    /**
     * 来源编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String sourceCode;

    /**
     * 状态编号(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String stateCode;

    /**
     * 
     */
    @lombok.Getter
    @lombok.Setter
    protected String syncReturnCode;

    /**
     * 
     */
    @lombok.Getter
    @lombok.Setter
    protected String syncReturnMessage;

    /**
     * 系统信息编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String systemInfoCode;

    /**
     * 联系电话
     */
    @lombok.Getter
    @lombok.Setter
    protected String telephone;

    /**
     * 第三方编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String thirdPartyCode;

    /**
     * 用户编号
     */
    @lombok.Getter
    @lombok.Setter
    protected String userCode;

    /**
     * 用户标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String userId;

    /**
     * 版本
     */
    @lombok.Getter
    @lombok.Setter
    protected Integer version;
}