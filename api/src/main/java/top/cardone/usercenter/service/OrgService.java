package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 组织服务
 *
 * @author yao hai tao
 */
public interface OrgService extends PageService {
    /**
     * @see top.cardone.usercenter.service.OrgService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.OrgService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.OrgService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.OrgService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.OrgService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.OrgService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.OrgService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.OrgService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.OrgService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.OrgService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.OrgService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.OrgService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.OrgService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.OrgService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.OrgService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.OrgService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.OrgService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.OrgService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.OrgService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.OrgService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    Integer saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.OrgService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.OrgService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.OrgService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

    /**
     * 查询组织对象
     *
     * @param findOne 组织标识
     * @return 组织对象
     */
    Map<String, Object> findOneByOrgId(Map<String, Object> findOne);

    List<Map<String,Object>> findListByOrgCode(String orgCode);
}