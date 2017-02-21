package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
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
     * @param findOne 区域标识
     * @return 区域对象
     */
    Map<String, Object> findOneByRegionId(Map<String, Object> findOne);

    /**
     * 查询
     *
     * @param findList
     * @return
     */
    List<Map<String, Object>> findListByName(Map<String, Object> findList);

    List<Map<String, Object>> findListByRegionCode(String regionCode);

    /**
     * 查询区域下拉列表
     *
     * @param findList 关键字
     * @return 区域下拉列表
     */
    List<Map<String, Object>> findListByKeyword(Map<String, Object> findList);
}