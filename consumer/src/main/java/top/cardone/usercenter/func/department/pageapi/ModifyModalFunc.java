package top.cardone.usercenter.func.department.pageapi;

import com.google.common.collect.HashBasedTable;
import com.google.common.collect.Table;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.core.CodeException;
import top.cardone.core.util.func.Func1;
import top.cardone.usercenter.service.DepartmentService;

import java.util.Map;

/**
 * 部门 - 修改
 */
@Component("/usercenter/department/modifyModal.json")
public class ModifyModalFunc implements Func1<Object, Map<String, Object>> {
    private Table<String, String, String> outConfigTable;
	@Override
	public Object func(Map<String, Object> inputMap) {
		String departmentId = MapUtils.getString(inputMap, "departmentId");
		if (StringUtils.isBlank(departmentId)) {
			throw new CodeException("部门标识为空!");
		}
		Map<String, Object> departmentMap = ApplicationContextHolder.getBean(DepartmentService.class).findOneByDepartmentId(departmentId);

		if(CollectionUtils.isEmpty(departmentMap)){
			throw new CodeException("部门数据不存在");
		}
		Map<String, Object> newDepartmentDTO = top.cardone.context.util.MapUtils.newHashMap(departmentMap, outConfigTable);
		return newDepartmentDTO;
	}

    public ModifyModalFunc() {
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


}