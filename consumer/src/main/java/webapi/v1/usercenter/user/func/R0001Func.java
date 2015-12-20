package webapi.v1.usercenter.user.func;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import top.cardone.usercenter.dto.UserDto;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

import java.util.List;
import java.util.Map;

/**
 * 用户 - 查询
 */
@Component("/web-api/v1/usercenter/user/r0001.json")
public class R0001Func implements Func1<Map<String, Object>, Map<String, Object>> {
    @Override
    public Map<String, Object> func(Map<String, Object> map) {
        return null;
    }

    private List<Map<String, Object>> toMapList(List<UserDto> userDtoList) {
        List<Map<String, Object>> mapList = Lists.newArrayList();

        for (UserDto userDto : userDtoList) {
            mapList.add(this.toMap(userDto));
        }

        return mapList;
    }

    private Map<String, Object> toMap(UserDto userDto) {
        Map<String, Object> map = Maps.newHashMap();

        map.put("address", userDto.getAddress());
        map.put("age", userDto.getAge());
        map.put("areaCode", userDto.getAreaCode());
        map.put("beginDate", userDto.getBeginDate());
        map.put("birthday", userDto.getBirthday());
        map.put("callName", userDto.getCallName());
        map.put("cityCode", userDto.getCityCode());
        map.put("companyName", userDto.getCompanyName());
        map.put("countryCode", userDto.getCountryCode());
        map.put("createdByCode", userDto.getCreatedByCode());
        map.put("createdDate", userDto.getCreatedDate());
        map.put("dataStateCode", userDto.getDataStateCode());
        map.put("departmentCode", userDto.getDepartmentCode());
        map.put("diplomaCode", userDto.getDiplomaCode());
        map.put("email", userDto.getEmail());
        map.put("endDate", userDto.getEndDate());
        map.put("flagCode", userDto.getFlagCode());
        map.put("folkCode", userDto.getFolkCode());
        map.put("idCardNo", userDto.getIdCardNo());
        map.put("intro", userDto.getIntro());
        map.put("lastModifiedByCode", userDto.getLastModifiedByCode());
        map.put("lastModifiedDate", userDto.getLastModifiedDate());
        map.put("locus", userDto.getLocus());
        map.put("marryStateCode", userDto.getMarryStateCode());
        map.put("mobilePhone", userDto.getMobilePhone());
        map.put("name", userDto.getName());
        map.put("orgCode", userDto.getOrgCode());
        map.put("password", userDto.getPassword());
        map.put("passwordSalt", userDto.getPasswordSalt());
        map.put("permissionCodes", userDto.getPermissionCodes());
        map.put("portraitUrl", userDto.getPortraitUrl());
        map.put("privatePassword", userDto.getPrivatePassword());
        map.put("privatePasswordSalt", userDto.getPrivatePasswordSalt());
        map.put("professionCode", userDto.getProfessionCode());
        map.put("provinceCode", userDto.getProvinceCode());
        map.put("qq", userDto.getQq());
        map.put("roleCodes", userDto.getRoleCodes());
        map.put("sexCode", userDto.getSexCode());
        map.put("stateCode", userDto.getStateCode());
        map.put("telephone", userDto.getTelephone());
        map.put("userCode", userDto.getUserCode());
        map.put("userId", userDto.getUserId());
        map.put("version", userDto.getVersion());
        map.put("wfId", userDto.getWfId());

        return map;
    }
}
