package api.vx.usercenter.area

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.AreaService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0001 {
    def input(input) {
        def newInput = [:]

		newInput['areaCode'] = input['areaCode']
		newInput['areaId'] = input['areaId']
		newInput['batchNo'] = input['batchNo']
		newInput['beginDate'] = input['beginDate']
		newInput['cityCode'] = input['cityCode']
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
		newInput['siteCode'] = input['siteCode']
		newInput['stateCode'] = input['stateCode']
		newInput['systemInfoCode'] = input['systemInfoCode']
		newInput['version'] = input['version']

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.areaCode)) {
//          throw new CodeException("areaCode required", "地区编号必填")
//      }
//
//      if (StringUtils.length(input?.areaCode) < 4) {
//          throw new CodeException("areaCode minlength", "地区编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.areaCode) > 255) {
//          throw new CodeException("areaCode maxlength", "地区编号需小于{0}个字符", 255)
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "地区名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "地区名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "地区名称需小于{0}个字符", 255)
//      }
		
		def readOne = ['areaCode': input.areaCode]

		def count = ApplicationContextHolder.getBean(AreaService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("areaCode already exists", "地区编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(AreaService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['insertCount': output]
    }
}