package top.cardone.usercenter.func;

import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.stereotype.Component;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func3;
import top.cardone.usercenter.service.DepartmentService;

import java.util.Map;

/**
 * Created by yl on 2016/5/6.
 */
@Component("generateDepartmentTreeFunc")
public class GenerateDepartmentTreeFunc implements Func3<Object, ProceedingJoinPoint, Map<String, Object>, Map<String, Object>> {
    @Override
    public Object func(ProceedingJoinPoint proceedingJoinPoint, Map<String, Object> objectMap, Map<String, Object> objectMap2) {
        ApplicationContextHolder.getBean(DepartmentService.class).generateTreeInfo();

        return null;
    }
}
