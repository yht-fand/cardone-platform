package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 用户与组织
 *
 * @author yao hai tao
 */
public interface UserOrgDao extends PageDao {
    /**
     * 查询用户与组织对象
     *
     * @param findOne 用户与组织标识
     * @return 用户与组织对象
     */
    Map<String, Object> findOneByUserOrgId(Map<String, Object> findOne);
}