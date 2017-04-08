package top.cardone.usercenter.func;

import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func2;
import top.cardone.mapper.BeanMapper;
import top.cardone.usercenter.service.UserService;

import java.util.Map;

/**
 * Created by Administrator on 2017/4/8.
 */
public class ReadOneUserFunc implements Func2<Object, Map<String, Object>, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map, Map<String, Object> config) {
        Map<String, Object> readOne = ApplicationContextHolder.getBean(BeanMapper.class).getObject(Map.class, map, config);

        return ApplicationContextHolder.getBean(UserService.class).readOneCache(readOne);
    }
}