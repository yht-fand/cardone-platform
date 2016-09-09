package top.cardone.usercenter.dao.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import top.cardone.data.jdbc.dao.impl.PageDaoImpl;

import java.util.Map;

/**
 * 用户
 *
 * @author yao hai tao
 */
public class UserDaoImpl extends PageDaoImpl implements top.cardone.usercenter.dao.UserDao {
    @Value("${user.syncOldSql:}")
    private String syncOldSql;

    @Override
    public Map<String, Object> findOneByUserId(Map<String, Object> findOneMap) {
        String findOneSqlFilePath = this.getSqlFilePath("page.find");

        return this.findOne(findOneSqlFilePath, findOneMap);
    }

    @Override
    public <R> R readOneByCondition(Class<R> requiredType, Map<String, Object> inputMap) {
        String sqlFilePath = this.getSqlFilePath("readOneByCondition");

        return this.readOne(requiredType, sqlFilePath, inputMap);
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