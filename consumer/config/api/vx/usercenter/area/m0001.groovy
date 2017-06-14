package api.vx.usercenter.area

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.AreaService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class m0001 implements java.io.Serializable {
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
		ApplicationContextHolder.getBean(AreaService.class).findOne(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput['areaCode'] = output['area_code']
		newOutput['areaId'] = output['area_id']
		newOutput['batchNo'] = output['batch_no']
		newOutput['beginDate'] = output['begin_date']
		newOutput['cityCode'] = output['city_code']
		newOutput['countryCode'] = output['country_code']
		newOutput['createdByCode'] = output['created_by_code']
		newOutput['createdDate'] = output['created_date']
		newOutput['dataStateCode'] = output['data_state_code']
		newOutput['departmentCode'] = output['department_code']
		newOutput['endDate'] = output['end_date']
		newOutput['flagCode'] = output['flag_code']
		newOutput['flagObjectCode'] = output['flag_object_code']
		newOutput['jsonData'] = output['json_data']
		newOutput['lastModifiedByCode'] = output['last_modified_by_code']
		newOutput['lastModifiedDate'] = output['last_modified_date']
		newOutput['name'] = output['name']
		newOutput['orderBy'] = output['order_by_']
		newOutput['orgCode'] = output['org_code']
		newOutput['personalCode'] = output['personal_code']
		newOutput['provinceCode'] = output['province_code']
		newOutput['siteCode'] = output['site_code']
		newOutput['stateCode'] = output['state_code']
		newOutput['systemInfoCode'] = output['system_info_code']
		newOutput['version'] = output['version_']

        newOutput
    }
}