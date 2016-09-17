package top.cardone.usercenter.func;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import lombok.Setter;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.core.util.func.Func1;
import top.cardone.usercenter.service.RegionService;

import java.util.List;
import java.util.Map;

/**
 * Created by cardone-home-001 on 2016/4/25.
 */
public class FindListRegionForTreeFunc implements Func1<List<Map<String, Object>>, Map<String, Object>> {
	@Setter
	private String regionCodeKeyName = "regionCode";

	@Override
	public List<Map<String, Object>> func(Map<String, Object> params) {
		String regionCode = MapUtils.getString(params, regionCodeKeyName);

		List<Map<String, Object>> regionList = ApplicationContextHolder.getBean(RegionService.class).findListByRegionCode(regionCode);

		List<Map<String, Object>> newRegionList = Lists.newArrayList();

		for (Map<String, Object> region : regionList) {
			Map<String, Object> returnMap = Maps.newHashMap();

			returnMap.put("id", MapUtils.getString(region, "REGION_CODE", ""));
			returnMap.put("name", MapUtils.getString(region, "NAME", ""));
			returnMap.put("pId", MapUtils.getString(region, "PARENT_CODE", ""));

			newRegionList.add(returnMap);
		}

		return newRegionList;
	}
}