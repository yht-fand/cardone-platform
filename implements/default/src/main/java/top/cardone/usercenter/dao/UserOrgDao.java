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

    /**
     * 查询用户与组织下拉列表
     *
     * @param findList 关键字
     * @return 用户与组织下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}