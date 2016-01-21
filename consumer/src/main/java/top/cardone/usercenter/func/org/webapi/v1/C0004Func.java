package top.cardone.usercenter.func.org.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.OrgService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 组织 - 创建
 */
@Component("/web-api/v1/configuration/org/c0004.json")
public class C0004Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(OrgService.class).save(map);
    }
}
