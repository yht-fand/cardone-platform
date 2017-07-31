package top.cardone.api.vx.usercenter.org

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.OrgService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0003 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.address = input?.address
		newInput?.areaCode = input?.areaCode
		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.cityCode = input?.cityCode
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdById = input?.createdById
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.endDate = input?.endDate
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedById = input?.lastModifiedById
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.name = input?.name
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.orgId = input?.orgId
		newInput?.parentCode = input?.parentCode
		newInput?.parentTreeCode = input?.parentTreeCode
		newInput?.parentTreeName = input?.parentTreeName
		newInput?.personalCode = input?.personalCode
		newInput?.personalId = input?.personalId
		newInput?.provinceCode = input?.provinceCode
		newInput?.regionCode = input?.regionCode
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.version = input?.version

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.orgCode)) {
//          throw new CodeException("orgCode required", "组织编号必填")
//      }
//
//      if (StringUtils.length(input?.orgCode) < 4) {
//          throw new CodeException("orgCode minlength", "组织编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.orgCode) > 255) {
//          throw new CodeException("orgCode maxlength", "组织编号需小于{0}个字符", 255)
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "组织名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "组织名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "组织名称需小于{0}个字符", 255)
//      }
		
		def readOne = ['orgCode': input.orgCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(OrgService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("orgCode already exists", "组织编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(OrgService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['insertCount': output]        
    }
}