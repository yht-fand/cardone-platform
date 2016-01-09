package top.cardone.usercenter.dto;

import top.cardone.usercenter.po.User;

/**
 * 用户
 *
 * @author yao hai tao
 */
@lombok.ToString(callSuper = true)
public class UserDto extends User {
    /**
     * 版本号
     */
    private static final long serialVersionUID = 183976258288489446L;
}