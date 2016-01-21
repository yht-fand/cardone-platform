package top.cardone.usercenter.func.department.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 部门 - 复合
 */
@Component("/web-api/v1/configuration/department/m0001.json")
public class M0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(DepartmentService.class).findOne(map);
    }
}
