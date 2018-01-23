package top.cardone.usercenter.func;

import com.google.common.collect.Maps;
import lombok.Synchronized;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.core.util.func.Func1;
import top.cardone.usercenter.service.UserService;

import java.util.Map;

/**
 * Created by Administrator on 2016/7/11.
 */
public class ReadOneUserDepartmentCodeByUserCodeFunc implements Func1<String, String> {
    @Override
    @Synchronized
    public String func(String userCode) {
        Map<String, Object> readOne = Maps.newHashMap();

        readOne.put("userCode", userCode);
        readOne.put("stateCode", "1");
        readOne.put("dataStateCode", "1");

        Map<String, Object> user = ApplicationContextHolder.getBean(UserService.class).findOneByUserId(readOne);

        return MapUtils.getString(user, "DEPARTMENT_CODE");
    }
}
