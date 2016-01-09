package top.cardone.usercenter.service.impl;

import top.cardone.usercenter.dao.DepartmentDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;

/**
 * 部门服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class DepartmentServiceImpl extends PageServiceImpl<DepartmentDao> implements top.cardone.usercenter.service.DepartmentService {
}