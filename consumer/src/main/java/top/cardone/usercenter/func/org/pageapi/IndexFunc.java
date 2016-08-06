package top.cardone.usercenter.func.org.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 组织 - 索引
 */
@Component("/usercenter/org/index.json")
public class IndexFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        return null;
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}