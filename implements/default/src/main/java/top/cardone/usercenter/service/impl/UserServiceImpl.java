package top.cardone.usercenter.service.impl;

import top.cardone.usercenter.dao.UserDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;

/**
 * 用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class UserServiceImpl extends PageServiceImpl<UserDao> implements top.cardone.usercenter.service.UserService {
}