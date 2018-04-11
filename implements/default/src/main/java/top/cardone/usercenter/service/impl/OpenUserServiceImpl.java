package top.cardone.usercenter.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.OpenUserDao;

import java.util.Map;

/**
 * 开放用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class OpenUserServiceImpl extends PageServiceImpl<OpenUserDao> implements top.cardone.usercenter.service.OpenUserService {
    @Override
    public Map<String, Object> findOneByOpenUserId(Map<String, Object> findOne) {
        return this.dao.findOneBySqlFileName("page.find", findOne);
    }
}