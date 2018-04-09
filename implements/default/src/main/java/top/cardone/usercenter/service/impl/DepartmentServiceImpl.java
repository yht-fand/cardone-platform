package top.cardone.usercenter.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.DepartmentDao;

import java.util.List;
import java.util.Map;

/**
 * 部门服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class DepartmentServiceImpl extends PageServiceImpl<DepartmentDao> implements top.cardone.usercenter.service.DepartmentService {
    public Map<String, Object> findOneByDepartmentId(Map<String, Object> findOne) {
        return this.dao.findOneByDepartmentId(findOne);
    }

    @Override
    public List<Map<String, Object>> findListByDepartmentCode(String departmentCode) {
        return this.dao.findListByDepartmentCode(departmentCode);
    }

    @Override
    public List<Map<String, Object>> findListForTree(Map<String, Object> findList) {
        return this.dao.findListForTree(findList);
    }

    @Override
    @Transactional
    public void syncOldData() {
        this.dao.syncOldData();
    }
}