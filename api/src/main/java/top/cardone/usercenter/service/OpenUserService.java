package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.cache.Caches;
import top.cardone.context.annotation.Event;
import top.cardone.context.annotation.Events;
import top.cardone.context.event.SimpleErrorEvent;
import top.cardone.context.event.SimpleEvent;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 开放用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.OpenUserService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface OpenUserService extends PageService {
    /**
     * 查询开放用户对象
     *
     * @param findOne 开放用户标识
     * @return 开放用户对象
     */
    Map<String, Object> findOneByOpenUserId(Map<String, Object> findOne);
	
    /**
     * 查询开放用户对象
     *
     * @param findOne 开放用户标识
     * @return 开放用户对象
     */
    @Cacheable(key = Caches.KEY_1)
    default Map<String, Object> findOneByOpenUserIdCache(Map<String, Object> findOne) {
        return this.findOneByOpenUserId(findOne);
    }
}