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
 * 开放用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.OpenUserService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface OpenUserService extends PageService {
	/**
     * @see OpenUserService#page
     */
    @Cacheable(key = Caches.KEY_1)
    default Page<Map<String, Object>> pageCache(Object page) {
        return this.page(page);
    }

	/**
     * @see OpenUserService#page
     */
    @Cacheable(key = Caches.KEY_2)
    default <P> Page<P> pageCache(Class<P> mappedClass, Object page) {
        return this.page(mappedClass, page);
    }

	/**
     * @see OpenUserService#findList
     */
    @Cacheable(key = Caches.KEY_2)
    default <P> List<P> findListCache(Class<P> mappedClass, Object findList) {
        return this.findList(mappedClass, findList);
    }

	/**
     * @see OpenUserService#findOne
     */
    @Cacheable(key = Caches.KEY_2)
    default <P> P findOneCache(Class<P> mappedClass, Object findOne) {
        return this.findOne(mappedClass, findOne);
    }

	/**
     * @see OpenUserService#readList
     */
    @Cacheable(key = Caches.KEY_2)
    default <R> List<R> readListCache(Class<R> requiredType, Object readList) {
        return this.readList(requiredType, readList);
    }

	/**
     * @see OpenUserService#readOne
     */
    @Cacheable(key = Caches.KEY_2)
    default <R> R readOneCache(Class<R> requiredType, Object readOne) {
        return this.readOne(requiredType, readOne);
    }

	/**
     * @see OpenUserService#delete
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int deleteCache(Object delete) {
        return this.delete(delete);
    }

	/**
     * @see OpenUserService#deleteAll
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int deleteAllCache() {
        return this.deleteAll();
    }

	/**
     * @see OpenUserService#deleteByIds
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int deleteByIdsCache(Object ids) {
        return this.deleteByIds(ids);
    }

	/**
     * @see OpenUserService#deleteList
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] deleteListCache(List<Object> deleteList) {
        return this.deleteList(deleteList);
    }

	/**
     * @see OpenUserService#findList
     */
    @Cacheable(key = Caches.KEY_1)
    default List<Map<String, Object>> findListCache(Object findList) {
        return this.findList(findList);
    }

	/**
     * @see OpenUserService#findOne
     */
    @Cacheable(key = Caches.KEY_1)
    default Map<String, Object> findOneCache(Object findOne) {
        return this.findOne(findOne);
    }

	/**
     * @see OpenUserService#insert
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int insertCache(Object insert) {
        return this.insert(insert);
    }

	/**
     * @see OpenUserService#insertByNotExists
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int insertByNotExistsCache(Object insert) {
        return this.insertByNotExists(insert);
    }

	/**
     * @see OpenUserService#insertList
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] insertListCache(List<Object> insertList) {
        return this.insertList(insertList);
    }

	/**
     * @see OpenUserService#insertListByNotExists
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] insertListByNotExistsCache(List<Object> insertList) {
        return this.insertListByNotExists(insertList);
    }

	/**
     * @see OpenUserService#readList
     */
    @Cacheable(key = Caches.KEY_1)
    default List<Object> readListCache(Object readList) {
        return this.readList(readList);
    }

	/**
     * @see OpenUserService#readOne
     */
    @Cacheable(key = Caches.KEY_1)
    default Object readOneCache(Object readOne) {
        return this.readOne(readOne);
    }

	/**
     * @see OpenUserService#save
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int saveCache(Object save) {
        return this.save(save);
    }

	/**
     * @see OpenUserService#update
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int updateCache(Object update) {
        return this.update(update);
    }

	/**
     * @see OpenUserService#updateList
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] updateListCache(List<Object> updateList) {
        return this.updateList(updateList);
    }

	/**
     * @see OpenUserService#saveList
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[][] saveListCache(List<Object> saveList) {
        return this.saveList(saveList);
    }
	
    /**
     * 查询开放用户对象
     *
     * @param findOne 开放用户标识
     * @return 开放用户对象
     */
    Map<String, Object> findOneByOpenUserId(Map<String, Object> findOne);
	
    /**
     * 查询开放用户对象
     *
     * @param findOne 开放用户标识
     * @return 开放用户对象
     */
    default Map<String, Object> findOneByOpenUserIdCache(Map<String, Object> findOne) {
        return this.findOneByOpenUserId(findOne);
    }
	
    /**
     * 查询开放用户下拉列表
     *
     * @param findList 关键字
     * @return 开放用户下拉列表
     */
    @Cacheable(key = Caches.KEY_1)
    default List<Map<String, Object>> findListByKeywordCache(Map<String, Object> findList) {
        return this.findListByKeyword(findList);
    }
}