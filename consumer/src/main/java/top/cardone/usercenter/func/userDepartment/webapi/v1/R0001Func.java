package top.cardone.usercenter.func.userDepartment.webapi.v1;

import com.google.common.collect.HashBasedTable;
import com.google.common.collect.Table;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.UserDepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;

import java.util.List;
import java.util.Map;

/**
 * 用户与部门 - 查询
 */
@Component("/web-api/v1/usercenter/userDepartment/r0001.json")
public class R0001Func implements Func1<Object, Map<String, Object>> {
    private Table<String, String, String> inputConfigTable;
    private Table<String, String, String> outConfigTable;

    public R0001Func() {
        inputConfigTable = HashBasedTable.create();
		inputConfigTable.put("beginDate", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("createdByCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("createdDate", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("dataStateCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("departmentCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("endDate", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("lastModifiedByCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("lastModifiedDate", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("orgCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("permissionCodes", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("roleCodes", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("stateCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("userCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("userDepartmentId", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("version", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("wfId", "funcBeanId", "escapeSqlFunc");

        outConfigTable = HashBasedTable.create();
		outConfigTable.put("BEGIN_DATE", "newName", "beginDate");
		outConfigTable.put("CREATED_BY_CODE", "newName", "createdByCode");
		outConfigTable.put("CREATED_DATE", "newName", "createdDate");
		outConfigTable.put("DATA_STATE_CODE", "newName", "dataStateCode");
		outConfigTable.put("DEPARTMENT_CODE", "newName", "departmentCode");
		outConfigTable.put("END_DATE", "newName", "endDate");
		outConfigTable.put("LAST_MODIFIED_BY_CODE", "newName", "lastModifiedByCode");
		outConfigTable.put("LAST_MODIFIED_DATE", "newName", "lastModifiedDate");
		outConfigTable.put("ORG_CODE", "newName", "orgCode");
		outConfigTable.put("PERMISSION_CODES", "newName", "permissionCodes");
		outConfigTable.put("ROLE_CODES", "newName", "roleCodes");
		outConfigTable.put("STATE_CODE", "newName", "stateCode");
		outConfigTable.put("USER_CODE", "newName", "userCode");
		outConfigTable.put("USER_DEPARTMENT_ID", "newName", "userDepartmentId");
		outConfigTable.put("VERSION_", "newName", "version");
		outConfigTable.put("WF_ID", "newName", "wfId");
    }
	
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        inputMap.putAll(top.cardone.context.util.MapUtils.newHashMap(inputMap, inputConfigTable));

        Page<Map<String, Object>> userDepartmentPage = ApplicationContextHolder.getBean(UserDepartmentService.class).page(inputMap);

        List<Map<String, Object>> newContent = top.cardone.context.util.ListUtils.newArrayList(userDepartmentPage.getContent(), outConfigTable);

        return ApplicationContextHolder.getBean(PageSupport.class).newMap(newContent, inputMap, userDepartmentPage.getTotalElements());
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}