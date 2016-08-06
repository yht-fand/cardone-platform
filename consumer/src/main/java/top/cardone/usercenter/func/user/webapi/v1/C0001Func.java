package top.cardone.usercenter.func.user.webapi.v1;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import top.cardone.context.util.MapUtils;
import top.cardone.core.CodeException;
import top.cardone.usercenter.service.UserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 用户 - 创建
 */
@Component("/web-api/v1/usercenter/user/c0001.json")
public class C0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> inputMap) {
        validate(inputMap);
        if (StringUtils.isBlank(org.apache.commons.collections.MapUtils.getString(inputMap, "age"))) {
            inputMap.put("age", null);
        }
        if (StringUtils.isBlank(org.apache.commons.collections.MapUtils.getString(inputMap, "birthday"))) {
            inputMap.put("birthday", null);
        }
        return ApplicationContextHolder.getBean(UserService.class).insert(inputMap);
    }
    private  void validate(Map<String,Object>  inputMap){

        if(StringUtils.isBlank(MapUtils.getString(inputMap,"userCode"))) {
            throw  new CodeException("用户编码不能为空！");
        }
        if(StringUtils.isBlank(MapUtils.getString(inputMap,"password"))) {
            throw  new CodeException("密码不能为空！");
        }

       int  count = ApplicationContextHolder.getBean(UserService.class).readOneByCondition(Integer.class,inputMap);

        if(count>0){
            throw  new CodeException("用户编号或身份证号码或联系电话已被注册");
        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"callName"))) {
            String callName= MapUtils.getString(inputMap,"callName");
            if(callName.length()>256){
                throw  new CodeException("昵称长度不能超过256！");
            }
        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"password"))) {
            String password= MapUtils.getString(inputMap,"password");
            if(password.length()<6||password.length()>16){
                throw  new CodeException("密码长度在6，16之间！");
            }
        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"email"))) {
            String email= MapUtils.getString(inputMap,"email");
            if(!this.checkEmail(email)){
                throw  new CodeException("邮箱格式不正确");
            }
            if(email.length()>256){
                throw  new CodeException("邮箱长度不能超过256！");
            }
        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"idCardNo"))) {
            String idCardNo= MapUtils.getString(inputMap,"idCardNo");
            if(this.isContainChinese(idCardNo)){
                throw new CodeException( "身份证包含中文！");
            }
            if(this.isMessyCode(idCardNo)){
                throw new CodeException("身份证号不能输入特殊字符，请输入正确身份证号码");
            }
        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"age"))) {
            String age= MapUtils.getString(inputMap,"age");
           if(!StringUtils.isNumeric(age)){
               throw new CodeException( "年龄必须为全数字！");
           }
        }
//        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"mobilePhone"))) {
//            String mobilePhone= MapUtils.getString(inputMap,"mobilePhone");
//            if(!this.checkPhone(mobilePhone)){
//                throw new CodeException( "请填写正确移动电话！");
//            }
//        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"qq"))) {
            String qq= MapUtils.getString(inputMap,"qq");
            if(!StringUtils.isNumeric(qq)){
                throw new CodeException( "qq必须为全数字！");
            }
        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"telephone"))) {

        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"address"))) {
            String address= MapUtils.getString(inputMap,"address");
            if(address.length()>256){
                throw  new CodeException("地址长度不能超过256！");
            }
        }
        if(StringUtils.isNoneBlank(MapUtils.getString(inputMap,"locus"))) {
            String locus= MapUtils.getString(inputMap,"locus");
            if(locus.length()>256){
                throw  new CodeException("现居住地长度不能超过256！");
            }
        }

    }
    private   static boolean checkEmail(String email) {
        Pattern pattern = Pattern.compile("^\\w+([-.]\\w+)*@\\w+([-]\\w+)*\\.(\\w+([-]\\w+)*\\.)*[a-z]{2,3}$");
        Matcher matcher = pattern.matcher(email);
        if (matcher.matches()) {
            return true;
        }
        return false;
    }
    /***
     * 验证特殊字符
     * @param name
     * @return
     */
    private static boolean isMessyCode(String name) {
        String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、? ]";
        Pattern pattern = Pattern.compile(regEx);
        Matcher matcher = pattern.matcher(name);
        if(matcher.find()){
            return true;
        }
        return false;

    }
    //判断输入的字符串是否包含中文
    private static boolean isContainChinese(String str) {
        Pattern p = Pattern.compile("[u4e00-u9fa5]");
        String regEx = "[\u4e00-\u9fa5]";
        Pattern pat = Pattern.compile(regEx);
        Matcher matcher = pat.matcher(str);
        boolean flg = false;
        if (matcher.find()) {
            flg = true;
        }
        return flg;
    }

}
