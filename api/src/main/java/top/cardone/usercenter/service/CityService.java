package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 城市服务
 *
 * @author yao hai tao
 */
public interface CityService extends PageService {
    /**
     * @see top.cardone.usercenter.service.CityService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.CityService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.CityService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.CityService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.CityService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.CityService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.CityService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.CityService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.CityService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.CityService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.CityService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.CityService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.CityService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.CityService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.CityService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.CityService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.CityService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.CityService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.CityService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.CityService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.CityService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.CityService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

    /**
     * @see top.cardone.usercenter.service.CityService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.CityService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);

    /**
     * 查询城市对象
     *
     * @param findOne 城市标识
     * @return 城市对象
     */
    Map<String, Object> findOneByCityId(Map<String, Object> findOne);

    /**
     * 查询城市下拉列表
     *
     * @param findList 关键字
     * @return 城市下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}