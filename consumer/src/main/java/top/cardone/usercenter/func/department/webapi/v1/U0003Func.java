package top.cardone.usercenter.func.department.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 部门 - 修改
 */
@Component("/web-api/v1/configuration/department/u0003.json")
public class U0003Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(DepartmentService.class).update(map);
    }
}
