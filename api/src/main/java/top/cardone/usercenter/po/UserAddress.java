package top.cardone.usercenter.po;

import java.util.Date;

/**
 * 用户与地址
 *
 * @author yao hai tao
 */
@lombok.ToString(callSuper = true)
public class UserAddress implements java.io.Serializable {

    /**
     * 地区代码
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
     * 城市代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String cityCode;

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
     * 创建时间
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
     * 结束时间
     */
    @lombok.Getter
    @lombok.Setter
    protected Date endDate;

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
     * 是否默认(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String isDefault;

    /**
     * JSON数据
     */
    @lombok.Getter
    @lombok.Setter
    protected String jsonData;

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
     * 排序
     */
    @lombok.Getter
    @lombok.Setter
    protected Long order;

    /**
     * 组织代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String orgCode;

    /**
     * 省份代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String provinceCode;

    /**
     * 区域代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String regionCode;

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
     * 类别代码(数据字典)
     */
    @lombok.Getter
    @lombok.Setter
    protected String typeCode;

    /**
     * 用户与地址标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String userAddressId;

    /**
     * 用户代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String userCode;

    /**
     * 版本
     */
    @lombok.Getter
    @lombok.Setter
    protected Integer version;
}