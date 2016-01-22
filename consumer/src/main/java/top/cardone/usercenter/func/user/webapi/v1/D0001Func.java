package top.cardone.usercenter.func.user.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.UserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 用户 - 删除
 */
@Component("/web-api/v1/configuration/user/d0001.json")
public class D0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(UserService.class).delete(map);
    }
}