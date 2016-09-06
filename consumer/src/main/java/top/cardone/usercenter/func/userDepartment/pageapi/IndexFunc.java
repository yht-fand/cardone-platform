package top.cardone.usercenter.func.userDepartment.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 用户与部门 - 索引
 */
@Component("/usercenter/userDepartment/index.json")
public class IndexFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        return null;
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}