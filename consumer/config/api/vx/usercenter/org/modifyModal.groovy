package top.cardone.api.vx.usercenter.org

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.OrgService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal implements java.io.Serializable {
    def input(input) {
        ["orgId": input.orgId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.orgId)) {
//          throw new CodeException("orgId required", "组织标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(OrgService.class).findOneByOrgId(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput?.address = output?.address
		newOutput?.areaCode = output?.area_code
		newOutput?.batchNo = output?.batch_no
		newOutput?.beginDate = output?.begin_date
		newOutput?.cityCode = output?.city_code
		newOutput?.createdByCode = output?.created_by_code
		newOutput?.createdById = output?.created_by_id
		newOutput?.createdDate = output?.created_date
		newOutput?.dataStateCode = output?.data_state_code
		newOutput?.departmentCode = output?.department_code
		newOutput?.endDate = output?.end_date
		newOutput?.flagCode = output?.flag_code
		newOutput?.flagObjectCode = output?.flag_object_code
		newOutput?.jsonData = output?.json_data
		newOutput?.lastModifiedByCode = output?.last_modified_by_code
		newOutput?.lastModifiedById = output?.last_modified_by_id
		newOutput?.lastModifiedDate = output?.last_modified_date
		newOutput?.name = output?.name
		newOutput?.orderBy = output?.order_by_
		newOutput?.orgCode = output?.org_code
		newOutput?.orgId = output?.org_id
		newOutput?.parentCode = output?.parent_code
		newOutput?.parentTreeCode = output?.parent_tree_code
		newOutput?.parentTreeName = output?.parent_tree_name
		newOutput?.personalCode = output?.personal_code
		newOutput?.personalId = output?.personal_id
		newOutput?.provinceCode = output?.province_code
		newOutput?.regionCode = output?.region_code
		newOutput?.siteCode = output?.site_code
		newOutput?.stateCode = output?.state_code
		newOutput?.systemInfoCode = output?.system_info_code
		newOutput?.version = output?.version_

        newOutput
    }
}