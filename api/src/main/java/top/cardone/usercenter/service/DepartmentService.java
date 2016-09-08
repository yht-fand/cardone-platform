package top.cardone.usercenter.service;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import top.cardone.cache.Caches;
import top.cardone.context.annotation.Func;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 部门服务
 *
 * @author yao hai tao
 */
public interface DepartmentService extends PageService {
    /**
     * @see top.cardone.usercenter.service.DepartmentService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_1)
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#page
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_2)
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_2)
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_2)
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_2)
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_2)
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#delete
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#deleteAll
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.DepartmentService#deleteByIds
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#deleteList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#findList
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#findOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#insert
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#insertByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#insertList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int[] insertListCache(List<Object> insertList);


    /**
     * @see top.cardone.usercenter.service.DepartmentService#insertListByNotExists
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#readList
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#readOne
     */
    @Cacheable(value = "top.cardone.usercenter.service.DepartmentService", key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#save
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    Integer saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#update
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#updateList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int[] updateListCache(List<Object> updateList);


    /**
     * @see top.cardone.usercenter.service.DepartmentService#saveList
     */
    @CacheEvict(value = "top.cardone.usercenter.service.DepartmentService", allEntries = true)
    @Func(beanId = "funcAnnotationFunc", value = "{\"afterBeanIds\": \"generateDepartmentTreeFunc\"}")
    int[][] saveListCache(List<Object> saveList);

    /**
     * 查询对象
     *
     * @param findOneMap
     * @return 部门对象
     */
    Map<String, Object> findOneByDepartmentId(Map<String, Object> findOneMap);

    /**
     * 查询部门列表
     *
     * @param deptCode 部门代码
     * @return
     */
    List<Map<String, Object>> findListByDepartmentCode(String deptCode);

    /**
     * 同步旧数据
     */
    void syncOldData();

    /**
     * 生成树信息
     */
    void generateTreeInfo();
}