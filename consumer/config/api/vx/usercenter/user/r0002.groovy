package api.vx.usercenter.user

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class r0002 implements java.io.Serializable {
    def input(input) {
        input
    }

    def validation(input) {
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserService.class).findListByKeyword(input)
    }

    def output(output) {
        def newOutput = []
		
        for (def outputItem : output) {
			newOutput.add(['label': outputItem['name'], 'value': outputItem['user_code']])
        }

        newOutput
    }
}