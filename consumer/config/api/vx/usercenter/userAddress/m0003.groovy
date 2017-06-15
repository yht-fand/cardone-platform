package top.cardone.api.vx.usercenter.userAddress

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserAddressService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class m0003 implements java.io.Serializable {
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
		ApplicationContextHolder.getBean(UserAddressService.class).findOne(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput?.areaCode = output?.area_code
		newOutput?.batchNo = output?.batch_no
		newOutput?.beginDate = output?.begin_date
		newOutput?.cityCode = output?.city_code
		newOutput?.countryCode = output?.country_code
		newOutput?.createdByCode = output?.created_by_code
		newOutput?.createdDate = output?.created_date
		newOutput?.dataStateCode = output?.data_state_code
		newOutput?.departmentCode = output?.department_code
		newOutput?.endDate = output?.end_date
		newOutput?.flagCode = output?.flag_code
		newOutput?.flagObjectCode = output?.flag_object_code
		newOutput?.isDefault = output?.is_default
		newOutput?.jsonData = output?.json_data
		newOutput?.lastModifiedByCode = output?.last_modified_by_code
		newOutput?.lastModifiedDate = output?.last_modified_date
		newOutput?.orderBy = output?.order_by_
		newOutput?.orgCode = output?.org_code
		newOutput?.personalCode = output?.personal_code
		newOutput?.provinceCode = output?.province_code
		newOutput?.regionCode = output?.region_code
		newOutput?.siteCode = output?.site_code
		newOutput?.stateCode = output?.state_code
		newOutput?.systemInfoCode = output?.system_info_code
		newOutput?.typeCode = output?.type_code
		newOutput?.userAddressId = output?.user_address_id
		newOutput?.userCode = output?.user_code
		newOutput?.version = output?.version_

        newOutput
    }
}