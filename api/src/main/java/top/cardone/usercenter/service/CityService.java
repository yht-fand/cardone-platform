package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.cache.Caches;
import top.cardone.context.annotation.Event;
import top.cardone.context.annotation.Events;
import top.cardone.context.event.SimpleErrorEvent;
import top.cardone.context.event.SimpleEvent;
import top.cardone.data.service.PageService;

import java.util.Map;

/**
 * 城市服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.CityService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface CityService extends PageService {
    /**
     * 查询城市对象
     *
     * @param findOne 城市标识
     * @return 城市对象
     */
    Map<String, Object> findOneByCityId(Map<String, Object> findOne);

    /**
     * 查询城市对象
     *
     * @param findOne 城市标识
     * @return 城市对象
     */
    @Cacheable
    default Map<String, Object> findOneByCityIdCache(Map<String, Object> findOne) {
        return this.findOneByCityId(findOne);
    }
}