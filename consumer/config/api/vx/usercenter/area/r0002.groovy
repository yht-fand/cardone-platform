package api.vx.usercenter.area

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.AreaService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class r0002 {
    def input(input) {
        input
    }

    def validation(input) {
    }

    def func(input) {
		ApplicationContextHolder.getBean(AreaService.class).findListByKeyword(input)
    }

    def output(output) {
        def newOutput = []
		
        for (def outputItem : output) {
			newOutput.add(['label': outputItem['name'], 'value': outputItem['area_code']])
        }

        newOutput
    }
}