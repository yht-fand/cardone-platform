package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.List;
import java.util.Map;

/**
 * 区域
 *
 * @author yao hai tao
 */
public class RegionDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.RegionDao {
    @Override
    public List<Map<String, Object>> findListByName(Map<String, Object> findList) {
        String findOneSqlFilePath = this.getSqlFilePath("findListByName");

        return this.findList(findOneSqlFilePath, findList);
    }

    @Override
    public List<Map<String, Object>> findListByRegionCode(String regionCode) {
        String findOneSqlFilePath = this.getSqlFilePath("findListByRegionCode");

        Map<String, Object> findList = Maps.newHashMap();

        findList.put("regionCode", regionCode);

        return this.findList(findOneSqlFilePath, findList);
    }
}