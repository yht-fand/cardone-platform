package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
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
     * @param findOne 组织标识
     * @return 组织对象
     */
    Map<String, Object> findOneByOrgId(Map<String, Object> findOne);

    List<Map<String, Object>> findListByOrgCode(String orgCode);

    /**
     * 查询
     *
     * @param findList
     * @return
     */
    List<Map<String, Object>> findListByName(Map<String, Object> findList);
}