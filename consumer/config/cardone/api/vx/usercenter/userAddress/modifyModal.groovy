package top.cardone.api.vx.usercenter.userAddress

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserAddressService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal implements java.io.Serializable {
    def input(input) {
        ["userAddressId": input.userAddressId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userAddressId)) {
//          throw new CodeException("userAddressId required", "用户与地址标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserAddressService.class).findOneByUserAddressId(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput?.address = output?.address
		newOutput?.areaCode = output?.area_code
		newOutput?.areaId = output?.area_id
		newOutput?.batchNo = output?.batch_no
		newOutput?.beginDate = output?.begin_date
		newOutput?.cityCode = output?.city_code
		newOutput?.cityId = output?.city_id
		newOutput?.countryCode = output?.country_code
		newOutput?.createdByCode = output?.created_by_code
		newOutput?.createdById = output?.created_by_id
		newOutput?.createdDate = output?.created_date
		newOutput?.dataStateCode = output?.data_state_code
		newOutput?.departmentCode = output?.department_code
		newOutput?.endDate = output?.end_date
		newOutput?.flagCode = output?.flag_code
		newOutput?.flagObjectCode = output?.flag_object_code
		newOutput?.isDefault = output?.is_default
		newOutput?.jsonData = output?.json_data
		newOutput?.lastModifiedByCode = output?.last_modified_by_code
		newOutput?.lastModifiedById = output?.last_modified_by_id
		newOutput?.lastModifiedDate = output?.last_modified_date
		newOutput?.orderBy = output?.order_by_
		newOutput?.orgCode = output?.org_code
		newOutput?.personalCode = output?.personal_code
		newOutput?.personalId = output?.personal_id
		newOutput?.provinceCode = output?.province_code
		newOutput?.provinceId = output?.province_id
		newOutput?.regionCode = output?.region_code
		newOutput?.regionId = output?.region_id
		newOutput?.siteCode = output?.site_code
		newOutput?.stateCode = output?.state_code
		newOutput?.systemInfoCode = output?.system_info_code
		newOutput?.typeCode = output?.type_code
		newOutput?.userAddressId = output?.user_address_id
		newOutput?.userCode = output?.user_code
		newOutput?.userId = output?.user_id
		newOutput?.version = output?.version_

        newOutput
    }
}