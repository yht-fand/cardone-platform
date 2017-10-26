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
 * 用户与地址服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.UserAddressService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface UserAddressService extends PageService {
	/**
     * @see UserAddressService#page
     */
    @Cacheable(key = Caches.KEY_1)
    default Page<Map<String, Object>> pageCache(Object page) {
        return this.page(page);
    }

	/**
     * @see UserAddressService#page
     */
    @Cacheable(key = Caches.KEY_2)
    default <P> Page<P> pageCache(Class<P> mappedClass, Object page) {
        return this.page(mappedClass, page);
    }

	/**
     * @see UserAddressService#findList
     */
    @Cacheable(key = Caches.KEY_2)
    default <P> List<P> findListCache(Class<P> mappedClass, Object findList) {
        return this.findList(mappedClass, findList);
    }

	/**
     * @see UserAddressService#findOne
     */
    @Cacheable(key = Caches.KEY_2)
    default <P> P findOneCache(Class<P> mappedClass, Object findOne) {
        return this.findOne(mappedClass, findOne);
    }

	/**
     * @see UserAddressService#readList
     */
    @Cacheable(key = Caches.KEY_2)
    default <R> List<R> readListCache(Class<R> requiredType, Object readList) {
        return this.readList(requiredType, readList);
    }

	/**
     * @see UserAddressService#readOne
     */
    @Cacheable(key = Caches.KEY_2)
    default <R> R readOneCache(Class<R> requiredType, Object readOne) {
        return this.readOne(requiredType, readOne);
    }

	/**
     * @see UserAddressService#delete
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int deleteCache(Object delete) {
        return this.delete(delete);
    }

	/**
     * @see UserAddressService#deleteAll
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int deleteAllCache() {
        return this.deleteAll();
    }

	/**
     * @see UserAddressService#deleteByIds
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int deleteByIdsCache(Object ids) {
        return this.deleteByIds(ids);
    }

	/**
     * @see UserAddressService#deleteList
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] deleteListCache(List<Object> deleteList) {
        return this.deleteList(deleteList);
    }

	/**
     * @see UserAddressService#findList
     */
    @Cacheable(key = Caches.KEY_1)
    default List<Map<String, Object>> findListCache(Object findList) {
        return this.findList(findList);
    }

	/**
     * @see UserAddressService#findOne
     */
    @Cacheable(key = Caches.KEY_1)
    default Map<String, Object> findOneCache(Object findOne) {
        return this.findOne(findOne);
    }

	/**
     * @see UserAddressService#insert
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int insertCache(Object insert) {
        return this.insert(insert);
    }

	/**
     * @see UserAddressService#insertByNotExists
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int insertByNotExistsCache(Object insert) {
        return this.insertByNotExists(insert);
    }

	/**
     * @see UserAddressService#insertList
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] insertListCache(List<Object> insertList) {
        return this.insertList(insertList);
    }

	/**
     * @see UserAddressService#insertListByNotExists
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] insertListByNotExistsCache(List<Object> insertList) {
        return this.insertListByNotExists(insertList);
    }

	/**
     * @see UserAddressService#readList
     */
    @Cacheable(key = Caches.KEY_1)
    default List<Object> readListCache(Object readList) {
        return this.readList(readList);
    }

	/**
     * @see UserAddressService#readOne
     */
    @Cacheable(key = Caches.KEY_1)
    default Object readOneCache(Object readOne) {
        return this.readOne(readOne);
    }

	/**
     * @see UserAddressService#save
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int saveCache(Object save) {
        return this.save(save);
    }

	/**
     * @see UserAddressService#update
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int updateCache(Object update) {
        return this.update(update);
    }

	/**
     * @see UserAddressService#updateList
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] updateListCache(List<Object> updateList) {
        return this.updateList(updateList);
    }

	/**
     * @see UserAddressService#saveList
     */
    @CacheEvict(allEntries = true)
    @Transactional
    default int[] saveListCache(List<Object> saveList) {
        return this.saveList(saveList);
    }
	
    /**
     * 查询用户与地址对象
     *
     * @param findOne 用户与地址标识
     * @return 用户与地址对象
     */
    Map<String, Object> findOneByUserAddressId(Map<String, Object> findOne);
	
    /**
     * 查询用户与地址对象
     *
     * @param findOne 用户与地址标识
     * @return 用户与地址对象
     */
    default Map<String, Object> findOneByUserAddressIdCache(Map<String, Object> findOne) {
        return this.findOneByUserAddressId(findOne);
    }
	
    /**
     * 查询用户与地址下拉列表
     *
     * @param findList 关键字
     * @return 用户与地址下拉列表
     */
    @Cacheable(key = Caches.KEY_1)
    default List<Map<String, Object>> findListByKeywordCache(Map<String, Object> findList) {
        return this.findListByKeyword(findList);
    }
}