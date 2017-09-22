package top.cardone.usercenter.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.UserDao;

import java.util.Map;

/**
 * 用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class UserServiceImpl extends PageServiceImpl<UserDao> implements top.cardone.usercenter.service.UserService {
    @Override
    public Map<String, Object> findOneByUserId(Map<String, Object> findOneMap) {
        return this.dao.findOneByUserId(findOneMap);
    }

    @Override
    public Map<String, Object> findOneByUserCode(Map<String, Object> findOne) {
        return this.dao.findOneByUserCode(findOne);
    }
}