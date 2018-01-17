package top.cardone.api.vx.usercenter.userDepartment

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserDepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0001 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.c1DepartmentCode = input?.c1DepartmentCode
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdById = input?.createdById
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.departmentId = input?.departmentId
		newInput?.endDate = input?.endDate
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedById = input?.lastModifiedById
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.personalCode = input?.personalCode
		newInput?.personalId = input?.personalId
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.userCode = input?.userCode
		newInput?.userDepartmentId = input?.userDepartmentId
		newInput?.userId = input?.userId
		newInput?.version = input?.version

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userDepartmentCode)) {
//          throw new CodeException("userDepartmentCode required", "用户与部门编号必填")
//      }
//
//      if (StringUtils.length(input?.userDepartmentCode) < 4) {
//          throw new CodeException("userDepartmentCode minlength", "用户与部门编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.userDepartmentCode) > 255) {
//          throw new CodeException("userDepartmentCode maxlength", "用户与部门编号需小于{0}个字符", 255)
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "用户与部门名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "用户与部门名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "用户与部门名称需小于{0}个字符", 255)
//      }
		
		def readOne = ['userDepartmentCode': input.userDepartmentCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(UserDepartmentService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("userDepartmentCode already exists", "用户与部门编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserDepartmentService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['insertCount': output]        
    }
}