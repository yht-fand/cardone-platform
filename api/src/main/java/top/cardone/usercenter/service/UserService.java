package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 用户服务
 *
 * @author yao hai tao
 */
public interface UserService extends PageService {
    /**
     * @see top.cardone.usercenter.service.UserService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.UserService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.UserService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.UserService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.UserService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.UserService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.UserService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.UserService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.UserService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.UserService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.UserService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.UserService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.UserService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.UserService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.UserService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.UserService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.UserService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.UserService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.UserService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    Integer saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.UserService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.UserService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

    /**
     * @see top.cardone.usercenter.service.UserService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);

    /**
     * @see top.cardone.usercenter.service.UserService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserService", allEntries = true)
    int updateByUserIdsCache(Map<String, Object> update);

    /**
     * 查询对象
     *
     * @param findOneMap 用户标识
     * @return 对象用户对象
     */
    Map<String, Object> findOneByUserId(Map<String, Object> findOneMap);

    /**
     * 查询对象
     *
     * @param findOneMap 用户标识
     * @return 对象用户对象
     */
    @Transactional(readOnly = true)
    @Cacheable(value = "top.cardone.usercenter.service.UserService", key = Caches.KEY_1)
    default Map<String, Object> findOneByUserIdCache(Map<String, Object> findOneMap) {
        return this.findOneByUserId(findOneMap);
    }

    /**
     * 查询用户下拉列表
     *
     * @param findList 关键字
     * @return 用户列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}