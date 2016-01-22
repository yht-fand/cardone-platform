package top.cardone.usercenter.func.user.webapi.v1;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.dto.UserDto;
import top.cardone.usercenter.service.UserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;

import java.util.List;
import java.util.Map;

/**
 * 用户 - 查询分页
 */
@Component("/web-api/v1/configuration/user/r0003.json")
public class R0003Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        Page<UserDto> userDtoPage = ApplicationContextHolder.getBean(UserService.class).page(UserDto.class, map);

        return ApplicationContextHolder.func(PageSupport.class, pageSupport -> pageSupport.newMap(this.toMapList(userDtoPage.getContent()), map, userDtoPage.getTotalElements()));
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