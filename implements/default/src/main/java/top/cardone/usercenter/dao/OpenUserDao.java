package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
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
     * @param findOne 开放用户标识
     * @return 开放用户对象
     */
    Map<String, Object> findOneByOpenUserId(Map<String, Object> findOne);

    /**
     * 查询开放用户下拉列表
     *
     * @param findList 关键字
     * @return 开放用户下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}