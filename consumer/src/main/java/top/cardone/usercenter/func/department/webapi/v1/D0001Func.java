package top.cardone.usercenter.func.department.webapi.v1;

import org.apache.commons.collections.MapUtils;
import org.springframework.stereotype.Component;
import top.cardone.context.util.StringUtils;
import top.cardone.core.CodeException;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import java.util.Map;

/**
 * 部门 - 删除
 */
@Component("/web-api/v1/usercenter/department/d0001.json")
public class D0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {

        String ids = MapUtils.getString(map, "ids");
        if (StringUtils.isBlank(ids)) {
            throw new CodeException("请选择需要删除的数据！");
        }
        try {
            ApplicationContextHolder.getBean(DepartmentService.class).deleteByIds(ids);
        } catch (Exception e) {
            throw new CodeException("删除失败！");
        }

        return null;


    }
}
