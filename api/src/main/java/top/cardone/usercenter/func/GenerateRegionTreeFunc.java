package top.cardone.usercenter.func;

import org.aspectj.lang.ProceedingJoinPoint;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func3;
import top.cardone.usercenter.service.OrgService;
import top.cardone.usercenter.service.RegionService;

import java.util.Map;

/**
 * Created by yl on 2016/5/6.
 */
public class GenerateRegionTreeFunc implements Func3<Object, ProceedingJoinPoint, Map<String, Object>, Map<String, Object>> {
    @Override
    public Object func(ProceedingJoinPoint proceedingJoinPoint, Map<String, Object> objectMap, Map<String, Object> objectMap2) {
        ApplicationContextHolder.getBean(RegionService.class).generateTreeInfo();

        return null;
    }
}
