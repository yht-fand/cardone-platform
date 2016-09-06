package top.cardone.usercenter.func.openUser.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.usercenter.service.OpenUserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 开放用户 - 修改
 */
@Component("/web-api/v1/usercenter/openUser/u0003.json")
public class U0003Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
		
        return ApplicationContextHolder.getBean(OpenUserService.class).updateCache(inputMap);
    }
	
    private  void validate(Map<String,Object>  inputMap){

    }
}
