package top.cardone.api.vx.usercenter.city

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.CityService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0001 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.cityCode = input?.cityCode
		newInput?.cityId = input?.cityId
		newInput?.countryCode = input?.countryCode
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.endDate = input?.endDate
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.name = input?.name
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.personalCode = input?.personalCode
		newInput?.provinceCode = input?.provinceCode
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.version = input?.version

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.cityCode)) {
//          throw new CodeException("cityCode required", "城市编号必填")
//      }
//
//      if (StringUtils.length(input?.cityCode) < 4) {
//          throw new CodeException("cityCode minlength", "城市编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.cityCode) > 255) {
//          throw new CodeException("cityCode maxlength", "城市编号需小于{0}个字符", 255)
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "城市名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "城市名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "城市名称需小于{0}个字符", 255)
//      }
		
		def readOne = ['cityCode': input.cityCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(CityService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("cityCode already exists", "城市编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(CityService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['insertCount': output]        
    }
}