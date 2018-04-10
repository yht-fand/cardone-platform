package top.cardone.usercenter.service;

import com.google.common.collect.Maps;
import org.apache.shiro.SecurityUtils;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.annotation.Event;
import top.cardone.context.annotation.Events;
import top.cardone.context.event.SimpleErrorEvent;
import top.cardone.context.event.SimpleEvent;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.UserService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface UserService extends PageService {
    /**
     * 查询用户对象
     *
     * @param findOne 用户标识
     * @return 用户对象
     */
    Map<String, Object> findOneByUserId(Map<String, Object> findOne);

    /**
     * 查询用户对象
     *
     * @param findOne 用户标识
     * @return 用户对象
     */
    @Cacheable
    default Map<String, Object> findOneByUserIdCache(Map<String, Object> findOne) {
        return this.findOneByUserId(findOne);
    }

    /**
     * 查询用户对象
     *
     * @param findOne
     * @return 用户对象
     */
    Map<String, Object> findOneByUserCode(Map<String, Object> findOne);

    /**
     * 查询用户对象
     *
     * @param findOne
     * @return 用户对象
     */
    @Cacheable
    default Map<String, Object> findOneByUserCodeCache(Map<String, Object> findOne) {
        return this.findOneByUserCode(findOne);
    }

    default Map<String, Object> findOneByPrincipal() {
        Object principal = SecurityUtils.getSubject().getPrincipal();

        if (principal == null) {
            return null;
        }

        Map<String, Object> findOneUser = Maps.newHashMap();

        findOneUser.put("userCode", principal);
        findOneUser.put("dataStateCode", "1");
        findOneUser.put("stateCode", "1");

        return ApplicationContextHolder.getBean(UserService.class).findOneCache(findOneUser);
    }

    default String readOneUserIdByPrincipal() {
        Object principal = SecurityUtils.getSubject().getPrincipal();

        if (principal == null) {
            return null;
        }

        Map<String, Object> readOne = Maps.newHashMap();

        readOne.put("userCode", principal);
        readOne.put("stateCode", "1");
        readOne.put("dataStateCode", "1");
        readOne.put("object_id", "userId");

        return ApplicationContextHolder.getBean(UserService.class).readOneCache(String.class, readOne);
    }

    @Cacheable
    default String readOneDepartmentCodeByUserCodeCache(String userCode) {
        Map<String, Object> readOne = Maps.newHashMap();

        readOne.put("userCode", userCode);
        readOne.put("stateCode", "1");
        readOne.put("dataStateCode", "1");
        readOne.put("object_id", "departmentCode");

        return this.readOne(String.class, readOne);
    }

    @Cacheable
    default String readOneDepartmentIdByUserCodeCache(String userCode) {
        Map<String, Object> readOne = Maps.newHashMap();

        readOne.put("userCode", userCode);
        readOne.put("stateCode", "1");
        readOne.put("dataStateCode", "1");
        readOne.put("object_id", "departmentId");

        return this.readOne(String.class, readOne);
    }

    /**
     * 模糊查询用户标识集合
     *
     * @param userName 用户名称（或用户编号）
     * @return 用户标识集合
     */
    List<String> readListUserIdLikeUserName(String userName);

    /**
     * 模糊查询用户标识集合
     *
     * @param userName 用户名称（或用户编号）
     * @return 用户标识集合
     */
    @Cacheable
    default List<String> readListUserIdLikeUserNameCache(String userName) {
        return this.readListUserIdLikeUserName(userName);
    }

    /**
     * 模糊查询用户集合
     *
     * @param userName 用户名称（或用户编号）
     * @return 用户集合
     */
    List<Map<String, Object>> findListUserIdLikeUserName(String userName);

    /**
     * 模糊查询用户集合
     *
     * @param userName 用户名称（或用户编号）
     * @return 用户集合
     */
    @Cacheable
    default List<Map<String, Object>> findListUserIdLikeUserNameCache(String userName) {
        return this.findListUserIdLikeUserName(userName);
    }
}