package top.cardone.usercenter.func.userDepartment.webapi.v1;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.dto.UserDepartmentDto;
import top.cardone.usercenter.service.UserDepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;

import java.util.List;
import java.util.Map;

/**
 * 用户与部门 - 查询分页
 */
@Component("/web-api/v1/configuration/userDepartment/r0003.json")
public class R0003Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        Page<UserDepartmentDto> userDepartmentDtoPage = ApplicationContextHolder.getBean(UserDepartmentService.class).page(UserDepartmentDto.class, map);

        return ApplicationContextHolder.func(PageSupport.class, pageSupport -> pageSupport.newMap(this.toMapList(userDepartmentDtoPage.getContent()), map, userDepartmentDtoPage.getTotalElements()));
    }

    private List<Map<String, Object>> toMapList(List<UserDepartmentDto> userDepartmentDtoList) {
        List<Map<String, Object>> mapList = Lists.newArrayList();

        for (UserDepartmentDto userDepartmentDto : userDepartmentDtoList) {
            mapList.add(this.toMap(userDepartmentDto));
        }

        return mapList;
    }

    private Map<String, Object> toMap(UserDepartmentDto userDepartmentDto) {
        Map<String, Object> map = Maps.newHashMap();

        map.put("beginDate", userDepartmentDto.getBeginDate());
        map.put("createdByCode", userDepartmentDto.getCreatedByCode());
        map.put("createdDate", userDepartmentDto.getCreatedDate());
        map.put("dataStateCode", userDepartmentDto.getDataStateCode());
        map.put("departmentCode", userDepartmentDto.getDepartmentCode());
        map.put("endDate", userDepartmentDto.getEndDate());
        map.put("lastModifiedByCode", userDepartmentDto.getLastModifiedByCode());
        map.put("lastModifiedDate", userDepartmentDto.getLastModifiedDate());
        map.put("orgCode", userDepartmentDto.getOrgCode());
        map.put("permissionCodes", userDepartmentDto.getPermissionCodes());
        map.put("roleCodes", userDepartmentDto.getRoleCodes());
        map.put("stateCode", userDepartmentDto.getStateCode());
        map.put("userCode", userDepartmentDto.getUserCode());
        map.put("userDepartmentId", userDepartmentDto.getUserDepartmentId());
        map.put("version", userDepartmentDto.getVersion());
        map.put("wfId", userDepartmentDto.getWfId());

        return map;
    }
}