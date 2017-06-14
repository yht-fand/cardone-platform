package api.vx.usercenter.department

import org.apache.commons.lang3.StringUtils
import top.cardone.usercenter.service.DepartmentService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class m0001 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput['address'] = input['address']
		newInput['areaCode'] = input['areaCode']
		newInput['batchNo'] = input['batchNo']
		newInput['beginDate'] = input['beginDate']
		newInput['cityCode'] = input['cityCode']
		newInput['createdByCode'] = input['createdByCode']
		newInput['createdDate'] = input['createdDate']
		newInput['dataStateCode'] = input['dataStateCode']
		newInput['departmentCode'] = input['departmentCode']
		newInput['departmentId'] = input['departmentId']
		newInput['endDate'] = input['endDate']
		newInput['flagCode'] = input['flagCode']
		newInput['flagObjectCode'] = input['flagObjectCode']
		newInput['jsonData'] = input['jsonData']
		newInput['lastModifiedByCode'] = input['lastModifiedByCode']
		newInput['lastModifiedDate'] = input['lastModifiedDate']
		newInput['name'] = input['name']
		newInput['orderBy'] = input['orderBy']
		newInput['orgCode'] = input['orgCode']
		newInput['parentCode'] = input['parentCode']
		newInput['parentTreeCode'] = input['parentTreeCode']
		newInput['parentTreeName'] = input['parentTreeName']
		newInput['personalCode'] = input['personalCode']
		newInput['provinceCode'] = input['provinceCode']
		newInput['regionCode'] = input['regionCode']
		newInput['siteCode'] = input['siteCode']
		newInput['stateCode'] = input['stateCode']
		newInput['systemInfoCode'] = input['systemInfoCode']
		newInput['version'] = input['version']

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
		
		def readOne = ['departmentCode': input.departmentCode]

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

		newOutput['address'] = output['address']
		newOutput['areaCode'] = output['area_code']
		newOutput['batchNo'] = output['batch_no']
		newOutput['beginDate'] = output['begin_date']
		newOutput['cityCode'] = output['city_code']
		newOutput['createdByCode'] = output['created_by_code']
		newOutput['createdDate'] = output['created_date']
		newOutput['dataStateCode'] = output['data_state_code']
		newOutput['departmentCode'] = output['department_code']
		newOutput['departmentId'] = output['department_id']
		newOutput['endDate'] = output['end_date']
		newOutput['flagCode'] = output['flag_code']
		newOutput['flagObjectCode'] = output['flag_object_code']
		newOutput['jsonData'] = output['json_data']
		newOutput['lastModifiedByCode'] = output['last_modified_by_code']
		newOutput['lastModifiedDate'] = output['last_modified_date']
		newOutput['name'] = output['name']
		newOutput['orderBy'] = output['order_by_']
		newOutput['orgCode'] = output['org_code']
		newOutput['parentCode'] = output['parent_code']
		newOutput['parentTreeCode'] = output['parent_tree_code']
		newOutput['parentTreeName'] = output['parent_tree_name']
		newOutput['personalCode'] = output['personal_code']
		newOutput['provinceCode'] = output['province_code']
		newOutput['regionCode'] = output['region_code']
		newOutput['siteCode'] = output['site_code']
		newOutput['stateCode'] = output['state_code']
		newOutput['systemInfoCode'] = output['system_info_code']
		newOutput['version'] = output['version_']

        newOutput
    }
}