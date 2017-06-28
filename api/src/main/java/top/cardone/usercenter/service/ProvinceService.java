package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 省份服务
 *
 * @author yao hai tao
 */
public interface ProvinceService extends PageService {
    /**
     * @see top.cardone.usercenter.service.ProvinceService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.ProvinceService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.ProvinceService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

    /**
     * @see top.cardone.usercenter.service.ProvinceService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.ProvinceService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);

    /**
     * 查询省份对象
     *
     * @param findOne 省份标识
     * @return 省份对象
     */
    Map<String, Object> findOneByProvinceId(Map<String, Object> findOne);

    /**
     * 查询省份下拉列表
     *
     * @param findList 关键字
     * @return 省份下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}