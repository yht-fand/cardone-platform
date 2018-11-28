package top.cardone.api.vx.usercenter.userOrg

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserOrgService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0003 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdById = input?.createdById
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.endDate = input?.endDate
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedById = input?.lastModifiedById
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.orgId = input?.orgId
		newInput?.personalCode = input?.personalCode
		newInput?.personalId = input?.personalId
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.userCode = input?.userCode
		newInput?.userId = input?.userId
		newInput?.userOrgId = input?.userOrgId
		newInput?.version = input?.version

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userOrgCode)) {
//          throw new CodeException("userOrgCode required", "用户与组织编号必填")
//      }
//
//      if (StringUtils.length(input?.userOrgCode) < 4) {
//          throw new CodeException("userOrgCode minlength", "用户与组织编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.userOrgCode) > 255) {
//          throw new CodeException("userOrgCode maxlength", "用户与组织编号需小于{0}个字符", 255)
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
		
		def readOne = ['userOrgCode': input.userOrgCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(UserOrgService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("userOrgCode already exists", "用户与组织编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserOrgService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['insertCount': output]        
    }
}