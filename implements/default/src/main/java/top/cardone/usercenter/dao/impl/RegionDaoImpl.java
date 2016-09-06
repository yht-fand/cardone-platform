package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 区域
 *
 * @author yao hai tao
 */
public class RegionDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.RegionDao {
    @Override
    public Map<String, Object> findOneByRegionId(Object regionId) {
        Map<String, Object> inputMap = Maps.newHashMap();
		
        inputMap.put("regionId", regionId);
		
        String findOneSqlFilePath = this.getSqlFilePath("page.find");
		
        return this.findOne(findOneSqlFilePath, inputMap);
    }
}