package top.cardone.usercenter.service;

import top.cardone.usercenter.dao.DepartmentDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.SimpleDefaultService;

/**
 * 部门服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class DepartmentDefaultService extends SimpleDefaultService<DepartmentDao> implements DepartmentService {
}