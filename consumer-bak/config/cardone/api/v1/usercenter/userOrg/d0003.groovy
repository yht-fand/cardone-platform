package top.cardone.api.vx.usercenter.userOrg

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserOrgService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0003 implements java.io.Serializable {
    def input(input) {
        def userOrgIds = input?.userOrgIds?.split(",")

        if (!userOrgIds) {
            throw new CodeException("userOrgIds required", "用户与组织标识集合必填")
        }

        def userOrgIdList = []

        for (def userOrgId : userOrgIds) {
            userOrgIdList.add(["userOrgId": userOrgId, "flagCode": "input", "dataStateCode": "0", "endDate": new Date()])
        }

        ["userOrgIds": userOrgIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ApplicationContextHolder.getBean(UserOrgService.class).updateListCache(input?.userOrgIds)
    }

    def output(output) {
        ['deleteCounts': output]
    }
}