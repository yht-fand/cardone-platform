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
    List<Map<String, Object>> findListByOrgCode(String orgCode);

    /**
     * 查询
     *
     * @param findList
     * @return
     */
    List<Map<String, Object>> findListByName(Map<String, Object> findList);
}