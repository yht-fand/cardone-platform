package top.cardone.usercenter.dao.impl;

import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 用户与组织
 *
 * @author yao hai tao
 */
public class UserOrgDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.UserOrgDao {
    @Override
    public Map<String, Object> findOneByUserOrgId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");

        return this.findOne(findOneSqlFilePath, findOne);
    }
}