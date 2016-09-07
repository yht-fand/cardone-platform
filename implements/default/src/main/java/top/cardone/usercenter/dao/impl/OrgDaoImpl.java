package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 组织
 *
 * @author yao hai tao
 */
public class OrgDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.OrgDao {
    @Override
    public Map<String, Object> findOneByOrgId(Object orgId) {
        Map<String, Object> inputMap = Maps.newHashMap();

        inputMap.put("orgId", orgId);

        String findOneSqlFilePath = this.getSqlFilePath("page.find");

        return this.findOne(findOneSqlFilePath, inputMap);
    }
}