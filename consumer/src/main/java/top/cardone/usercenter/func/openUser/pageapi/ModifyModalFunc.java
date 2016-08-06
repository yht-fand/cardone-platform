package top.cardone.usercenter.func.openUser.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.OpenUserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.context.util.StringUtils;
import top.cardone.core.CodeException;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 开放用户 - 修改
 */
@Component("/usercenter/openUser/modifyModal.json")
public class ModifyModalFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);	

        Map<String, Object> openUserMap = ApplicationContextHolder.getBean(OpenUserService.class).findOneByOpenUserId(inputMap.get("openUserId"));

        return openUserMap;
    }

    private void validate(Map<String, Object> inputMap) {
        String openUserId = MapUtils.getString(inputMap, "openUserId");

        if (StringUtils.isBlank(openUserId)) {
            throw new CodeException("开放用户标识不能为空值!");
        }
    }
}