package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
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
     * @param findOne 城市标识
     * @return 城市对象
     */
    Map<String, Object> findOneByCityId(Map<String, Object> findOne);
	
    /**
     * 查询城市下拉列表
     *
     * @param findList 关键字
     * @return 城市下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}