package top.cardone.api.vx.usercenter.userAddress

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserAddressService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0004 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.address = input?.address
		newInput?.areaCode = input?.areaCode
		newInput?.areaId = input?.areaId
		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.cityCode = input?.cityCode
		newInput?.cityId = input?.cityId
		newInput?.countryCode = input?.countryCode
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdById = input?.createdById
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.endDate = input?.endDate
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.isDefault = input?.isDefault
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedById = input?.lastModifiedById
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.personalCode = input?.personalCode
		newInput?.personalId = input?.personalId
		newInput?.provinceCode = input?.provinceCode
		newInput?.provinceId = input?.provinceId
		newInput?.regionCode = input?.regionCode
		newInput?.regionId = input?.regionId
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.typeCode = input?.typeCode
		newInput?.userAddressId = input?.userAddressId
		newInput?.userCode = input?.userCode
		newInput?.userId = input?.userId
		newInput?.version = input?.version

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userAddressId)) {
//          throw new CodeException("userAddressId required", "用户与地址标识必填")
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "用户与地址名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "用户与地址名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "用户与地址名称需小于{0}个字符", 255)
//      }

		def readOne = ["userAddressCode": input.userAddressCode, "object_id": "userAddressId", "dataStateCode": "1"]

		def dbUserAddressId = ApplicationContextHolder.getBean(UserAddressService.class).readOne(String.class, readOne)

		if (!StringUtils.equals(dbUserAddressId, input.userAddressId)) {
			throw new CodeException("userAddressId already exists", "用户与地址编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserAddressService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]        
    }
}