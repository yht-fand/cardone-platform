package top.cardone.usercenter.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.RegionDao;

import java.util.Map;

/**
 * 区域服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class RegionServiceImpl extends PageServiceImpl<RegionDao> implements top.cardone.usercenter.service.RegionService {
    @Override
    public Map<String, Object> findOneByRegionId(Map<String, Object> findOne) {
        return this.dao.findOneByRegionId(findOne);
    }
}