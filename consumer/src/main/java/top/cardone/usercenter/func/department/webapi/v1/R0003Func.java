package top.cardone.usercenter.func.department.webapi.v1;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.dto.DepartmentDto;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;

import java.util.List;
import java.util.Map;

/**
 * 部门 - 查询分页
 */
@Component("/web-api/v1/configuration/department/r0003.json")
public class R0003Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        Page<DepartmentDto> departmentDtoPage = ApplicationContextHolder.getBean(DepartmentService.class).page(DepartmentDto.class, map);

        return ApplicationContextHolder.func(PageSupport.class, pageSupport -> pageSupport.newMap(this.toMapList(departmentDtoPage.getContent()), map, departmentDtoPage.getTotalElements()));
    }

    private List<Map<String, Object>> toMapList(List<DepartmentDto> departmentDtoList) {
        List<Map<String, Object>> mapList = Lists.newArrayList();

        for (DepartmentDto departmentDto : departmentDtoList) {
            mapList.add(this.toMap(departmentDto));
        }

        return mapList;
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