package top.cardone.usercenter.func;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import lombok.Setter;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.core.util.func.Func1;
import top.cardone.usercenter.service.OrgService;
import top.cardone.usercenter.service.UserService;

import java.util.List;
import java.util.Map;

/**
 * Created by cardone-home-001 on 2016/4/25.
 */
public class FindListOrgForTreeFunc implements Func1<List<Map<String, Object>>, Map<String, Object>> {
    @Setter
    private String orgCodeKeyName = "orgCode";

    @Override
    public List<Map<String, Object>> func(Map<String, Object> params) {
        String orgCode = MapUtils.getString(params, orgCodeKeyName);

        if (StringUtils.isBlank(orgCode)) {
            Map<String, Object> inputs = Maps.newHashMap();

            inputs.put("userCode", SecurityUtils.getSubject().getPrincipal());
            inputs.put("object_id", "orgCode");

            orgCode = ApplicationContextHolder.getBean(UserService.class).readOneCache(String.class, inputs);
        }

        List<Map<String, Object>> orgList = ApplicationContextHolder.getBean(OrgService.class).findListByOrgCode(orgCode);

        List<Map<String, Object>> newOrgList = Lists.newArrayList();

        for (Map<String, Object> org : orgList) {
            Map<String, Object> returnMap = Maps.newHashMap();

            returnMap.put("id", MapUtils.getString(org, "ORG_CODE", ""));
            returnMap.put("name", MapUtils.getString(org, "NAME", ""));
            returnMap.put("pId", MapUtils.getString(org, "PARENT_CODE", ""));

            newOrgList.add(returnMap);
        }

        return newOrgList;
    }
}