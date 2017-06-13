package api.vx.usercenter.userOrg

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserOrgService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0003 {
    def input(input) {
        def newInput = [:]

		newInput['batchNo'] = input['batchNo']
		newInput['beginDate'] = input['beginDate']
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
		newInput['orderBy'] = input['orderBy']
		newInput['orgCode'] = input['orgCode']
		newInput['personalCode'] = input['personalCode']
		newInput['siteCode'] = input['siteCode']
		newInput['stateCode'] = input['stateCode']
		newInput['systemInfoCode'] = input['systemInfoCode']
		newInput['userCode'] = input['userCode']
		newInput['userOrgId'] = input['userOrgId']
		newInput['version'] = input['version']

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userOrgId)) {
//          throw new CodeException("userOrgId required", "用户与组织标识必填")
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "用户与组织名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "用户与组织名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "用户与组织名称需小于{0}个字符", 255)
//      }

		def readOne = ["userOrgCode": input.userOrgCode, "object_id": "userOrgId"]

		String dbUserOrgId = ApplicationContextHolder.getBean(UserOrgService.class).readOne(String.class, readOne)

		if ((dbUserOrgId != null) && !StringUtils.equals(dbUserOrgId, input.userOrgId)) {
			throw new CodeException("userOrgId already exists", "用户与组织编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserOrgService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]
    }
}