package top.cardone.usercenter.service.impl;

import top.cardone.usercenter.dao.OrgDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.SimpleDefaultService;

/**
 * 组织服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class OrgServiceImpl extends SimpleDefaultService<OrgDao> implements top.cardone.usercenter.service.OrgService {
}