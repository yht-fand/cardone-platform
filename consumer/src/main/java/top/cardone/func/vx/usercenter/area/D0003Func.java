package top.cardone.func.vx.usercenter.area;

import top.cardone.usercenter.service.AreaService;
import com.google.common.collect.Table;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import top.cardone.cache.Cache;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.context.util.StringUtils;
import top.cardone.context.util.TableUtils;
import top.cardone.core.CodeException;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 地区 - 删除
 */
@Log4j2
@Component("/vx/usercenter/area/d0003.json")
public class D0003Func implements Func1<Object, Map<String, Object>> {
    @Value("${app.root}/config/api/vx/usercenter/area/d0003.input.json")
    private String inputJson;

    private void validate(Map<String, Object> inputMap) {
        String areaIds = MapUtils.getString(inputMap, "areaIds");

        if (StringUtils.isBlank(areaIds)) {
            throw new CodeException("地区标识集合不能为空值!");
        }
    }

    @Override
    public Object func(Map<String, Object> inputMap) {
        Table<String, String, String> inputTable;

        if (log.isDebugEnabled()) {
            inputTable = TableUtils.newTable(inputJson);
        } else {
            inputTable = ApplicationContextHolder.getBean(Cache.class).get("inputTable", inputJson, () -> TableUtils.newTable(inputJson));
        }

        Map<String, Object> newInputMap = top.cardone.context.util.MapUtils.newHashMap(inputMap, inputTable);

        validate(newInputMap);

        return ApplicationContextHolder.getBean(AreaService.class).deleteByIdsCache(newInputMap);
    }
}