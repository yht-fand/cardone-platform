package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 开放用户
 *
 * @author yao hai tao
 */
public class OpenUserDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.OpenUserDao {
    @Override
    public Map<String, Object> findOneByOpenUserId(Object openUserId) {
        Map<String, Object> inputMap = Maps.newHashMap();
		
        inputMap.put("openUserId", openUserId);
		
        String findOneSqlFilePath = this.getSqlFilePath("page.find");
		
        return this.findOne(findOneSqlFilePath, inputMap);
    }
}