package top.cardone.usercenter.func.userDepartment.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.UserDepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 用户与部门 - 修改
 */
@Component("/web-api/v1/configuration/userDepartment/u0001.json")
public class U0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(UserDepartmentService.class).update(map);
    }
}