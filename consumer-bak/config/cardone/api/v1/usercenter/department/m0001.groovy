package top.cardone.api.vx.usercenter.department

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.DepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class m0001 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.address = input?.address
		newInput?.areaCode = input?.areaCode
		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.cityCode = input?.cityCode
		newInput?.compatibleDepartmentCode1 = input?.compatibleDepartmentCode1
		newInput?.compatibleDepartmentCode2 = input?.compatibleDepartmentCode2
		newInput?.compatibleParentCode1 = input?.compatibleParentCode1
		newInput?.compatibleParentCode2 = input?.compatibleParentCode2
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdById = input?.createdById
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.departmentId = input?.departmentId
		newInput?.endDate = input?.endDate
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedById = input?.lastModifiedById
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.lastSyncTime = input?.lastSyncTime
		newInput?.name = input?.name
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.orgId = input?.orgId
		newInput?.parentCode = input?.parentCode
		newInput?.parentId = input?.parentId
		newInput?.parentTreeCode = input?.parentTreeCode
		newInput?.parentTreeId = input?.parentTreeId
		newInput?.parentTreeName = input?.parentTreeName
		newInput?.personalCode = input?.personalCode
		newInput?.personalId = input?.personalId
		newInput?.provinceCode = input?.provinceCode
		newInput?.regionCode = input?.regionCode
		newInput?.siteCode = input?.siteCode
		newInput?.sourceCode = input?.sourceCode
		newInput?.stateCode = input?.stateCode
		newInput?.syncReturnCode = input?.syncReturnCode
		newInput?.syncReturnMessage = input?.syncReturnMessage
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.thirdPartyCode = input?.thirdPartyCode
		newInput?.version = input?.version

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.departmentCode)) {
//          throw new CodeException("departmentCode required", "部门编号必填")
//      }
//
//      if (StringUtils.length(input?.departmentCode) < 4) {
//          throw new CodeException("departmentCode minlength", "部门编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.departmentCode) > 255) {
//          throw new CodeException("departmentCode maxlength", "部门编号需小于{0}个字符", 255)
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "部门名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "部门名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "部门名称需小于{0}个字符", 255)
//      }
		
		def readOne = ['departmentCode': input.departmentCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(DepartmentService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("departmentCode already exists", "部门编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(DepartmentService.class).findOne(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput?.address = output?.address
		newOutput?.areaCode = output?.area_code
		newOutput?.batchNo = output?.batch_no
		newOutput?.beginDate = output?.begin_date
		newOutput?.cityCode = output?.city_code
		newOutput?.compatibleDepartmentCode1 = output?.compatible_department_code_1
		newOutput?.compatibleDepartmentCode2 = output?.compatible_department_code_2
		newOutput?.compatibleParentCode1 = output?.compatible_parent_code_1
		newOutput?.compatibleParentCode2 = output?.compatible_parent_code_2
		newOutput?.createdByCode = output?.created_by_code
		newOutput?.createdById = output?.created_by_id
		newOutput?.createdDate = output?.created_date
		newOutput?.dataStateCode = output?.data_state_code
		newOutput?.departmentCode = output?.department_code
		newOutput?.departmentId = output?.department_id
		newOutput?.endDate = output?.end_date
		newOutput?.flagCode = output?.flag_code
		newOutput?.flagObjectCode = output?.flag_object_code
		newOutput?.jsonData = output?.json_data
		newOutput?.lastModifiedByCode = output?.last_modified_by_code
		newOutput?.lastModifiedById = output?.last_modified_by_id
		newOutput?.lastModifiedDate = output?.last_modified_date
		newOutput?.lastSyncTime = output?.last_sync_time
		newOutput?.name = output?.name
		newOutput?.orderBy = output?.order_by_
		newOutput?.orgCode = output?.org_code
		newOutput?.orgId = output?.org_id
		newOutput?.parentCode = output?.parent_code
		newOutput?.parentId = output?.parent_id
		newOutput?.parentTreeCode = output?.parent_tree_code
		newOutput?.parentTreeId = output?.parent_tree_id
		newOutput?.parentTreeName = output?.parent_tree_name
		newOutput?.personalCode = output?.personal_code
		newOutput?.personalId = output?.personal_id
		newOutput?.provinceCode = output?.province_code
		newOutput?.regionCode = output?.region_code
		newOutput?.siteCode = output?.site_code
		newOutput?.sourceCode = output?.source_code
		newOutput?.stateCode = output?.state_code
		newOutput?.syncReturnCode = output?.sync_return_code
		newOutput?.syncReturnMessage = output?.sync_return_message
		newOutput?.systemInfoCode = output?.system_info_code
		newOutput?.thirdPartyCode = output?.third_party_code
		newOutput?.version = output?.version_

        newOutput
    }
}