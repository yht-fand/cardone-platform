package api.vx.usercenter.province

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.ProvinceService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class r0002 {
    def input(input) {
        input
    }

    def validation(input) {
    }

    def func(input) {
		ApplicationContextHolder.getBean(ProvinceService.class).findListByKeyword(input)
    }

    def output(output) {
        def newOutput = []
		
        for (def outputItem : output) {
			newOutput.add(['label': outputItem['name'], 'value': outputItem['province_code']])
        }

        newOutput
    }
}