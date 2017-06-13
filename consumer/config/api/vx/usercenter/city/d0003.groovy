package api.vx.usercenter.city

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.CityService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 {
    def input(input) {
        def cityIds = input?.cityIds?.split(",")

        if (!cityIds) {
            throw new CodeException("cityIds required", "城市标识集合必填")
        }

        def cityIdList = []

        for (def cityId : cityIds) {
            cityIdList.add(["cityId": cityId, "dataStateCode": "0", "endDate": new Date()])
        }

        ["cityIds": cityIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['deleteCounts': ApplicationContextHolder.getBean(CityService.class).updateListCache(input?.cityIds)]
    }

    def output(output) {
        output
    }
}