package top.cardone.usercenter.func.department.webapi.v1;

import com.google.common.collect.Maps;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import top.cardone.core.CodeException;
import top.cardone.usercenter.service.DepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 部门 - 修改
 */
@Component("/web-api/v1/usercenter/department/u0001.json")
public class U0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {

        String departmentId = MapUtils.getString(map, "departmentId");

        if (StringUtils.isBlank(departmentId)) {
            throw new CodeException("部门标识不能为空值");
        }

        String name = MapUtils.getString(map, "name");

        if (StringUtils.isBlank(name)) {
            throw new CodeException("部门名称不能为空值");
        }

        if(name.length() > 256){
            throw new CodeException("名称长度不能超过256");
        }

        //该接口只需要支持修改 name 字段
        //由于调用的是一个比较灵活的接口，需严格控制输入参数
        Map<String, Object> update = Maps.newHashMap();
        update.put("departmentId",departmentId);
        update.put("departmentCode", MapUtils.getString(map, "departmentCode"));
        update.put("name", name);
        update.put("parentCode", MapUtils.getString(map, "parentCode"));
        update.put("parentDeptName", MapUtils.getString(map, "parentDeptName"));
        update.put("orgCode", MapUtils.getString(map, "orgCode"));
        update.put("orgName", MapUtils.getString(map, "orgName"));
        update.put("stateCode", MapUtils.getString(map, "stateCode"));

        return ApplicationContextHolder.getBean(DepartmentService.class).updateCache(update);
    }
}