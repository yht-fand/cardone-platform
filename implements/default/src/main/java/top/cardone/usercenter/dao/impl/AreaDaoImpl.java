package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 地区
 *
 * @author yao hai tao
 */
public class AreaDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.AreaDao {
    @Override
    public Map<String, Object> findOneByAreaId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");
		
        return this.findOne(findOneSqlFilePath, findOne);
    }
}