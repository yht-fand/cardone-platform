package top.cardone.usercenter.action

import top.cardone.cache.Cache
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.util.action.Action1

class EvictUserCacheAction implements Action1<String> {
    @Override
    void action(String userCode) {
        ApplicationContextHolder.getBean(Cache.class).evict("top.cardone.authority.service.UserPermissionService",
                "readListPermissionCodeByUserCodeCache(" + userCode + ")")

        ApplicationContextHolder.getBean(Cache.class).evict("top.cardone.authority.service.UserRoleService",
                "readListRoleCodeByUserCodeCache(" + userCode + ")")

        ApplicationContextHolder.getBean(Cache.class).evict("com.xa.rdmp.authority.func.ReadListPermissionCodeForMainSiteFunc",
                userCode)

        ApplicationContextHolder.getBean(Cache.class).evict("top.cardone.authority.service.ReadListRoleCodeForMainSiteFunc",
                userCode)

        ApplicationContextHolder.getBean(Cache.class).evict("top.cardone.configuration.service.NavigationService",
                "findListForTreeCache({userCode=" + userCode + ", notId=notId, appendConfigValueKey=select})")
    }
}