package top.cardone.api.vx.usercenter.department

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.DepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal implements java.io.Serializable {
    def input(input) {
        ["departmentId": input.departmentId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.departmentId)) {
//          throw new CodeException("departmentId required", "部门标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(DepartmentService.class).findOneByDepartmentId(input)
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