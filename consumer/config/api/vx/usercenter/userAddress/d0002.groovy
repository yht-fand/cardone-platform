package api.vx.usercenter.userAddress

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserAddressService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 {
    def input(input) {
        def userAddressIds = input?.userAddressIds?.split(",")

        if (!userAddressIds) {
            throw new CodeException("userAddressIds required", "用户与地址标识集合必填")
        }

        def userAddressIdList = []

        for (def userAddressId : userAddressIds) {
            userAddressIdList.add(["userAddressId": userAddressId, "dataStateCode": "0", "endDate": new Date()])
        }

        ["userAddressIds": userAddressIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['deleteCounts': ApplicationContextHolder.getBean(UserAddressService.class).deleteListCache(input?.userAddressIds)]
    }

    def output(output) {
        output
    }
}