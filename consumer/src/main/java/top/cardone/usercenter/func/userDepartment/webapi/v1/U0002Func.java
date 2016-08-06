package top.cardone.usercenter.func.userDepartment.webapi.v1;

import org.apache.commons.collections.MapUtils;
import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.UserDepartmentService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.List;
import java.util.Map;

/**
 * 用户与部门 - 修改
 */
@Component("/web-api/v1/usercenter/userDepartment/u0002.json")
public class U0002Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        List<Object> updateList = (List<Object>) MapUtils.getObject(inputMap, "datas");

        return ApplicationContextHolder.getBean(UserDepartmentService.class).updateListCache(updateList);
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}
