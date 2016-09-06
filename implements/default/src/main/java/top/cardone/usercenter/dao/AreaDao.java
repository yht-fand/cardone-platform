package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

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
     * @param areaId 地区标识
     * @return 地区对象
     */
    Map<String, Object> findOneByAreaId(Object areaId);
}