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
     * 查询部门列表
     *
     * @param departmentCode 部门代码
     * @return
     */
    List<Map<String, Object>> findListByDepartmentCode(String departmentCode);

    /**
     * 同步旧数据
     */
    void syncOldData();
}