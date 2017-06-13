package api.vx.usercenter.area

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.AreaService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0002 {
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
//      if (StringUtils.isBlank(input?.areaId)) {
//          throw new CodeException("areaId required", "地区标识必填")
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

		def readOne = ["areaCode": input.areaCode, "object_id": "areaId"]

		String dbAreaId = ApplicationContextHolder.getBean(AreaService.class).readOne(String.class, readOne)

		if ((dbAreaId != null) && !StringUtils.equals(dbAreaId, input.areaId)) {
			throw new CodeException("areaId already exists", "地区编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(AreaService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]
    }
}