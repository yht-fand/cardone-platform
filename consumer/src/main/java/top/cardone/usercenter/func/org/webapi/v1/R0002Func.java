package top.cardone.usercenter.func.org.webapi.vi;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import top.cardone.usercenter.dto.OrgDto;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

import java.util.List;
import java.util.Map;

/**
 * 组织 - 查询列表
 */
@Component("/web-api/v1/usercenter/org/r0002.json")
public class R0002Func implements Func1<Map<String, Object>, Map<String, Object>> {
    @Override
    public Map<String, Object> func(Map<String, Object> map) {
        return null;
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
