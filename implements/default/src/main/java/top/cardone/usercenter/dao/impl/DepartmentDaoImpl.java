package top.cardone.usercenter.dao.impl;

import com.google.common.collect.Maps;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.List;
import java.util.Map;

/**
 * 部门
 *
 * @author yao hai tao
 */
public class DepartmentDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.DepartmentDao {
    @Value("${department.syncOldSql:}")
    private String syncOldSql;

    @Override
    public Page<Map<String, Object>> pageByCode(Map<String, Object> page) {
        String countSqlFilePath = this.getSqlFilePath("page.count");
        String findListSqlFilePath = this.getSqlFilePath("page.find");
        return this.page(countSqlFilePath, findListSqlFilePath, page);
    }

    @Override
    public Map<String, Object> findOneByDepartmentId(String departmentId) {
        Map<String, Object> findOne = Maps.newHashMap();
        String findOneSqlFilePath = this.getSqlFilePath("page.find");
        findOne.put("departmentId", departmentId);
        return this.findOne(findOneSqlFilePath, findOne);
    }

    @Override
    public List<Map<String, Object>> findListByDepartmentCode(String departmentCode) {
        String findListSqlFilePath = this.getSqlFilePath("findListByDeptCodeForDept");
        Map<String, Object> inputMap = Maps.newHashMap();
        inputMap.put("departmentCode", departmentCode);
        return this.findList(findListSqlFilePath, inputMap);
    }

    @Override
    public void syncOldData() {
        if (StringUtils.isBlank(syncOldSql)) {
            return;
        }

        String[] syncOldSqls = syncOldSql.split(",");

        for (String sql : syncOldSqls) {
            this.update(sql, null);
        }
    }
}