package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 部门
 *
 * @author yao hai tao
 */
public interface DepartmentDao extends PageDao {
    /**
     * 根据部门标志查询部门对象
     *
     * @param departmentId
     * @return
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
     * 同步旧数据
     */
    void syncOldData();

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
    List<Map<String, Object>> findListForTree(Map<String, Object> findList);
}