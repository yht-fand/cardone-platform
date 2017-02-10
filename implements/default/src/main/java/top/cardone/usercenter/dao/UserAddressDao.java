package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.Map;

/**
 * 用户与地址
 *
 * @author yao hai tao
 */
public interface UserAddressDao extends PageDao {
    /**
     * 查询用户与地址对象
     *
     * @param findOne 用户与地址标识
     * @return 用户与地址对象
     */
    Map<String, Object> findOneByUserAddressId(Map<String, Object> findOne);
}