package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.Map;

/**
 * 城市
 *
 * @author yao hai tao
 */
public interface CityDao extends PageDao {
    /**
     * 查询城市对象
     *
     * @param cityId 城市标识
     * @return 城市对象
     */
    Map<String, Object> findOneByCityId(Object cityId);
}