package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.List;
import java.util.Map;

/**
 * 组织
 *
 * @author yao hai tao
 */
public class OrgDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.OrgDao {
    @Override
    public List<Map<String, Object>> findListByOrgCode(String orgCode) {
        String findOneSqlFilePath = this.getSqlFilePath("findListByOrgCode");

        Map<String, Object> findList = Maps.newHashMap();

        findList.put("orgCode", orgCode);

        return this.findList(findOneSqlFilePath, findList);
    }

    @Override
    public List<Map<String, Object>> findListByName(Map<String, Object> findList) {
        String findOneSqlFilePath = this.getSqlFilePath("findListByName");

        return this.findList(findOneSqlFilePath, findList);
    }
}