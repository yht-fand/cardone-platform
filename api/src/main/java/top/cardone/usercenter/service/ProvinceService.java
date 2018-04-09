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
 * 省份服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.ProvinceService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface ProvinceService extends PageService {
    /**
     * 查询省份对象
     *
     * @param findOne 省份标识
     * @return 省份对象
     */
    Map<String, Object> findOneByProvinceId(Map<String, Object> findOne);

    /**
     * 查询省份对象
     *
     * @param findOne 省份标识
     * @return 省份对象
     */
    @Cacheable
    default Map<String, Object> findOneByProvinceIdCache(Map<String, Object> findOne) {
        return this.findOneByProvinceId(findOne);
    }
}