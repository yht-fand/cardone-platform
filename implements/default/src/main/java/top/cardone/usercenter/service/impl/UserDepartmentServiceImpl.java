package top.cardone.usercenter.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.UserDepartmentDao;

import java.util.Map;

/**
 * 用户与部门服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class UserDepartmentServiceImpl extends PageServiceImpl<UserDepartmentDao> implements top.cardone.usercenter.service.UserDepartmentService {
    @Override
    public Map<String, Object> findOneByUserDepartmentId(Map<String, Object> findOne) {
        return this.dao.findOneBySqlFileName("page.find", findOne);
    }
}