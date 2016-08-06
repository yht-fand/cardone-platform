package top.cardone.usercenter.func.user.webapi.v1;

import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import top.cardone.core.CodeException;
import top.cardone.usercenter.service.UserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 用户 - 删除
 */
@Component("/web-api/v1/usercenter/user/d0001.json")
public class D0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        if(StringUtils.isBlank(MapUtils.getString(map,"ids"))){
            throw new CodeException("删除用户的用户标识不能为空！");
        }
        return ApplicationContextHolder.getBean(UserService.class).deleteByIds(map);
    }
}
