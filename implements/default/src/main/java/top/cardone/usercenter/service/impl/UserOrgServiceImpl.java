package top.cardone.usercenter.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.UserOrgDao;

import java.util.Map;

/**
 * 用户与组织服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class UserOrgServiceImpl extends PageServiceImpl<UserOrgDao> implements top.cardone.usercenter.service.UserOrgService {
    @Override
    public Map<String, Object> findOneByUserOrgId(Map<String, Object> findOne) {
        return this.dao.findOneBySqlFileName("page.find", findOne);
    }
}