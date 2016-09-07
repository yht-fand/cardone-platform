package top.cardone.usercenter.dao;

import org.springframework.data.domain.Page;
import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 部门
 *
 * @author yao hai tao
 */
public interface DepartmentDao extends PageDao {
    /**
     * 分页
     *
     * @param page 对象
     * @return 分页对象
     */
    Page<Map<String, Object>> pageByCode(Map<String, Object> page);

    /**
     * 根据部门标志查询部门对象
     *
     * @param findOneMap
     * @return
     */
    Map<String, Object> findOneByDepartmentId(Map<String, Object> findOneMap);

    /**
     * 查询部门列表
     *
     * @param deptCode 部门代码
     * @return
     */
    List<Map<String, Object>> findListByDepartmentCode(String deptCode);

    /**
     * 同步旧数据
     */
    void syncOldData();
}