package api.vx.usercenter.region

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.RegionService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 {
    def input(input) {
        def regionIds = input?.regionIds?.split(",")

        if (!regionIds) {
            throw new CodeException("regionIds required", "区域标识集合必填")
        }

        def regionIdList = []

        for (def regionId : regionIds) {
            regionIdList.add(["regionId": regionId, "dataStateCode": "0", "endDate": new Date()])
        }

        ["regionIds": regionIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['data': ApplicationContextHolder.getBean(RegionService.class).updateListCache(input?.regionIds)]
    }

    def output(output) {
        output
    }
}