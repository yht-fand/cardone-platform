package top.cardone.usercenter.func.openUser.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 开放用户 - 添加
 */
@Component("/usercenter/openUser/addModal.json")
public class AddModalFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        return null;
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}
