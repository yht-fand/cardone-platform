package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 用户与地址
 *
 * @author yao hai tao
 */
public class UserAddressDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.UserAddressDao {
    @Override
    public Map<String, Object> findOneByUserAddressId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");
		
        return this.findOne(findOneSqlFilePath, findOne);
    }
}