package top.cardone.usercenter.func.userDepartment.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.UserDepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.context.util.StringUtils;
import top.cardone.core.CodeException;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 用户与部门 - 修改
 */
@Component("/usercenter/userDepartment/modifyModal.json")
public class ModifyModalFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);	

        Map<String, Object> userDepartmentMap = ApplicationContextHolder.getBean(UserDepartmentService.class).findOneByUserDepartmentId(inputMap.get("userDepartmentId"));

        return userDepartmentMap;
    }

    private void validate(Map<String, Object> inputMap) {
        String userDepartmentId = MapUtils.getString(inputMap, "userDepartmentId");

        if (StringUtils.isBlank(userDepartmentId)) {
            throw new CodeException("用户与部门标识不能为空值!");
        }
    }
}