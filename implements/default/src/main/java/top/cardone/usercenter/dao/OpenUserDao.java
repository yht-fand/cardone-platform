package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.Map;

/**
 * 开放用户
 *
 * @author yao hai tao
 */
public interface OpenUserDao extends PageDao {
    /**
     * 查询开放用户对象
     *
     * @param openUserId 开放用户标识
     * @return 开放用户对象
     */
    Map<String, Object> findOneByOpenUserId(Object openUserId);
}