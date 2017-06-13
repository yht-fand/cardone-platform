package api.vx.usercenter.province

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.ProvinceService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0004 {
    def input(input) {
        def newInput = [:]

		newInput['batchNo'] = input['batchNo']
		newInput['beginDate'] = input['beginDate']
		newInput['countryCode'] = input['countryCode']
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
		newInput['name'] = input['name']
		newInput['orderBy'] = input['orderBy']
		newInput['orgCode'] = input['orgCode']
		newInput['personalCode'] = input['personalCode']
		newInput['provinceCode'] = input['provinceCode']
		newInput['provinceId'] = input['provinceId']
		newInput['siteCode'] = input['siteCode']
		newInput['stateCode'] = input['stateCode']
		newInput['systemInfoCode'] = input['systemInfoCode']
		newInput['version'] = input['version']

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.provinceCode)) {
//          throw new CodeException("provinceCode required", "省份编号必填")
//      }
//
//      if (StringUtils.length(input?.provinceCode) < 4) {
//          throw new CodeException("provinceCode minlength", "省份编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.provinceCode) > 255) {
//          throw new CodeException("provinceCode maxlength", "省份编号需小于{0}个字符", 255)
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "省份名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "省份名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "省份名称需小于{0}个字符", 255)
//      }
		
		def readOne = ['provinceCode': input.provinceCode]

		def count = ApplicationContextHolder.getBean(ProvinceService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("provinceCode already exists", "省份编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(ProvinceService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['data': output]        
    }
}