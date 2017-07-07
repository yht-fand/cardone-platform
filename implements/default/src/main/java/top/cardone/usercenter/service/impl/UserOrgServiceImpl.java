package top.cardone.usercenter.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.UserOrgDao;

import java.util.List;
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
        return this.dao.findOneByUserOrgId(findOne);
    }
}