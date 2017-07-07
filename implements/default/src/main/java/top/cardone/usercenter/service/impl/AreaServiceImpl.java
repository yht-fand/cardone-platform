package top.cardone.usercenter.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.AreaDao;

import java.util.List;
import java.util.Map;

/**
 * 地区服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class AreaServiceImpl extends PageServiceImpl<AreaDao> implements top.cardone.usercenter.service.AreaService {
    @Override
    public Map<String, Object> findOneByAreaId(Map<String, Object> findOne) {
        return this.dao.findOneByAreaId(findOne);
    }
}