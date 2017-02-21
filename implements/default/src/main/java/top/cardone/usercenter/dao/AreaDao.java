package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 地区
 *
 * @author yao hai tao
 */
public interface AreaDao extends PageDao {
    /**
     * 查询地区对象
     *
     * @param findOne 地区标识
     * @return 地区对象
     */
    Map<String, Object> findOneByAreaId(Map<String, Object> findOne);

    /**
     * 查询地区下拉列表
     *
     * @param findList 关键字
     * @return 地区下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}