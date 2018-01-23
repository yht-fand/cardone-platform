package top.cardone.usercenter.func;

import com.google.common.collect.Maps;
import lombok.Synchronized;
import org.apache.commons.lang3.StringUtils;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.security.shiro.func.ReadPrincipalFunc;
import top.cardone.usercenter.service.UserService;

import java.util.Map;

/**
 * Created by Administrator on 2016/7/11.
 */
public class ReadOneUserIdFunc extends ReadPrincipalFunc {
    @Override
    @Synchronized
    public String func() {
        String userCode = super.func();

        if (StringUtils.isBlank(userCode)) {
            return null;
        }

        Map<String, Object> readOneInputs = Maps.newHashMap();

        readOneInputs.put("userCode", userCode);
        readOneInputs.put("object_id", "userId");

        return ApplicationContextHolder.getBean(UserService.class).readOneCache(String.class, readOneInputs);
    }

    @Override
    @Synchronized
    public String func(Object object) {
        return this.func();
    }
}
