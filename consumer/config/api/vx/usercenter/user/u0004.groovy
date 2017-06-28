package top.cardone.api.vx.usercenter.user

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.UserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0004 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.address = input?.address
		newInput?.age = input?.age
		newInput?.aliasName = input?.aliasName
		newInput?.areaCode = input?.areaCode
		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.birthday = input?.birthday
		newInput?.callName = input?.callName
		newInput?.cityCode = input?.cityCode
		newInput?.companyName = input?.companyName
		newInput?.contact = input?.contact
		newInput?.countryCode = input?.countryCode
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.diplomaCode = input?.diplomaCode
		newInput?.email = input?.email
		newInput?.endDate = input?.endDate
		newInput?.firstName = input?.firstName
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.folkCode = input?.folkCode
		newInput?.idCardCode = input?.idCardCode
		newInput?.idCardNo = input?.idCardNo
		newInput?.intro = input?.intro
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.lastName = input?.lastName
		newInput?.locus = input?.locus
		newInput?.marryStateCode = input?.marryStateCode
		newInput?.mobilePhone = input?.mobilePhone
		newInput?.name = input?.name
		newInput?.namePinyin = input?.namePinyin
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.password = input?.password
		newInput?.passwordSalt = input?.passwordSalt
		newInput?.personalCode = input?.personalCode
		newInput?.portraitUrl = input?.portraitUrl
		newInput?.privatePassword = input?.privatePassword
		newInput?.privatePasswordSalt = input?.privatePasswordSalt
		newInput?.professionCode = input?.professionCode
		newInput?.provinceCode = input?.provinceCode
		newInput?.qq = input?.qq
		newInput?.regionCode = input?.regionCode
		newInput?.remark = input?.remark
		newInput?.sexCode = input?.sexCode
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.telephone = input?.telephone
		newInput?.userCode = input?.userCode
		newInput?.userId = input?.userId
		newInput?.version = input?.version

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.userId)) {
//          throw new CodeException("userId required", "用户标识必填")
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "用户名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "用户名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "用户名称需小于{0}个字符", 255)
//      }

		def readOne = ["userCode": input.userCode, "object_id": "userId", "dataStateCode": "1"]

		def dbUserId = ApplicationContextHolder.getBean(UserService.class).readOne(String.class, readOne)

		if (!StringUtils.equals(dbUserId, input.userId)) {
			throw new CodeException("userId already exists", "用户编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]        
    }
}