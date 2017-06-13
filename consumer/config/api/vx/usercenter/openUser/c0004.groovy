package api.vx.usercenter.openUser

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.OpenUserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0004 {
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
//      if (StringUtils.isBlank(input?.openUserCode)) {
//          throw new CodeException("openUserCode required", "开放用户编号必填")
//      }
//
//      if (StringUtils.length(input?.openUserCode) < 4) {
//          throw new CodeException("openUserCode minlength", "开放用户编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.openUserCode) > 255) {
//          throw new CodeException("openUserCode maxlength", "开放用户编号需小于{0}个字符", 255)
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
		
		def readOne = ['openUserCode': input.openUserCode]

		def count = ApplicationContextHolder.getBean(OpenUserService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("openUserCode already exists", "开放用户编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(OpenUserService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['data': output]        
    }
}