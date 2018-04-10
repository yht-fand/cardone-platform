package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.List;
import java.util.Map;

/**
 * 用户
 *
 * @author yao hai tao
 */
public class UserDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.UserDao {
    @Override
    public int updateByUserIds(Map<String, Object> update) {
        String updateByUserIdsSqlFilePath = this.getSqlFilePath("updateByUserIds");

        return this.update(updateByUserIdsSqlFilePath, update);
    }

    @Override
    public Map<String, Object> findOneByUserId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");

        return this.findOne(findOneSqlFilePath, findOne);
    }

    @Override
    public Map<String, Object> findOneByUserCode(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("findOneByUserCode");

        return this.findOne(findOneSqlFilePath, findOne);
    }

    @Override
    public List<String> readListUserIdLikeUserName(String userName) {
        String readListSqlFilePath = this.getSqlFilePath("readListUserIdLikeUserName");

        Map<String, Object> readList = Maps.newHashMap();

        readList.put("userName", userName);

        return this.readList(String.class, readListSqlFilePath, readList);
    }

    @Override
    public List<Map<String, Object>> findListUserIdLikeUserName(String userName) {
        String findListSqlFilePath = this.getSqlFilePath("findListUserIdLikeUserName");

        Map<String, Object> findList = Maps.newHashMap();

        findList.put("userName", userName);

        return this.findList(findListSqlFilePath, findList);
    }
}