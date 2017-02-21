package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 用户与部门
 *
 * @author yao hai tao
 */
public interface UserDepartmentDao extends PageDao {
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