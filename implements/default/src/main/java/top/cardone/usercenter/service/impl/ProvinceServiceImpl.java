package top.cardone.usercenter.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.ProvinceDao;

import java.util.Map;

/**
 * 省份服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class ProvinceServiceImpl extends PageServiceImpl<ProvinceDao> implements top.cardone.usercenter.service.ProvinceService {
    @Override
    public Map<String, Object> findOneByProvinceId(Map<String, Object> findOne) {
        return this.dao.findOneByProvinceId(findOne);
    }
}