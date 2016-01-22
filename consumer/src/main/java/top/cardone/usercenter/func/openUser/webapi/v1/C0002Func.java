package top.cardone.usercenter.func.openUser.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.OpenUserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 开放用户 - 批量创建
 */
@Component("/web-api/v1/configuration/openUser/c0002.json")
public class C0002Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(OpenUserService.class).save(map);
    }
}
