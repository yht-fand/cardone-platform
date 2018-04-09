package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.context.annotation.Event;
import top.cardone.context.annotation.Events;
import top.cardone.context.event.SimpleErrorEvent;
import top.cardone.context.event.SimpleEvent;
import top.cardone.data.service.PageService;

import java.util.Map;

/**
 * 组织服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.OrgService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface OrgService extends PageService {
    /**
     * 查询组织对象
     *
     * @param findOne 组织标识
     * @return 组织对象
     */
    Map<String, Object> findOneByOrgId(Map<String, Object> findOne);

    /**
     * 查询组织对象
     *
     * @param findOne 组织标识
     * @return 组织对象
     */
    @Cacheable
    default Map<String, Object> findOneByOrgIdCache(Map<String, Object> findOne) {
        return this.findOneByOrgId(findOne);
    }
}