package api.vx.usercenter.openUser

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.OpenUserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0004 {
    def input(input) {
        def newInput = [:]

		newInput['batchNo'] = input['batchNo']
		newInput['beginDate'] = input['beginDate']
		newInput['clientId'] = input['clientId']
		newInput['createdByCode'] = input['createdByCode']
		newInput['createdDate'] = input['createdDate']
		newInput['dataStateCode'] = input['dataStateCode']
		newInput['departmentCode'] = input['departmentCode']
		newInput['endDate'] = input['endDate']
		newInput['flagCode'] = input['flagCode']
		newInput['flagObjectCode'] = input['flagObjectCode']
		newInput['jsonData'] = input['jsonData']
		newInput['lastModifiedByCode'] = input['lastModifiedByCode']
		newInput['lastModifiedDate'] = input['lastModifiedDate']
		newInput['openUserId'] = input['openUserId']
		newInput['orderBy'] = input['orderBy']
		newInput['orgCode'] = input['orgCode']
		newInput['personalCode'] = input['personalCode']
		newInput['siteCode'] = input['siteCode']
		newInput['stateCode'] = input['stateCode']
		newInput['systemInfoCode'] = input['systemInfoCode']
		newInput['userCode'] = input['userCode']
		newInput['version'] = input['version']

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.openUserId)) {
//          throw new CodeException("openUserId required", "开放用户标识必填")
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "开放用户名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "开放用户名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "开放用户名称需小于{0}个字符", 255)
//      }

		def readOne = ["openUserCode": input.openUserCode, "object_id": "openUserId"]

		String dbOpenUserId = ApplicationContextHolder.getBean(OpenUserService.class).readOne(String.class, readOne)

		if ((dbOpenUserId != null) && !StringUtils.equals(dbOpenUserId, input.openUserId)) {
			throw new CodeException("openUserId already exists", "开放用户编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(OpenUserService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]
    }
}