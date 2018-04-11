package top.cardone.usercenter.service.impl;

import com.google.common.collect.Maps;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.UserDao;

import java.util.List;
import java.util.Map;

/**
 * 用户服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class UserServiceImpl extends PageServiceImpl<UserDao> implements top.cardone.usercenter.service.UserService {
    @Override
    public Map<String, Object> findOneByUserId(Map<String, Object> findOne) {
        return this.dao.findOneBySqlFileName("page.find", findOne);
    }

    @Override
    public Map<String, Object> findOneByUserCode(Map<String, Object> findOne) {
        return this.dao.findOneBySqlFileName("findOneByUserCode", findOne);
    }

    @Override
    public List<String> readListUserIdLikeUserName(String userName) {
        Map<String, Object> readList = Maps.newHashMap();

        readList.put("userName", userName);

        return this.dao.readListBySqlFileName(String.class, "readListUserIdLikeUserName", readList);
    }

    @Override
    public List<Map<String, Object>> findListUserIdLikeUserName(String userName) {
        Map<String, Object> findList = Maps.newHashMap();

        findList.put("userName", userName);

        return this.dao.findListBySqlFileName("findListUserIdLikeUserName", findList);
    }
}