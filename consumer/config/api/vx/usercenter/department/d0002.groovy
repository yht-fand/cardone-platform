package api.vx.usercenter.department

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.DepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 {
    def input(input) {
        def departmentIds = input?.departmentIds?.split(",")

        if (!departmentIds) {
            throw new CodeException("departmentIds required", "部门标识集合必填")
        }

        def departmentIdList = []

        for (def departmentId : departmentIds) {
            departmentIdList.add(["departmentId": departmentId, "dataStateCode": "0", "endDate": new Date()])
        }

        ["departmentIds": departmentIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['deleteCounts': ApplicationContextHolder.getBean(DepartmentService.class).deleteListCache(input?.departmentIds)]
    }

    def output(output) {
        output
    }
}