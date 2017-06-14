package api.vx.usercenter.province

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.ProvinceService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0001 implements java.io.Serializable {
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
//      if (StringUtils.isBlank(input?.provinceId)) {
//          throw new CodeException("provinceId required", "省份标识必填")
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

		def readOne = ["provinceCode": input.provinceCode, "object_id": "provinceId"]

		String dbProvinceId = ApplicationContextHolder.getBean(ProvinceService.class).readOne(String.class, readOne)

		if ((dbProvinceId != null) && !StringUtils.equals(dbProvinceId, input.provinceId)) {
			throw new CodeException("provinceId already exists", "省份编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(ProvinceService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]
    }
}