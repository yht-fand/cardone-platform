package top.cardone.usercenter.func;

import com.google.common.collect.Lists;
import lombok.Synchronized;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.core.util.func.Func1;
import top.cardone.usercenter.service.DepartmentService;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/7/11.
 */
public class ReadListDepartmentCodeTreeByDepartmentCodeFunc implements Func1<List<String>, String> {
    @Override
    @Synchronized
    public List<String> func(String departmentCode) {
        List<Map<String, Object>> departmentList = ApplicationContextHolder.getBean(DepartmentService.class).findListByDepartmentCodeCache(departmentCode);

        List<String> departmentCodeList = Lists.newArrayList();

        for (Map<String, Object> department : departmentList) {
            departmentCodeList.add(MapUtils.getString(department, "DEPARTMENT_CODE"));
        }

        return departmentCodeList;
    }
}
