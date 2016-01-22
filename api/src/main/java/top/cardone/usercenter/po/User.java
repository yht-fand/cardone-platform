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
     * 版本号
     */
    private static final long serialVersionUID = 394992252773194703L;

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
    protected Long age;

    /**
     * 区域代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String areaCode;

    /**
     * 开始时间
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
     * 市代码
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
     * 国家代码
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
     * 创建时间
     */
    @lombok.Getter
    @lombok.Setter
    protected Date createdDate;

    /**
     * 数据状态代码
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
     * 学历/文凭代码
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
     * 结束时间
     */
    @lombok.Getter
    @lombok.Setter
    protected Date endDate;

    /**
     * 标记代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String flagCode;

    /**
     * 民族代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String folkCode;

    /**
     * 身份证号码
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
     * 最后修改人代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String lastModifiedByCode;

    /**
     * 最后修改时间
     */
    @lombok.Getter
    @lombok.Setter
    protected Date lastModifiedDate;

    /**
     * 现居住地
     */
    @lombok.Getter
    @lombok.Setter
    protected String locus;

    /**
     * 婚姻状态代码
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
     * 许可代码集合
     */
    @lombok.Getter
    @lombok.Setter
    protected String permissionCodes;

    /**
     * 肖像路径
     */
    @lombok.Getter
    @lombok.Setter
    protected String portraitUrl;

    /**
     * 隐私资料查看密码
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
     * 省代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String provinceCode;

    /**
     * QQ号码
     */
    @lombok.Getter
    @lombok.Setter
    protected String qq;

    /**
     * 角色代码集合
     */
    @lombok.Getter
    @lombok.Setter
    protected String roleCodes;

    /**
     * 性别代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String sexCode;

    /**
     * 状态代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String stateCode;

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
    protected Long version;

    /**
     * 工作流标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String wfId;
}