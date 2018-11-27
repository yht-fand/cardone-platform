package top.cardone.api.vx.usercenter.region

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.RegionService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0002 implements java.io.Serializable {
    def input(input) {
        def regionIds = input?.regionIds?.split(",")

        if (!regionIds) {
            throw new CodeException("regionIds required", "区域标识集合必填")
        }

        def regionIdList = []

        for (def regionId : regionIds) {
            regionIdList.add(["regionId": regionId, "flagCode": "input", "dataStateCode": "0", "endDate": new Date()])
        }

        ["regionIds": regionIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ApplicationContextHolder.getBean(RegionService.class).updateListCache(input?.regionIds)
    }

    def output(output) {
        ['deleteCounts': output]
    }
}