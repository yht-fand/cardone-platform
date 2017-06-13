package api.vx.usercenter.user

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 {
    def input(input) {
        def userIds = input?.userIds?.split(",")

        if (!userIds) {
            throw new CodeException("userIds required", "用户标识集合必填")
        }

        def userIdList = []

        for (def userId : userIds) {
            userIdList.add(["userId": userId, "dataStateCode": "0", "endDate": new Date()])
        }

        ["userIds": userIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['deleteCounts': ApplicationContextHolder.getBean(UserService.class).deleteListCache(input?.userIds)]
    }

    def output(output) {
        output
    }
}