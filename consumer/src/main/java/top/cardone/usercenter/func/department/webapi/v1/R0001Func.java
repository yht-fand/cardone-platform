package top.cardone.usercenter.func.department.webapi.v1;

import com.google.common.collect.Maps;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.dto.DepartmentDto;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 部门 - 查询
 */
@Component("/web-api/v1/configuration/department/r0001.json")
public class R0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        DepartmentDto departmentDto = ApplicationContextHolder.getBean(DepartmentService.class).findOne(DepartmentDto.class, map);

        return this.toMap(departmentDto);
    }

    private Map<String, Object> toMap(DepartmentDto departmentDto) {
        Map<String, Object> map = Maps.newHashMap();

        map.put("beginDate", departmentDto.getBeginDate());
        map.put("createdByCode", departmentDto.getCreatedByCode());
        map.put("createdDate", departmentDto.getCreatedDate());
        map.put("dataStateCode", departmentDto.getDataStateCode());
        map.put("departmentCode", departmentDto.getDepartmentCode());
        map.put("departmentId", departmentDto.getDepartmentId());
        map.put("endDate", departmentDto.getEndDate());
        map.put("lastModifiedByCode", departmentDto.getLastModifiedByCode());
        map.put("lastModifiedDate", departmentDto.getLastModifiedDate());
        map.put("name", departmentDto.getName());
        map.put("orgCode", departmentDto.getOrgCode());
        map.put("parentCode", departmentDto.getParentCode());
        map.put("parentTreeCode", departmentDto.getParentTreeCode());
        map.put("parentTreeName", departmentDto.getParentTreeName());
        map.put("permissionCodes", departmentDto.getPermissionCodes());
        map.put("roleCodes", departmentDto.getRoleCodes());
        map.put("stateCode", departmentDto.getStateCode());
        map.put("version", departmentDto.getVersion());
        map.put("wfId", departmentDto.getWfId());

        return map;
    }
}