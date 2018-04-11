package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

/**
 * 部门
 *
 * @author yao hai tao
 */
public interface DepartmentDao extends PageDao {
    /**
     * 同步旧数据
     */
    void syncOldData();
}