package top.cardone.usercenter.service;

import com.google.common.collect.Lists;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.cache.Caches;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.annotation.Event;
import top.cardone.context.annotation.Events;
import top.cardone.context.event.SimpleErrorEvent;
import top.cardone.context.event.SimpleEvent;
import top.cardone.context.util.MapUtils;
import top.cardone.data.service.PageService;

import java.util.List;
import java.util.Map;

/**
 * 部门服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
@CacheConfig(cacheNames = {"top.cardone.usercenter.service.DepartmentService"})
@Events({@Event(applicationEvent = SimpleErrorEvent.class),
        @Event(applicationEvent = SimpleEvent.class)})
public interface DepartmentService extends PageService {
    /**
     * 查询部门对象
     *
     * @param findOne 部门标识
     * @return 部门对象
     */
    Map<String, Object> findOneByDepartmentId(Map<String, Object> findOne);

    /**
     * 查询部门对象
     *
     * @param findOne 部门标识
     * @return 部门对象
     */
    @Cacheable
    default Map<String, Object> findOneByDepartmentIdCache(Map<String, Object> findOne) {
        return this.findOneByDepartmentId(findOne);
    }

    @Cacheable
    default List<Map<String, Object>> findListByDepartmentCodeCache(String departmentCode) {
        return this.findListByDepartmentCode(departmentCode);
    }

    @Cacheable
    default List<String> readListDepartmentCodeTreeByDepartmentCodeCache(String departmentCode) {
        List<Map<String, Object>> departmentList = ApplicationContextHolder.getBean(DepartmentService.class).findListByDepartmentCodeCache(departmentCode);

        List<String> departmentCodeList = Lists.newArrayList();

        for (Map<String, Object> department : departmentList) {
            departmentCodeList.add(MapUtils.getString(department, "DEPARTMENT_CODE"));
        }

        return departmentCodeList;
    }

    /**
     * 查询部门列表
     *
     * @param departmentCode 部门代码
     * @return
     */
    List<Map<String, Object>> findListByDepartmentCode(String departmentCode);

    /**
     * 查询部门树
     *
     * @param findList 关键字
     * @return
     */
    List<Map<String, Object>> findListForTree(Map<String, Object> findList);

    @Cacheable
    default List<Map<String, Object>> findListForTreeCache(Map<String, Object> findList) {
        return this.findListForTree(findList);
    }

    /**
     * 同步旧数据
     */
    @Transactional
    void syncOldData();
}