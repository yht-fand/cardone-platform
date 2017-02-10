package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 用户与组织服务
 *
 * @author yao hai tao
 */
public interface UserOrgService extends PageService {
	/**
     * @see top.cardone.usercenter.service.UserOrgService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int deleteCache(Object delete);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int deleteAllCache();

	/**
     * @see top.cardone.usercenter.service.UserOrgService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int deleteByIdsCache(Object ids);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int insertCache(Object insert);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int insertByNotExistsCache(Object insert);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserOrgService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    Integer saveCache(Object save);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int updateCache(Object update);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

	/**
     * @see top.cardone.usercenter.service.UserOrgService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserOrgService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);
	
    /**
     * 查询用户与组织对象
     *
     * @param findOne 用户与组织标识
     * @return 用户与组织对象
     */
    Map<String, Object> findOneByUserOrgId(Map<String, Object> findOne);
}