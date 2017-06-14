package api.vx.usercenter.userDepartment

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserDepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class r0002 implements java.io.Serializable {
    def input(input) {
        input
    }

    def validation(input) {
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserDepartmentService.class).findListByKeyword(input)
    }

    def output(output) {
        def newOutput = []
		
        for (def outputItem : output) {
			newOutput.add(['label': outputItem['name'], 'value': outputItem['userDepartment_code']])
        }

        newOutput
    }
}