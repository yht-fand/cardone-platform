package top.cardone.usercenter.dao.impl;

import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.List;
import java.util.Map;

/**
 * 城市
 *
 * @author yao hai tao
 */
public class CityDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.CityDao {
    @Override
    public Map<String, Object> findOneByCityId(Map<String, Object> findOne) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");

        return this.findOne(findOneSqlFilePath, findOne);
    }

    @Override
    public List<Map<String, Object>> findListByKeyword(Map<String, Object> findList) {
        String findListByKeywordSqlFilePath = this.getSqlFilePath("findListByKeyword");

        return this.findList(findListByKeywordSqlFilePath, findList);
    }
}