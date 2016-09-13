package top.cardone.usercenter.po;

import java.util.Date;

/**
 * 区域
 *
 * @author yao hai tao
 */
@lombok.ToString(callSuper = true)
public class Region implements java.io.Serializable {

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
     * 结束时间
     */
    @lombok.Getter
    @lombok.Setter
    protected Date endDate;

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
     * 名称
     */
    @lombok.Getter
    @lombok.Setter
    protected String name;

    /**
     * 父级代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String parentCode;

    /**
     * 父级树代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String parentTreeCode;

    /**
     * 父级树名称
     */
    @lombok.Getter
    @lombok.Setter
    protected String parentTreeName;

    /**
     * 许可代码集合
     */
    @lombok.Getter
    @lombok.Setter
    protected String permissionCodes;

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
     * 区域标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String regionId;

    /**
     * 角色代码集合
     */
    @lombok.Getter
    @lombok.Setter
    protected String roleCodes;

    /**
     * 状态代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String stateCode;

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