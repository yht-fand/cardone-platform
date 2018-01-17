package top.cardone.api.vx.usercenter.department

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.DepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0004 implements java.io.Serializable {
    def input(input) {
        def departmentIds = input?.departmentIds?.split(",")

        if (!departmentIds) {
            throw new CodeException("departmentIds required", "部门标识集合必填")
        }

        def departmentIdList = []

        for (def departmentId : departmentIds) {
            departmentIdList.add(["departmentId": departmentId, "flagCode": "input", "dataStateCode": "0", "endDate": new Date()])
        }

        ["departmentIds": departmentIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ApplicationContextHolder.getBean(DepartmentService.class).updateListCache(input?.departmentIds)
    }

    def output(output) {
        ['deleteCounts': output]
    }
}