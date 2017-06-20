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
     * 地区代码
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
     * 城市代码
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
     * 联系人
     */
    @lombok.Getter
    @lombok.Setter
    protected String contact;

    /**
     * 国家代码(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String countryCode;

    /**
     * 创建人代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String createdByCode;

    /**
     * 创建日期
     */
    @lombok.Getter
    @lombok.Setter
    protected Date createdDate;

    /**
     * 数据状态代码(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String dataStateCode;

    /**
     * 部门代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String departmentCode;

    /**
     * 学历/文凭代码(数据字典)
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
     * 标记代码(数据字典：工作流、同步、生成、录入、审批)
     */
    @lombok.Getter
    @lombok.Setter
    protected String flagCode;

    /**
     * 标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
     */
    @lombok.Getter
    @lombok.Setter
    protected String flagObjectCode;

    /**
     * 民族代码(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String folkCode;

    /**
     * 证件类型代码
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
     * 最后修改人代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String lastModifiedByCode;

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
     * 现居住地
     */
    @lombok.Getter
    @lombok.Setter
    protected String locus;

    /**
     * 婚姻状态代码(数据字典)
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
     * 组织代码
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
     * 个人代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String personalCode;

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
     * 职业代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String professionCode;

    /**
     * 省份代码
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
     * 区域代码
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
     * 性别代码(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String sexCode;

    /**
     * 站点代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String siteCode;

    /**
     * 状态代码(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String stateCode;

    /**
     * 系统信息代码
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
     * 用户代码
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