package top.cardone.usercenter.po;

import java.util.Date;

/**
 * 地区
 *
 * @author yao hai tao
 */
@lombok.ToString(callSuper = true)
public class Area implements java.io.Serializable {

    /**
     * 地区代码
     */
    @lombok.Getter
    @lombok.Setter
    protected String areaCode;

    /**
     * 地区标识
     */
    @lombok.Getter
    @lombok.Setter
    protected String areaId;

    /**
     * 地区名称
     */
    @lombok.Getter
    @lombok.Setter
    protected String areaName;

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
     * 许可代码集合
     */
    @lombok.Getter
    @lombok.Setter
    protected String permissionCodes;

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