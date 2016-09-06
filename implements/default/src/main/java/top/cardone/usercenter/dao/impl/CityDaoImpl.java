package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 城市
 *
 * @author yao hai tao
 */
public class CityDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.CityDao {
    @Override
    public Map<String, Object> findOneByCityId(Object cityId) {
        Map<String, Object> inputMap = Maps.newHashMap();
		
        inputMap.put("cityId", cityId);
		
        String findOneSqlFilePath = this.getSqlFilePath("page.find");
		
        return this.findOne(findOneSqlFilePath, inputMap);
    }
}