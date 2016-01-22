package top.cardone.usercenter.func.openUser.webapi.v1;

import com.google.common.collect.Maps;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.dto.OpenUserDto;
import top.cardone.usercenter.service.OpenUserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 开放用户 - 查询
 */
@Component("/web-api/v1/configuration/openUser/r0001.json")
public class R0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        OpenUserDto openUserDto = ApplicationContextHolder.getBean(OpenUserService.class).findOne(OpenUserDto.class, map);

        return this.toMap(openUserDto);
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