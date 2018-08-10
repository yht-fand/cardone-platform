package top.cardone.usercenter.service.impl;

import com.google.common.collect.Maps;
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
    @Override
    public Map<String, Object> findOneByDepartmentId(Map<String, Object> findOne) {
        return this.dao.findOneBySqlFileName("page.find", findOne);
    }

    @Override
    public List<Map<String, Object>> findListByDepartmentCode(String departmentCode) {
        Map<String, Object> findList = Maps.newHashMap();

        findList.put("departmentCode", departmentCode);

        return this.dao.findListBySqlFileName("findListByDepartmentCode", findList);
    }

    @Override
    public List<Map<String, Object>> findListForTree(Map<String, Object> findList) {
        return this.dao.findListBySqlFileName("findListForTree", findList);
    }

    @Override
    @Transactional
    public void syncOldData() {
        this.dao.syncOldData();
    }

    @Override
    public List<String> readListDepartmentIdLikeDepartmentName(String departmentName, Boolean isLike) {
        Map<String, Object> readList = Maps.newHashMap();

        readList.put("departmentName", departmentName);
        readList.put("isLike", isLike);

        return this.dao.readListBySqlFileName(String.class, "readListDepartmentIdLikeDepartmentName", readList);
    }

    @Override
    public List<String> readListDepartmentIdLikeDepartmentIdForTree(String departmentId) {
        Map<String, Object> readList = Maps.newHashMap();

        readList.put("departmentId", departmentId);

        return this.dao.readListBySqlFileName(String.class, "readListDepartmentIdLikeDepartmentIdForTree", readList);
    }

    @Override
    public List<String> readListDepartmentIdLikeDepartmentCodeForTree(String departmentCode) {
        Map<String, Object> readList = Maps.newHashMap();

        readList.put("departmentCode", departmentCode);

        return this.dao.readListBySqlFileName(String.class, "readListDepartmentIdLikeDepartmentCodeForTree", readList);
    }
}