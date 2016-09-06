package top.cardone.usercenter.func.user.webapi.v1;

import com.google.common.collect.HashBasedTable;
import com.google.common.collect.Table;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.UserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;

import java.util.List;
import java.util.Map;

/**
 * 用户 - 查询
 */
@Component("/web-api/v1/usercenter/user/r0001.json")
public class R0001Func implements Func1<Object, Map<String, Object>> {
    private Table<String, String, String> inputConfigTable;
    private Table<String, String, String> outConfigTable;

    public R0001Func() {
        inputConfigTable = HashBasedTable.create();
		inputConfigTable.put("address", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("age", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("areaCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("beginDate", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("birthday", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("callName", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("cityCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("companyName", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("countryCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("createdByCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("createdDate", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("dataStateCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("departmentCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("diplomaCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("email", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("endDate", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("flagCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("folkCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("idCardNo", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("intro", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("lastModifiedByCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("lastModifiedDate", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("locus", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("marryStateCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("mobilePhone", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("name", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("orgCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("password", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("passwordSalt", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("permissionCodes", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("portraitUrl", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("privatePassword", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("privatePasswordSalt", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("professionCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("provinceCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("qq", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("roleCodes", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("sexCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("stateCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("telephone", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("userCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("userId", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("version", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("wfId", "funcBeanId", "escapeSqlFunc");

        outConfigTable = HashBasedTable.create();
		outConfigTable.put("ADDRESS", "newName", "address");
		outConfigTable.put("AGE", "newName", "age");
		outConfigTable.put("AREA_CODE", "newName", "areaCode");
		outConfigTable.put("BEGIN_DATE", "newName", "beginDate");
		outConfigTable.put("BIRTHDAY", "newName", "birthday");
		outConfigTable.put("CALL_NAME", "newName", "callName");
		outConfigTable.put("CITY_CODE", "newName", "cityCode");
		outConfigTable.put("COMPANY_NAME", "newName", "companyName");
		outConfigTable.put("COUNTRY_CODE", "newName", "countryCode");
		outConfigTable.put("CREATED_BY_CODE", "newName", "createdByCode");
		outConfigTable.put("CREATED_DATE", "newName", "createdDate");
		outConfigTable.put("DATA_STATE_CODE", "newName", "dataStateCode");
		outConfigTable.put("DEPARTMENT_CODE", "newName", "departmentCode");
		outConfigTable.put("DIPLOMA_CODE", "newName", "diplomaCode");
		outConfigTable.put("EMAIL", "newName", "email");
		outConfigTable.put("END_DATE", "newName", "endDate");
		outConfigTable.put("FLAG_CODE", "newName", "flagCode");
		outConfigTable.put("FOLK_CODE", "newName", "folkCode");
		outConfigTable.put("ID_CARD_NO", "newName", "idCardNo");
		outConfigTable.put("INTRO", "newName", "intro");
		outConfigTable.put("LAST_MODIFIED_BY_CODE", "newName", "lastModifiedByCode");
		outConfigTable.put("LAST_MODIFIED_DATE", "newName", "lastModifiedDate");
		outConfigTable.put("LOCUS", "newName", "locus");
		outConfigTable.put("MARRY_STATE_CODE", "newName", "marryStateCode");
		outConfigTable.put("MOBILE_PHONE", "newName", "mobilePhone");
		outConfigTable.put("NAME", "newName", "name");
		outConfigTable.put("ORG_CODE", "newName", "orgCode");
		outConfigTable.put("PASSWORD_", "newName", "password");
		outConfigTable.put("PASSWORD_SALT", "newName", "passwordSalt");
		outConfigTable.put("PERMISSION_CODES", "newName", "permissionCodes");
		outConfigTable.put("PORTRAIT_URL", "newName", "portraitUrl");
		outConfigTable.put("PRIVATE_PASSWORD", "newName", "privatePassword");
		outConfigTable.put("PRIVATE_PASSWORD_SALT", "newName", "privatePasswordSalt");
		outConfigTable.put("PROFESSION_CODE", "newName", "professionCode");
		outConfigTable.put("PROVINCE_CODE", "newName", "provinceCode");
		outConfigTable.put("QQ", "newName", "qq");
		outConfigTable.put("ROLE_CODES", "newName", "roleCodes");
		outConfigTable.put("SEX_CODE", "newName", "sexCode");
		outConfigTable.put("STATE_CODE", "newName", "stateCode");
		outConfigTable.put("TELEPHONE", "newName", "telephone");
		outConfigTable.put("USER_CODE", "newName", "userCode");
		outConfigTable.put("USER_ID", "newName", "userId");
		outConfigTable.put("VERSION_", "newName", "version");
		outConfigTable.put("WF_ID", "newName", "wfId");
    }
	
    @Override
    public Object func(Map<String, Object> inputMap) {
        inputMap.putAll(top.cardone.context.util.MapUtils.newHashMap(inputMap, inputConfigTable));

        Page<Map<String, Object>> userPage = ApplicationContextHolder.getBean(UserService.class).page(inputMap);

        List<Map<String, Object>> newContent = top.cardone.context.util.ListUtils.newArrayList(userPage.getContent(), outConfigTable);

        return ApplicationContextHolder.getBean(PageSupport.class).newMap(newContent, inputMap, userPage.getTotalElements());
    }
}