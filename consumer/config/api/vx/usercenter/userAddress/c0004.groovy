package top.cardone.api.vx.usercenter.userAddress

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserAddressService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0004 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.areaCode = input?.areaCode
		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.cityCode = input?.cityCode
		newInput?.countryCode = input?.countryCode
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.endDate = input?.endDate
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.isDefault = input?.isDefault
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.personalCode = input?.personalCode
		newInput?.provinceCode = input?.provinceCode
		newInput?.regionCode = input?.regionCode
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.typeCode = input?.typeCode
		newInput?.userAddressId = input?.userAddressId
		newInput?.userCode = input?.userCode
		newInput?.version = input?.version

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userAddressCode)) {
//          throw new CodeException("userAddressCode required", "用户与地址编号必填")
//      }
//
//      if (StringUtils.length(input?.userAddressCode) < 4) {
//          throw new CodeException("userAddressCode minlength", "用户与地址编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.userAddressCode) > 255) {
//          throw new CodeException("userAddressCode maxlength", "用户与地址编号需小于{0}个字符", 255)
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
		
		def readOne = ['userAddressCode': input.userAddressCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(UserAddressService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("userAddressCode already exists", "用户与地址编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserAddressService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['insertCount': output]        
    }
}