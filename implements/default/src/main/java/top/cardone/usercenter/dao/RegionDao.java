package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.Map;

/**
 * 区域
 *
 * @author yao hai tao
 */
public interface RegionDao extends PageDao {
    /**
     * 查询区域对象
     *
     * @param regionId 区域标识
     * @return 区域对象
     */
    Map<String, Object> findOneByRegionId(Object regionId);
}