package top.cardone.usercenter.func.department.webapi.v1;

import com.google.common.collect.HashBasedTable;
import com.google.common.collect.Table;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.context.util.ListUtils;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;
import java.util.List;
import java.util.Map;

/**
 * 部门 - 查询分页
 */
@Component("/web-api/v1/usercenter/department/r0003.json")
public class R0003Func implements Func1<Object, Map<String, Object>> {
    private Table<String, String, String> inputConfigTable;
    private Table<String, String, String> outConfigTable;

	public R0003Func() {
		inputConfigTable = HashBasedTable.create();
		inputConfigTable.put("departmentCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("parentCode", "funcBeanId", "escapeSqlFunc");
		inputConfigTable.put("orgCode", "funcBeanId", "escapeSqlFunc");

		outConfigTable = HashBasedTable.create();
		outConfigTable.put("DEPARTMENT_ID", "newName", "departmentId");
		outConfigTable.put("DEPARTMENT_CODE", "newName", "departmentCode");
		outConfigTable.put("NAME", "newName", "name");
		outConfigTable.put("PARENT_CODE", "newName", "parentCode");
		outConfigTable.put("PARENT_DEPT_NAME", "newName", "parentDeptName");
		outConfigTable.put("ORG_CODE", "newName", "orgCode");
		outConfigTable.put("ORG_NAME", "newName", "orgName");
		outConfigTable.put("STATE_CODE", "newName", "stateCode");
		outConfigTable.put("CREATED_BY_CODE", "newName", "createdByCode");
		outConfigTable.put("CREATED_BY_NAME", "newName", "createdByName");
		outConfigTable.put("CREATED_DATE", "newName", "createdDate");
		outConfigTable.put("LAST_MODIFIED_BY_CODE", "newName", "lastModifiedByCode");
		outConfigTable.put("LAST_MODIFIED_BY_NAME", "newName", "lastModifiedByName");
		outConfigTable.put("LAST_MODIFIED_DATE", "newName", "lastModifiedDate");


	}



	@Override
	public Object func(Map<String, Object> inputMap) {
		inputMap.putAll(top.cardone.context.util.MapUtils.newHashMap(inputMap, inputConfigTable));
		Page<Map<String, Object>> departmentPage = ApplicationContextHolder.getBean(DepartmentService.class).page(inputMap);
		List<Map<String, Object>> newContent = ListUtils.newArrayList(departmentPage.getContent(), outConfigTable);
		return ApplicationContextHolder.getBean(PageSupport.class).newMap(newContent, inputMap, departmentPage.getTotalElements());
	}
}