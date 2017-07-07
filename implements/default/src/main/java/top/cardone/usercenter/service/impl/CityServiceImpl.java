package top.cardone.usercenter.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.CityDao;

import java.util.List;
import java.util.Map;

/**
 * 城市服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class CityServiceImpl extends PageServiceImpl<CityDao> implements top.cardone.usercenter.service.CityService {
    @Override
    public Map<String, Object> findOneByCityId(Map<String, Object> findOne) {
        return this.dao.findOneByCityId(findOne);
    }
}