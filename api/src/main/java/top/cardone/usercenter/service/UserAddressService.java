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
 * 用户与地址服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.UserAddressService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface UserAddressService extends PageService {
    /**
     * 查询用户与地址对象
     *
     * @param findOne 用户与地址标识
     * @return 用户与地址对象
     */
    Map<String, Object> findOneByUserAddressId(Map<String, Object> findOne);

    /**
     * 查询用户与地址对象
     *
     * @param findOne 用户与地址标识
     * @return 用户与地址对象
     */
    @Cacheable
    default Map<String, Object> findOneByUserAddressIdCache(Map<String, Object> findOne) {
        return this.findOneByUserAddressId(findOne);
    }
}