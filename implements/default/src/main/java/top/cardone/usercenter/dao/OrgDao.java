package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.Map;

/**
 * 组织
 *
 * @author yao hai tao
 */
public interface OrgDao extends PageDao {
    /**
     * 查询组织对象
     *
     * @param orgId 组织标识
     * @return 组织对象
     */
    Map<String, Object> findOneByOrgId(Object orgId);
}