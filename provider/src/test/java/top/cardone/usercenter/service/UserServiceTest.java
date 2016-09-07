package top.cardone.usercenter.service;

import com.google.common.collect.Maps;
import org.junit.Assume;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.data.domain.Page;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.CollectionUtils;
import top.cardone.ProviderApplication;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.DateUtils;

import java.util.Map;


/**
 * Created by gongzw on 2016/4/22.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = ProviderApplication.class)
public class UserServiceTest {

    @Test
    public void pageByCode() throws Exception {
        Map<String, Object> map = Maps.newHashMap();
        // map.put("userCode", StringUtils.escapeSql("%"));
        //map.put("deptCode","");
        map.put("pageSize", 20);
        map.put("pageNumber", 1);

        Page<Map<String, Object>> userDtoPage = ApplicationContextHolder.getBean(UserService.class).pageByCode(map);
        //  Assume.assumeTrue(userDtoPage.getTotalElements()==112);
    }

    @Test
    public void testFindOneByUserId() throws Exception {
        String userId = "039a888b-7ce7-46b9-9203-67c2ca1727c7";
        Map<String, Object> returnMap = ApplicationContextHolder.getBean(UserService.class).findOneByUserId(userId);
        Assume.assumeTrue(!CollectionUtils.isEmpty(returnMap));
    }

    @Test
    public void testUpdate() throws Exception {
        Map<String, Object> userMap = Maps.newHashMap();
        userMap.put("userId", "e1cb9cd2-d715-49df-925c-2a9b089c07b5");
        userMap.put("address", "");
        userMap.put("age", 0);
        userMap.put("birthday", null);
        userMap.put("callName", "");
        userMap.put("departmentCode", "");
        userMap.put("email", "");
        userMap.put("folkCode", "");
        userMap.put("idCardNo", "");
        userMap.put("intro", "");
        userMap.put("locus", "");
        userMap.put("marryStateCode", "");
        userMap.put("mobilePhone", "");
        userMap.put("name", "1231");
        userMap.put("password", "");
        userMap.put("qq", "qq");
        userMap.put("sexCode", "");
        userMap.put("telephone", "");
        userMap.put("userCode", "13123");
        Integer state = ApplicationContextHolder.getBean(UserService.class).update(userMap);
        /**
         * address
         :
         ""
         age
         :
         "qwe"
         birthday
         :
         ""
         callName
         :
         ""
         departmentCode
         :
         ""
         departmentName
         :
         ""
         email
         :
         ""
         folkCode
         :
         ""
         idCardNo
         :
         ""
         intro
         :
         " "
         locus
         :
         " "
         marryStateCode
         :
         ""
         mobilePhone
         :
         ""
         name
         :
         "1231"
         password
         :
         ""
         qq
         :
         "wqe"
         sexCode
         :
         "1"
         telephone
         :
         "2"
         userCode
         :
         "13123"
         userId
         :
         "e1cb9cd2-d715-49df-925c-2a9b089c07b5"
         */
        Assume.assumeTrue(state == 1);

    }

    @Test
    public void testDeleteByIds() throws Exception {
        String ids = "5af22caa-50ff-45c8-a476-338eb744f475";

        ApplicationContextHolder.getBean(UserService.class).deleteByIds(ids);
        // Assume.assumeTrue(state==1);
    }

    @Test
    public void testInsert() throws Exception {
        Map<String, Object> userMap = Maps.newHashMap();
        userMap.put("address", "address");
        userMap.put("age", "1");
        userMap.put("birthday", DateUtils.parseDate("2015-06-07", "yyyy-MM-dd"));
        userMap.put("callName", "苹果");
        userMap.put("departmentCode", "1003");
        userMap.put("email", "abc@163.com");
        userMap.put("folkCode", "folkCode");
        userMap.put("idCardNo", "idCardNo");
        userMap.put("intro", "intro");
        userMap.put("locus", "locus");
        userMap.put("marryStateCode", "marryStateCode");
        userMap.put("mobilePhone", "mobilePhone");
        userMap.put("name", "name");
        userMap.put("password", "123456");
        userMap.put("qq", "qq");
        userMap.put("sexCode", "sexCode");
        userMap.put("telephone", "telephone");
        userMap.put("userCode", "userCode");
        Integer state = ApplicationContextHolder.getBean(UserService.class).insert(userMap);
        Assume.assumeTrue(state == 1);
//        address|true|String|地址
//        age|true|Long|年龄
//        birthday|true|Date|出生日期
//        callName|true|String|昵称
//        departmentCode|true|String|部门代码
//        email|true|String|邮箱
//        folkCode|true|String|民族代码
//        idCardNo|true|String|身份证号码
//        intro|true|String|简介
//        locus|true|String|现居住地
//        marryStateCode|true|String|婚姻状态代码
//        mobilePhone|true|String|手机
//        name|true|String|名称
//        password|true|String|密码
//        qq|true|String|QQ号码
//        sexCode|true|String|性别代码
//        telephone|true|String|联系电话
//        userCode|true|String|用户代码
    }

}