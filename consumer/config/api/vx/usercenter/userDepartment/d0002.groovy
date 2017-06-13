package api.vx.usercenter.userDepartment

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserDepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 {
    def input(input) {
        def userDepartmentIds = input?.userDepartmentIds?.split(",")

        if (!userDepartmentIds) {
            throw new CodeException("userDepartmentIds required", "用户与部门标识集合必填")
        }

        def userDepartmentIdList = []

        for (def userDepartmentId : userDepartmentIds) {
            userDepartmentIdList.add(["userDepartmentId": userDepartmentId, "dataStateCode": "0", "endDate": new Date()])
        }

        ["userDepartmentIds": userDepartmentIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['data': ApplicationContextHolder.getBean(UserDepartmentService.class).deleteListCache(input?.userDepartmentIds)]
    }

    def output(output) {
        output
    }
}