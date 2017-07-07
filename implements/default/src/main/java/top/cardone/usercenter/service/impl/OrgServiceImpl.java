package top.cardone.usercenter.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.OrgDao;

import java.util.List;
import java.util.Map;

/**
 * 组织服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class OrgServiceImpl extends PageServiceImpl<OrgDao> implements top.cardone.usercenter.service.OrgService {
    @Override
    public Map<String, Object> findOneByOrgId(Map<String, Object> findOne) {
        return this.dao.findOneByOrgId(findOne);
    }
}