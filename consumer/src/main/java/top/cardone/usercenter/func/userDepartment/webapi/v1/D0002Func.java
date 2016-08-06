package top.cardone.usercenter.func.userDepartment.webapi.v1;

import org.apache.commons.collections.MapUtils;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.UserDepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.List;
import java.util.Map;

/**
 * 用户与部门 - 批量删除
 */
@Component("/web-api/v1/usercenter/userDepartment/d0002.json")
public class D0002Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        List<Object> deleteList = (List<Object>) MapUtils.getObject(inputMap, "datas");

        return ApplicationContextHolder.getBean(UserDepartmentService.class).deleteListCache(deleteList);
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}
