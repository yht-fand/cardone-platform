package top.cardone.usercenter.func.org.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.OrgService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.context.util.StringUtils;
import top.cardone.core.CodeException;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 组织 - 修改
 */
@Component("/usercenter/org/modifyModal.json")
public class ModifyModalFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);	

        Map<String, Object> orgMap = ApplicationContextHolder.getBean(OrgService.class).findOneByOrgId(inputMap.get("orgId"));

        return orgMap;
    }

    private void validate(Map<String, Object> inputMap) {
        String orgId = MapUtils.getString(inputMap, "orgId");

        if (StringUtils.isBlank(orgId)) {
            throw new CodeException("组织标识不能为空值!");
        }
    }
}