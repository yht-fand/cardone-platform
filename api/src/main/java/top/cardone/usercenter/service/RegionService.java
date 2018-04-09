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
 * 区域服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.RegionService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface RegionService extends PageService {
    /**
     * 查询区域对象
     *
     * @param findOne 区域标识
     * @return 区域对象
     */
    Map<String, Object> findOneByRegionId(Map<String, Object> findOne);

    /**
     * 查询区域对象
     *
     * @param findOne 区域标识
     * @return 区域对象
     */
    @Cacheable
    default Map<String, Object> findOneByRegionIdCache(Map<String, Object> findOne) {
        return this.findOneByRegionId(findOne);
    }
}