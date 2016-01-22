package top.cardone.usercenter.service.impl;

import top.cardone.usercenter.dao.OpenUserDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;

/**
 * 开放用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class OpenUserServiceImpl extends PageServiceImpl<OpenUserDao> implements top.cardone.usercenter.service.OpenUserService {
}