package api.vx.usercenter.province

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.ProvinceService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 implements java.io.Serializable {
    def input(input) {
        def provinceIds = input?.provinceIds?.split(",")

        if (!provinceIds) {
            throw new CodeException("provinceIds required", "省份标识集合必填")
        }

        def provinceIdList = []

        for (def provinceId : provinceIds) {
            provinceIdList.add(["provinceId": provinceId, "dataStateCode": "0", "endDate": new Date()])
        }

        ["provinceIds": provinceIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['deleteCounts': ApplicationContextHolder.getBean(ProvinceService.class).deleteListCache(input?.provinceIds)]
    }

    def output(output) {
        output
    }
}