package top.cardone.usercenter.service.impl;

import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.UserAddressDao;

import java.util.Map;

/**
 * 用户与地址服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class UserAddressServiceImpl extends PageServiceImpl<UserAddressDao> implements top.cardone.usercenter.service.UserAddressService {
    @Override
    public Map<String, Object> findOneByUserAddressId(Map<String, Object> findOne) {
        return this.dao.findOneBySqlFileName("page.find", findOne);
    }
}