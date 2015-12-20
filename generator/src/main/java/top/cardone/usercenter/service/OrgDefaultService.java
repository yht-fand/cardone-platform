package top.cardone.usercenter.service;

import top.cardone.usercenter.dao.OrgDao;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.SimpleDefaultService;

/**
 * 组织服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class OrgDefaultService extends SimpleDefaultService<OrgDao> implements OrgService {
}