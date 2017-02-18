package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 用户与部门服务
 *
 * @author yao hai tao
 */
public interface UserDepartmentService extends PageService {
	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int deleteCache(Object delete);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int deleteAllCache();

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int deleteByIdsCache(Object ids);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int[] deleteListCache(List<Object> deleteList);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int insertCache(Object insert);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int insertByNotExistsCache(Object insert);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int[] insertListCache(List<Object> insertList);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int[] insertListByNotExistsCache(List<Object> insertList);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.UserDepartmentService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    Integer saveCache(Object save);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int updateCache(Object update);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int[] updateListCache(List<Object> updateList);

	/**
     * @see top.cardone.usercenter.service.UserDepartmentService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.UserDepartmentService", allEntries = true)
    int[][] saveListCache(List<Object> saveList);
	
    /**
     * 查询用户与部门对象
     *
     * @param findOne 用户与部门标识
     * @return 用户与部门对象
     */
    Map<String, Object> findOneByUserDepartmentId(Map<String, Object> findOne);
	
    /**
     * 查询用户与部门下拉列表
     *
     * @param findList 关键字
     * @return 用户与部门下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}