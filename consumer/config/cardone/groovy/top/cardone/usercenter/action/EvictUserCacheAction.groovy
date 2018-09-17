package top.cardone.usercenter.action

import org.apache.commons.lang.StringUtils
import top.cardone.authority.service.UserPermissionService
import top.cardone.cache.Cache
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.util.action.Action1

class EvictUserCacheAction implements Action1<String> {
    @Override
    void action(String userCode) {
        if (StringUtils.isBlank(userCode)) {
            return
        }

        ApplicationContextHolder.getBean(Cache.class).evict("top.cardone.authority.service.UserPermissionService",
                "readListPermissionCodeByUserCodeCache(" + userCode + ")")

        ApplicationContextHolder.getBean(Cache.class).evict("top.cardone.authority.service.UserRoleService",
                "readListRoleCodeByUserCodeCache(" + userCode + ")")

        ApplicationContextHolder.getBean(Cache.class).evict("com.xa.rdmp.authority.func.ReadListPermissionCodeForMainSiteFunc",
                userCode)

        ApplicationContextHolder.getBean(Cache.class).evict("com.xa.rdmp.authority.func.ReadListRoleCodeForMainSiteFunc",
                userCode)

        ApplicationContextHolder.getBean(Cache.class).evict("top.cardone.configuration.service.NavigationService",
                "findListForTreeCache(" +
                        org.springframework.util.StringUtils.arrayToCommaDelimitedString(["userCode": userCode, "notId": "notId", "appendConfigValueKey": "select"]) +
                        ")")

//        ApplicationContextHolder.getBean(Cache.class).clear("top.cardone.configuration.service.NavigationService")

        ApplicationContextHolder.getBean(Cache.class).evict(UserPermissionService.class.getName(), "navigation:view:," + userCode)

        ApplicationContextHolder.getBean(Cache.class).evict(UserPermissionService.class.getName(), "site:view:," + userCode)

        ApplicationContextHolder.getBean(Cache.class).evict(UserPermissionService.class.getName(), "department:view:," + userCode)

        ApplicationContextHolder.getBean(Cache.class).evict(UserPermissionService.class.getName(), "user:view:," + userCode)
    }
}