package api.vx.usercenter.area

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.AreaService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 {
    def input(input) {
        def areaIds = input?.areaIds?.split(",")

        if (!areaIds) {
            throw new CodeException("areaIds required", "地区标识集合必填")
        }

        def areaIdList = []

        for (def areaId : areaIds) {
            areaIdList.add(["areaId": areaId, "dataStateCode": "0", "endDate": new Date()])
        }

        ["areaIds": areaIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['data': ApplicationContextHolder.getBean(AreaService.class).updateListCache(input?.areaIds)]
    }

    def output(output) {
        output
    }
}