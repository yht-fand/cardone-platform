package top.cardone.usercenter.service.impl;

import top.cardone.usercenter.dao.DepartmentDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.SimpleDefaultService;

/**
 * 部门服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class DepartmentServiceImpl extends SimpleDefaultService<DepartmentDao> implements top.cardone.usercenter.service.DepartmentService {
}