package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 用户
 *
 * @author yao hai tao
 */
public interface UserDao extends PageDao {
    /**
     * 查询对象
     *
     * @param findOne 用户标识
     * @return 对象用户对象
     */
    Map<String, Object> findOneByUserId(Map<String, Object> findOne);

    /**
     * 查询用户下拉列表
     *
     * @param findList 关键字
     * @return 用户下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}