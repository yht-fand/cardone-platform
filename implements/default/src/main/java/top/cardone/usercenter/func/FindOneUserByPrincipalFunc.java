package top.cardone.usercenter.func;

import com.google.common.collect.Maps;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.StringUtils;
import top.cardone.core.util.func.Func0;
import top.cardone.usercenter.service.UserService;

import java.util.Map;

/**
 * Created by Administrator on 2016/7/11.
 */
public class FindOneUserByPrincipalFunc implements Func0<Map<String, Object>> {
    @Override
    public Map<String, Object> func() {
        String principal = (String) ApplicationContextHolder.getBean(Func0.class, "readPrincipalFunc").func();

        if (StringUtils.isBlank(principal)) {
            return null;
        }

        Map<String, Object> findOneInputs = Maps.newHashMap();

        findOneInputs.put("userCode", principal);

        return ApplicationContextHolder.getBean(UserService.class).findOneCache(findOneInputs);
    }
}
