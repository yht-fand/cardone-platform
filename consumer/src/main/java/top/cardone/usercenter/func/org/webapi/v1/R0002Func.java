package top.cardone.usercenter.func.org.webapi.v1;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.dto.OrgDto;
import top.cardone.usercenter.service.OrgService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.List;
import java.util.Map;

/**
 * 组织 - 查询列表
 */
@Component("/web-api/v1/configuration/org/r0002.json")
public class R0002Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        List<OrgDto> orgDtoList = ApplicationContextHolder.getBean(OrgService.class).findList(OrgDto.class, map);

        return this.toMapList(orgDtoList);
    }

    private List<Map<String, Object>> toMapList(List<OrgDto> orgDtoList) {
        List<Map<String, Object>> mapList = Lists.newArrayList();

        for (OrgDto orgDto : orgDtoList) {
            mapList.add(this.toMap(orgDto));
        }

        return mapList;
    }

    private Map<String, Object> toMap(OrgDto orgDto) {
        Map<String, Object> map = Maps.newHashMap();

        map.put("beginDate", orgDto.getBeginDate());
        map.put("createdByCode", orgDto.getCreatedByCode());
        map.put("createdDate", orgDto.getCreatedDate());
        map.put("dataStateCode", orgDto.getDataStateCode());
        map.put("endDate", orgDto.getEndDate());
        map.put("lastModifiedByCode", orgDto.getLastModifiedByCode());
        map.put("lastModifiedDate", orgDto.getLastModifiedDate());
        map.put("name", orgDto.getName());
        map.put("orgCode", orgDto.getOrgCode());
        map.put("orgId", orgDto.getOrgId());
        map.put("parentCode", orgDto.getParentCode());
        map.put("parentTreeCode", orgDto.getParentTreeCode());
        map.put("parentTreeName", orgDto.getParentTreeName());
        map.put("permissionCodes", orgDto.getPermissionCodes());
        map.put("roleCodes", orgDto.getRoleCodes());
        map.put("stateCode", orgDto.getStateCode());
        map.put("version", orgDto.getVersion());
        map.put("wfId", orgDto.getWfId());

        return map;
    }
}