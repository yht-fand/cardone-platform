package top.cardone.usercenter.func.department.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 部门 - 索引
 */
@Component("/usercenter/department/index.json")
public class IndexFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return null;
    }
}