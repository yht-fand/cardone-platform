package top.cardone.usercenter.func.openUser.webapi.v1;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.dto.OpenUserDto;
import top.cardone.usercenter.service.OpenUserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;

import java.util.List;
import java.util.Map;

/**
 * 开放用户 - 查询分页
 */
@Component("/web-api/v1/configuration/openUser/r0003.json")
public class R0003Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        Page<OpenUserDto> openUserDtoPage = ApplicationContextHolder.getBean(OpenUserService.class).page(OpenUserDto.class, map);

        return ApplicationContextHolder.func(PageSupport.class, pageSupport -> pageSupport.newMap(this.toMapList(openUserDtoPage.getContent()), map, openUserDtoPage.getTotalElements()));
    }

    private List<Map<String, Object>> toMapList(List<OpenUserDto> openUserDtoList) {
        List<Map<String, Object>> mapList = Lists.newArrayList();

        for (OpenUserDto openUserDto : openUserDtoList) {
            mapList.add(this.toMap(openUserDto));
        }

        return mapList;
    }

    private Map<String, Object> toMap(OpenUserDto openUserDto) {
        Map<String, Object> map = Maps.newHashMap();

        map.put("beginDate", openUserDto.getBeginDate());
        map.put("clientId", openUserDto.getClientId());
        map.put("createdByCode", openUserDto.getCreatedByCode());
        map.put("createdDate", openUserDto.getCreatedDate());
        map.put("dataStateCode", openUserDto.getDataStateCode());
        map.put("departmentCode", openUserDto.getDepartmentCode());
        map.put("endDate", openUserDto.getEndDate());
        map.put("lastModifiedByCode", openUserDto.getLastModifiedByCode());
        map.put("lastModifiedDate", openUserDto.getLastModifiedDate());
        map.put("openUserId", openUserDto.getOpenUserId());
        map.put("orgCode", openUserDto.getOrgCode());
        map.put("permissionCodes", openUserDto.getPermissionCodes());
        map.put("roleCodes", openUserDto.getRoleCodes());
        map.put("stateCode", openUserDto.getStateCode());
        map.put("userCode", openUserDto.getUserCode());
        map.put("version", openUserDto.getVersion());
        map.put("wfId", openUserDto.getWfId());

        return map;
    }
}