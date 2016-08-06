package top.cardone.usercenter.func.openUser.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 开放用户 - 索引
 */
@Component("/usercenter/openUser/index.json")
public class IndexFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        return null;
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}