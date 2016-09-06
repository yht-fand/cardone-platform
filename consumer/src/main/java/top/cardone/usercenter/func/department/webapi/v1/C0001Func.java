package top.cardone.usercenter.func.department.webapi.v1;

import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import top.cardone.core.CodeException;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import java.util.Map;

/**
 * 部门 - 创建
 */
@Component("/web-api/v1/usercenter/department/c0001.json")
public class C0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {

        String departmentCode = MapUtils.getString(map, "departmentCode");
        if (StringUtils.isBlank(departmentCode)) {
            throw new CodeException("部门编码不能为空值");
        }

        String name = MapUtils.getString(map, "name");
        if (StringUtils.isBlank(name)) {
            throw new CodeException("部门名称不能为空值");
        }
        try {
            ApplicationContextHolder.getBean(DepartmentService.class).insert(map);
        } catch (Exception e) {
            throw new CodeException("新增失败！");
        }

        return null;
    }
}
