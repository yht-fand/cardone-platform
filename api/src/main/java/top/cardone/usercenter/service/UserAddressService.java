package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 用户与地址服务
 *
 * @author yao hai tao
 */
public interface UserAddressService extends PageService {
	/**
     * @see top.cardone.usercenter.service.UserAddressService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int deleteCache(Object delete);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int deleteAllCache();

	/**
     * @see top.cardone.usercenter.service.UserAddressService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int deleteByIdsCache(Object ids);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int insertCache(Object insert);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int insertByNotExistsCache(Object insert);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserAddressService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    Integer saveCache(Object save);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int updateCache(Object update);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

	/**
     * @see top.cardone.usercenter.service.UserAddressService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserAddressService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);
	
    /**
     * 查询用户与地址对象
     *
     * @param findOne 用户与地址标识
     * @return 用户与地址对象
     */
    Map<String, Object> findOneByUserAddressId(Map<String, Object> findOne);
}