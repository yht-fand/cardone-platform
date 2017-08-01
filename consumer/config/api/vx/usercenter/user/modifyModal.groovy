package top.cardone.api.vx.usercenter.user

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal implements java.io.Serializable {
    def input(input) {
        ["userId": input.userId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userId)) {
//          throw new CodeException("userId required", "用户标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserService.class).findOneByUserId(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput?.address = output?.address
		newOutput?.age = output?.age
		newOutput?.aliasName = output?.alias_name
		newOutput?.areaCode = output?.area_code
		newOutput?.batchNo = output?.batch_no
		newOutput?.beginDate = output?.begin_date
		newOutput?.birthday = output?.birthday
		newOutput?.callName = output?.call_name
		newOutput?.cityCode = output?.city_code
		newOutput?.companyName = output?.company_name
		newOutput?.contact = output?.contact
		newOutput?.countryCode = output?.country_code
		newOutput?.createdByCode = output?.created_by_code
		newOutput?.createdById = output?.created_by_id
		newOutput?.createdDate = output?.created_date
		newOutput?.dataStateCode = output?.data_state_code
		newOutput?.departmentCode = output?.department_code
		newOutput?.departmentId = output?.department_id
		newOutput?.diplomaCode = output?.diploma_code
		newOutput?.email = output?.email
		newOutput?.endDate = output?.end_date
		newOutput?.firstName = output?.first_name
		newOutput?.flagCode = output?.flag_code
		newOutput?.flagObjectCode = output?.flag_object_code
		newOutput?.folkCode = output?.folk_code
		newOutput?.idCardCode = output?.id_card_code
		newOutput?.idCardNo = output?.id_card_no
		newOutput?.intro = output?.intro
		newOutput?.jsonData = output?.json_data
		newOutput?.lastModifiedByCode = output?.last_modified_by_code
		newOutput?.lastModifiedById = output?.last_modified_by_id
		newOutput?.lastModifiedDate = output?.last_modified_date
		newOutput?.lastName = output?.last_name
		newOutput?.locus = output?.locus
		newOutput?.marryStateCode = output?.marry_state_code
		newOutput?.mobilePhone = output?.mobile_phone
		newOutput?.name = output?.name
		newOutput?.namePinyin = output?.name_pinyin
		newOutput?.orderBy = output?.order_by_
		newOutput?.orgCode = output?.org_code
		newOutput?.password = output?.password_
		newOutput?.passwordSalt = output?.password_salt
		newOutput?.personalCode = output?.personal_code
		newOutput?.personalId = output?.personal_id
		newOutput?.portraitUrl = output?.portrait_url
		newOutput?.privatePassword = output?.private_password
		newOutput?.privatePasswordSalt = output?.private_password_salt
		newOutput?.professionCode = output?.profession_code
		newOutput?.provinceCode = output?.province_code
		newOutput?.qq = output?.qq
		newOutput?.regionCode = output?.region_code
		newOutput?.remark = output?.remark
		newOutput?.sexCode = output?.sex_code
		newOutput?.siteCode = output?.site_code
		newOutput?.stateCode = output?.state_code
		newOutput?.systemInfoCode = output?.system_info_code
		newOutput?.telephone = output?.telephone
		newOutput?.userCode = output?.user_code
		newOutput?.userId = output?.user_id
		newOutput?.version = output?.version_

        newOutput
    }
}