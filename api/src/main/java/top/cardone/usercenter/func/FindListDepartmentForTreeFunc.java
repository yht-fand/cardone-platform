package top.cardone.usercenter.func;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import lombok.Setter;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.core.util.func.Func1;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.usercenter.service.UserService;

import java.util.List;
import java.util.Map;

/**
 * Created by cardone-home-001 on 2016/4/25.
 */
public class FindListDepartmentForTreeFunc implements Func1<List<Map<String, Object>>, Map<String, Object>> {
    @Setter
    private String departmentCodeKeyName = "departmentCode";

    @Override
    public List<Map<String, Object>> func(Map<String, Object> params) {
        String departmentCode = MapUtils.getString(params, departmentCodeKeyName);

        if (StringUtils.isBlank(departmentCode)) {
            Map<String, Object> inputs = Maps.newHashMap();

            inputs.put("userCode", SecurityUtils.getSubject().getPrincipal());
            inputs.put("object_id", "departmentCode");

            departmentCode = ApplicationContextHolder.getBean(UserService.class).readOneCache(String.class, inputs);
        }

        List<Map<String, Object>> departmentList = ApplicationContextHolder.getBean(DepartmentService.class).findListByDepartmentCode(departmentCode);

        List<Map<String, Object>> newDepartmentList = Lists.newArrayList();

        for (Map<String, Object> department : departmentList) {
            Map<String, Object> returnMap = Maps.newHashMap();

            returnMap.put("id", MapUtils.getString(department, "DEPARTMENT_CODE", ""));
            returnMap.put("name", MapUtils.getString(department, "NAME", ""));
            returnMap.put("pId", MapUtils.getString(department, "PARENT_CODE", ""));

            newDepartmentList.add(returnMap);
        }

        return newDepartmentList;
    }
}