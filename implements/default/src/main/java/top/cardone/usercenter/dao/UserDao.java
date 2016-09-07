package top.cardone.usercenter.dao;

import org.springframework.data.domain.Page;
import top.cardone.data.dao.PageDao;

import java.util.Map;

/**
 * 用户
 *
 * @author yao hai tao
 */
public interface UserDao extends PageDao {
    /**
     * 分页
     *
     * @param page 对象
     * @return 分页对象
     */
    Page<Map<String, Object>> pageByCode(Map<String, Object> page);

    /**
     * 查询对象
     *
     * @param findOneMap 用户标识
     * @return 对象用户对象
     */
    Map<String, Object> findOneByUserId(Map<String, Object> findOneMap);

    <R> R readOneByCondition(Class<R> requiredType, Map<String, Object> inputMap);

    /**
     * 同步旧数据
     */
    void syncOldData();
}