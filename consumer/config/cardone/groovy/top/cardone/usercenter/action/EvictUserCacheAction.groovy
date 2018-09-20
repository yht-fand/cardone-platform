package top.cardone.usercenter.action

import com.google.gson.Gson
import org.apache.commons.lang.StringUtils
import org.apache.shiro.util.CollectionUtils
import org.springframework.http.HttpEntity
import org.springframework.http.HttpHeaders
import org.springframework.http.MediaType
import org.springframework.web.client.RestTemplate
import top.cardone.authority.service.UserPermissionService
import top.cardone.cache.Cache
import top.cardone.configuration.service.DictionaryService
import top.cardone.configuration.service.SiteService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.util.action.Action1
import top.cardone.core.util.action.Action2

class EvictUserCacheAction implements Action1<String>, Action2<String, List<String>> {
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

        ApplicationContextHolder.getBean(Cache.class).evict(UserPermissionService.class.getName(), "navigation:view:," + userCode)

        ApplicationContextHolder.getBean(Cache.class).evict(UserPermissionService.class.getName(), "site:view:," + userCode)

        ApplicationContextHolder.getBean(Cache.class).evict(UserPermissionService.class.getName(), "department:view:," + userCode)

        ApplicationContextHolder.getBean(Cache.class).evict(UserPermissionService.class.getName(), "user:view:," + userCode)

        ApplicationContextHolder.getBean(Cache.class).evict("top.cardone.configuration.service.NavigationService",
                "findListForTreeCache(" +
                        org.springframework.util.StringUtils.arrayToCommaDelimitedString(["userCode": userCode, "notId": "notId", "appendConfigValueKey": "select"]) +
                        ")")
    }

    @Override
    void action(String userCode, List<String> urls) {
        this.action(userCode)

        def readOneDictionaryValue = ["dictionaryTypeCode": "siteType", "dictionaryCode": "localSiteCode", "object_id": "value"]

        def siteCode = ApplicationContextHolder.getBean(DictionaryService.class).readOneCache(readOneDictionaryValue)

        if (org.apache.commons.lang3.StringUtils.isBlank(siteCode) || "localSiteCode".equals(siteCode)) {
            return
        }

        def sites = ApplicationContextHolder.getBean(SiteService.class).findList(["stateCode": "1"])

        if (CollectionUtils.isEmpty(sites)) {
            return
        }

        def newUrls = []

        if (!CollectionUtils.isEmpty(urls)) {
            newUrls.addAll(urls)
        }

        def siteUrls = []

        for (def site : sites) {
            if (StringUtils.isBlank(site.url)) {
                continue
            }

            if (newUrls.contains(site.url)) {
                continue
            }

            newUrls.add(site.url)

            if (siteCode.equals(site.site_code)) {
                continue
            }

            siteUrls.add(site.url)
        }

        if (org.springframework.util.CollectionUtils.isEmpty(siteUrls)) {
            return
        }

        String input = ApplicationContextHolder.getBean(Gson.class).toJson([
                "userCode": userCode,
                "urls"    : newUrls
        ])

        def headers = new HttpHeaders()

        headers.setContentType(MediaType.APPLICATION_JSON_UTF8)
        headers.set("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE)

        def httpEntity = new HttpEntity<>(input, headers)

        for (def siteUrl : siteUrls) {
            if (StringUtils.isBlank(siteUrl)) {
                continue
            }

            def url = org.apache.commons.lang3.StringUtils.join(siteUrl, "/xa-rdmp/v1/cache/clearByUserCode")

//            url = "http://127.0.0.1/xa-rdmp/v1/cache/clearByUserCode"

            try {
                def json = ApplicationContextHolder.getBean(RestTemplate.class).postForObject(url, httpEntity, String.class)
            } catch (Exception ex) {
            }
        }
    }
}