package pageapi.usercenter.org.func;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 组织 - 索引
 */
@Component("/usercenter/org/index.json")
public class IndexFunc implements Func1<Map<String, Object>, Map<String, Object>> {
    @Override
    public Map<String, Object> func(Map<String, Object> map) {
        return null;
    }
}