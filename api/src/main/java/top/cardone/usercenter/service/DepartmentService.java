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
 * 部门服务
 *
 * @author yao hai tao
 */
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.DepartmentService"})
public interface DepartmentService extends PageService {
    /**
     * @see top.cardone.usercenter.service.DepartmentService#page
     */
    @Cacheable(key = Caches.KEY_1)
    @Events({@Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    Page<Map<String, Object>> pageCache(Object page);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#page
     */
    @Cacheable(key = Caches.KEY_2)
    @Events({@Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    <P> Page<P> pageCache(Class<P> mappedClass, Object page);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#findList
     */
    @Cacheable(key = Caches.KEY_2)
    @Events({@Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    <P> List<P> findListCache(Class<P> mappedClass, Object findList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#findOne
     */
    @Cacheable(key = Caches.KEY_2)
    @Events({@Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    <P> P findOneCache(Class<P> mappedClass, Object findOne);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#readList
     */
    @Cacheable(key = Caches.KEY_2)
    @Events({@Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    <R> List<R> readListCache(Class<R> requiredType, Object readList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#readOne
     */
    @Cacheable(key = Caches.KEY_2)
    @Events({@Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    <R> R readOneCache(Class<R> requiredType, Object readOne);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#delete
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int deleteCache(Object delete);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#deleteAll
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int deleteAllCache();

    /**
     * @see top.cardone.usercenter.service.DepartmentService#deleteByIds
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc"),
            @Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    int deleteByIdsCache(Object ids);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#deleteList
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int[] deleteListCache(List<Object> deleteList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#findList
     */
    @Cacheable(key = Caches.KEY_1)
    List<Map<String, Object>> findListCache(Object findList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#findOne
     */
    @Cacheable(key = Caches.KEY_1)
    Map<String, Object> findOneCache(Object findOne);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#insert
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int insertCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#insertByNotExists
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int insertByNotExistsCache(Object insert);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#insertList
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int[] insertListCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#insertListByNotExists
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int[] insertListByNotExistsCache(List<Object> insertList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#readList
     */
    @Cacheable(key = Caches.KEY_1)
    List<Object> readListCache(Object readList);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#readOne
     */
    @Cacheable(key = Caches.KEY_1)
    Object readOneCache(Object readOne);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#save
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int saveCache(Object save);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#update
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    int updateCache(Object update);

    /**
     * @see top.cardone.usercenter.service.DepartmentService#updateList
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    @Transactional
    default int[] updateListCache(List<Object> updateList) {
        return this.updateList(updateList);
    }

    /**
     * @see top.cardone.usercenter.service.DepartmentService#saveList
     */
    @CacheEvict(allEntries = true)
    @Events({@Event(applicationEvent = SimpleEvent.class, configs = "generateDepartmentTreeFunc")})
    @Transactional
    default int[][] saveListCache(List<Object> saveList) {
        return this.saveList(saveList);
    }

    /**
     * 查询对象
     *
     * @param findOne
     * @return 部门对象
     */
    Map<String, Object> findOneByDepartmentId(Map<String, Object> findOne);

    /**
     * 查询部门列表
     *
     * @param deptCode 部门代码
     * @return
     */
    List<Map<String, Object>> findListByDepartmentCode(String deptCode);

    /**
     * 查询部门下拉列表
     *
     * @param findList 关键字
     * @return 部门下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);

    /**
     * 查询部门树
     *
     * @param findList 关键字
     * @return
     */
    @Events({@Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    List<Map<String, Object>> findListForTree(Map<String, Object> findList);

    /**
     * 同步旧数据
     */
    @Events({@Event(applicationEvent = SimpleErrorEvent.class, configs = {"insertOperateLogAction"}),
            @Event(applicationEvent = SimpleEvent.class, configs = {"insertOperateLogAction"})})
    void syncOldData();
}