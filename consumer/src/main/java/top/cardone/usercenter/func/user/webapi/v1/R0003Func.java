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
 * 用户 - 查询分页
 */
@Component("/web-api/v1/usercenter/user/r0003.json")
public class R0003Func implements Func1<Object, Map<String, Object>> {
    private Table<String, String, String> inputConfigTable;
    private Table<String, String, String> outConfigTable;

    public R0003Func() {
        inputConfigTable = HashBasedTable.create();
		inputConfigTable.put("userCode", "funcBeanId", "escapeSqlFunc");
        outConfigTable = HashBasedTable.create();
		outConfigTable.put("USER_CODE", "newName", "userCode");
		outConfigTable.put("USER_ID", "newName", "userId");
		outConfigTable.put("NAME", "newName", "name");
		outConfigTable.put("DEPARTMENT_CODE", "newName", "departmentCode");
		outConfigTable.put("DEPARTMENT_NAME", "newName", "departmentName");
		outConfigTable.put("LAST_MODIFIED_BY_CODE", "newName", "lastModifiedByCode");
		outConfigTable.put("LAST_MODIFIED_DATE", "newName", "lastModifiedDate");
		outConfigTable.put("LAST_MODIFIED_BY_NAME", "newName", "lastModifiedByName");
		outConfigTable.put("SEX_NAME", "newName", "sexName");
		outConfigTable.put("CREATED_BY_NAME", "newName", "createdByName");
		outConfigTable.put("CREATED_DATE", "newName", "createdDate");
		outConfigTable.put("CREATED_BY_CODE", "newName", "createdByCode");
    }

    @Override
    public Object func(Map<String, Object> inputMap) {
        inputMap.putAll(top.cardone.context.util.MapUtils.newHashMap(inputMap, inputConfigTable));

        Page<Map<String, Object>> userPage = ApplicationContextHolder.getBean(UserService.class).page(inputMap);

        List<Map<String, Object>> newContent = top.cardone.context.util.ListUtils.newArrayList(userPage.getContent(), outConfigTable);

        return ApplicationContextHolder.getBean(PageSupport.class).newMap(newContent, inputMap, userPage.getTotalElements());
    }
}