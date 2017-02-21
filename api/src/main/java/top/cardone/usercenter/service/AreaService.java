package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 地区服务
 *
 * @author yao hai tao
 */
public interface AreaService extends PageService {
    /**
     * @see top.cardone.usercenter.service.AreaService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.AreaService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.AreaService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.AreaService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.AreaService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.AreaService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.AreaService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.AreaService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.AreaService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.AreaService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.AreaService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.AreaService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.AreaService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.AreaService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.AreaService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.AreaService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.AreaService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.AreaService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.AreaService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.AreaService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    Integer saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.AreaService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.AreaService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

    /**
     * @see top.cardone.usercenter.service.AreaService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.AreaService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);

    /**
     * 查询地区对象
     *
     * @param findOne 地区标识
     * @return 地区对象
     */
    Map<String, Object> findOneByAreaId(Map<String, Object> findOne);

    /**
     * 查询地区下拉列表
     *
     * @param findList 关键字
     * @return 地区下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}