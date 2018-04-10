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
    int updateByUserIds(Map<String, Object> update);

    /**
     * 查询对象
     *
     * @param findOne 用户标识
     * @return 对象用户对象
     */
    Map<String, Object> findOneByUserId(Map<String, Object> findOne);

    /**
     * 查询用户对象
     *
     * @param findOne
     * @return 用户对象
     */
    Map<String, Object> findOneByUserCode(Map<String, Object> findOne);

    List<String> readListUserIdLikeUserName(String userName);

    List<Map<String,Object>> findListUserIdLikeUserName(String userName);
}