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
 * 地区服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.AreaService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface AreaService extends PageService {
    /**
     * 查询地区对象
     *
     * @param findOne 地区标识
     * @return 地区对象
     */
    Map<String, Object> findOneByAreaId(Map<String, Object> findOne);

    /**
     * 查询地区对象
     *
     * @param findOne 地区标识
     * @return 地区对象
     */
    @Cacheable
    default Map<String, Object> findOneByAreaIdCache(Map<String, Object> findOne) {
        return this.findOneByAreaId(findOne);
    }
}