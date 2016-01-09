package top.cardone.usercenter.service.impl;

import top.cardone.usercenter.dao.OrgDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;

/**
 * 组织服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class OrgServiceImpl extends PageServiceImpl<OrgDao> implements top.cardone.usercenter.service.OrgService {
}