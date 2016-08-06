package top.cardone.usercenter.func.user.pageapi;

import com.google.common.collect.HashBasedTable;
import com.google.common.collect.Table;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.CodeException;
import top.cardone.core.util.func.Func1;
import top.cardone.usercenter.service.UserService;

import java.util.Map;

/**
 * 用户 - 修改
 */
@Component("/usercenter/user/viewModal.json")
public class ViewModalFunc implements Func1<Object, Map<String, Object>> {
    private Table<String, String, String> outConfigTable;

    public ViewModalFunc() {
        outConfigTable = HashBasedTable.create();
        outConfigTable.put("ADDRESS", "newName", "address");
        outConfigTable.put("AGE", "newName", "age");
        outConfigTable.put("BIRTHDAY", "newName", "birthday");
        outConfigTable.put("CALL_NAME", "newName", "callName");
        outConfigTable.put("CREATED_BY_CODE", "newName", "createdByCode");
        outConfigTable.put("CREATED_BY_NAME", "newName", "createdByName");
        outConfigTable.put("CREATED_DATE", "newName", "createdDate");
        outConfigTable.put("DEPARTMENT_CODE", "newName", "departmentCode");
        outConfigTable.put("DEPARTMENT_NAME", "newName", "departmentName");
        outConfigTable.put("EMAIL", "newName", "email");
        //outConfigTable.put("FOLK_NAME", "newName", "folkName");
        //outConfigTable.put("FOLK_CODE", "newName", "folkCode");
        outConfigTable.put("FOLK_NAME", "newName", "idCardNo");
        outConfigTable.put("INTRO", "newName", "intro");
        outConfigTable.put("LAST_MODIFIED_BY_CODE", "newName", "lastModifiedByCode");
        outConfigTable.put("LAST_MODIFIED_BY_NAME", "newName", "lastModifiedByName");
        outConfigTable.put("LAST_MODIFIED_DATE", "newName", "lastModifiedDate");
        outConfigTable.put("LOCUS", "newName", "locus");
        outConfigTable.put("MARRY_STATE_CODE", "newName", "marryStateCode");
        outConfigTable.put("MARRY_STATE_NAME", "newName", "marryStateName");
        outConfigTable.put("MOBILE_PHONE", "newName", "mobilePhone");
        outConfigTable.put("NAME", "newName", "name");
        outConfigTable.put("QQ", "newName", "qq");
        outConfigTable.put("SEX_CODE", "newName", "sexCode");
        outConfigTable.put("SEX_NAME", "newName", "sexName");
        outConfigTable.put("TELEPHONE", "newName", "telephone");
        outConfigTable.put("USER_CODE", "newName", "userCode");
        outConfigTable.put("USER_ID", "newName", "userId");
    }

    @Override
    public Object func(Map<String, Object> inputMap) {
        String userId = MapUtils.getString(inputMap, "userId");
        if (StringUtils.isBlank(userId)) {
            throw new CodeException("用户标识为空!");
        }
        Map<String, Object> userMap = ApplicationContextHolder.getBean(UserService.class).findOneByUserId(userId);
        Map<String, Object> newUserMap = top.cardone.context.util.MapUtils.newHashMap(userMap, outConfigTable);
        return newUserMap;
    }
}
