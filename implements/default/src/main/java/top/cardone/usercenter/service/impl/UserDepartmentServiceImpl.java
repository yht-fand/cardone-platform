package top.cardone.usercenter.service.impl;

import top.cardone.usercenter.dao.UserDepartmentDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;

/**
 * 用户与部门服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class UserDepartmentServiceImpl extends PageServiceImpl<UserDepartmentDao> implements top.cardone.usercenter.service.UserDepartmentService {
}