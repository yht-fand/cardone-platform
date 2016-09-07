package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 用户与部门
 *
 * @author yao hai tao
 */
public class UserDepartmentDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.UserDepartmentDao {
    @Override
    public Map<String, Object> findOneByUserDepartmentId(Object userDepartmentId) {
        Map<String, Object> inputMap = Maps.newHashMap();

        inputMap.put("userDepartmentId", userDepartmentId);

        String findOneSqlFilePath = this.getSqlFilePath("page.find");

        return this.findOne(findOneSqlFilePath, inputMap);
    }
}