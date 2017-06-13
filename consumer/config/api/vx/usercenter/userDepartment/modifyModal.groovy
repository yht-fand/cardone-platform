package api.vx.usercenter.userDepartment

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserDepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal {
    def input(input) {
        ["userDepartmentId": input.userDepartmentId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userDepartmentId)) {
//          throw new CodeException("userDepartmentId required", "用户与部门标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserDepartmentService.class).findOne(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput['batchNo'] = output['batch_no']
		newOutput['beginDate'] = output['begin_date']
		newOutput['createdByCode'] = output['created_by_code']
		newOutput['createdDate'] = output['created_date']
		newOutput['dataStateCode'] = output['data_state_code']
		newOutput['departmentCode'] = output['department_code']
		newOutput['endDate'] = output['end_date']
		newOutput['flagCode'] = output['flag_code']
		newOutput['flagObjectCode'] = output['flag_object_code']
		newOutput['jsonData'] = output['json_data']
		newOutput['lastModifiedByCode'] = output['last_modified_by_code']
		newOutput['lastModifiedDate'] = output['last_modified_date']
		newOutput['orderBy'] = output['order_by_']
		newOutput['orgCode'] = output['org_code']
		newOutput['personalCode'] = output['personal_code']
		newOutput['siteCode'] = output['site_code']
		newOutput['stateCode'] = output['state_code']
		newOutput['systemInfoCode'] = output['system_info_code']
		newOutput['userCode'] = output['user_code']
		newOutput['userDepartmentId'] = output['user_department_id']
		newOutput['version'] = output['version_']

        newOutput
    }
}