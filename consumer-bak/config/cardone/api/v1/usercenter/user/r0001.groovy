package top.cardone.api.vx.usercenter.user

import top.cardone.configuration.service.DictionaryService
import top.cardone.context.ApplicationContextHolder
import top.cardone.context.util.DateUtils
import top.cardone.usercenter.service.UserService

import java.time.Instant
import java.time.LocalDateTime
import java.time.ZoneId

class r0001 implements java.io.Serializable {
    def input(input) {
        input.startTime = DateUtils.parseDate(input.startTime)

        input.endTime = DateUtils.parseDate(input.endTime)

        if (Objects.nonNull(input.endTime)) {
            input.endTime = LocalDateTime.ofInstant(Instant.ofEpochMilli(input.endTime.getTime()), ZoneId.systemDefault())

            input.endTime = Date.from(LocalDateTime.of(input.endTime.getYear(), input.endTime.getMonth(), input.endTime.getDayOfMonth(), 0, 0, 0).plusDays(1).atZone(ZoneId.systemDefault()).toInstant())
        }

        input
    }

    def validation(input) {
    }

    def func(input) {
		ApplicationContextHolder.getBean(UserService.class).page(input)
    }

    def output(output) {
        def newOutput = [:]

        newOutput.totalElements = output.getTotalElements()
        newOutput.totalPages = output.getTotalPages()
        newOutput.hasPrevious = output.hasPrevious()
        newOutput.previous = output.pageable.previousOrFirst().getPageNumber() + 1
        newOutput.hasNext = output.pageable.next().getPageNumber() < output.getTotalPages()
        newOutput.next = output.pageable.next().getPageNumber() + 1
        newOutput.pages = []
        newOutput.page = output.getNumber() + 1

        def pagesRange = 6

        def pagesRangeHalf = new java.math.BigDecimal(pagesRange).divide(new BigDecimal(2), BigDecimal.ROUND_HALF_UP).toBigInteger().intValue()

        def pagesRangeStart = Math.max(output.getNumber() + 1 - pagesRangeHalf, 1)

        def pagesRangeEnd = Math.min((pagesRangeStart + pagesRange) - 1, output.getTotalPages())

        if (((pagesRangeEnd - pagesRangeStart) + 1) < pagesRange) {
            pagesRangeStart = Math.max((pagesRangeEnd - pagesRange) + 1, 1)
        }

        def pagesRangeLength = pagesRangeEnd - pagesRangeStart

        for (int i = 0; i <= pagesRangeLength; i++) {
            newOutput.pages.add(pagesRangeStart++)
        }

        newOutput.datas = []

        for (def contentItem : output.getContent()) {
			def data = [:]

            data['address'] = contentItem['address']

            data['age'] = contentItem['age']

            data['aliasName'] = contentItem['alias_name']

            data['areaCode'] = contentItem['area_code']

            data['batchNo'] = contentItem['batch_no']

            data['beginDate'] = contentItem['begin_date']

            data['birthday'] = contentItem['birthday']

            data['callName'] = contentItem['call_name']

            data['cityCode'] = contentItem['city_code']

            data['companyName'] = contentItem['company_name']

            data['contact'] = contentItem['contact']

            data['countryCode'] = contentItem['country_code']

            data['createdByCode'] = contentItem['created_by_code']

            data['createdById'] = contentItem['created_by_id']

            data['createdDate'] = contentItem['created_date']

            data['dataStateCode'] = contentItem['data_state_code']

            data['departmentCode'] = contentItem['department_code']

            data['departmentId'] = contentItem['department_id']

            data['diplomaCode'] = contentItem['diploma_code']

            data['email'] = contentItem['email']

            data['endDate'] = contentItem['end_date']

            data['firstName'] = contentItem['first_name']

            data['flagCode'] = contentItem['flag_code']

            data['flagObjectCode'] = contentItem['flag_object_code']

            data['folkCode'] = contentItem['folk_code']

            data['idCardCode'] = contentItem['id_card_code']

            data['idCardNo'] = contentItem['id_card_no']

            data['intro'] = contentItem['intro']

            data['jsonData'] = contentItem['json_data']

            data['lastModifiedByCode'] = contentItem['last_modified_by_code']

            data['lastModifiedById'] = contentItem['last_modified_by_id']

            data['lastModifiedDate'] = contentItem['last_modified_date']

            data['lastName'] = contentItem['last_name']

            data['lastSyncTime'] = contentItem['last_sync_time']

            data['locus'] = contentItem['locus']

            data['marryStateCode'] = contentItem['marry_state_code']

            data['mobilePhone'] = contentItem['mobile_phone']

            data['name'] = contentItem['name']

            data['namePinyin'] = contentItem['name_pinyin']

            data['orderBy'] = contentItem['order_by_']

            data['orgCode'] = contentItem['org_code']

            data['password'] = contentItem['password_']

            data['password2'] = contentItem['password2']

            data['passwordSalt'] = contentItem['password_salt']

            data['personalCode'] = contentItem['personal_code']

            data['personalId'] = contentItem['personal_id']

            data['portraitUrl'] = contentItem['portrait_url']

            data['privatePassword'] = contentItem['private_password']

            data['privatePasswordSalt'] = contentItem['private_password_salt']

            data['professionCode'] = contentItem['profession_code']

            data['provinceCode'] = contentItem['province_code']

            data['qq'] = contentItem['qq']

            data['regionCode'] = contentItem['region_code']

            data['remark'] = contentItem['remark']

            data['sexCode'] = contentItem['sex_code']

            data['siteCode'] = contentItem['site_code']

            data['sourceCode'] = contentItem['source_code']

            data['stateCode'] = contentItem['state_code']

            data['syncReturnCode'] = contentItem['sync_return_code']

            data['syncReturnMessage'] = contentItem['sync_return_message']

            data['systemInfoCode'] = contentItem['system_info_code']

            data['telephone'] = contentItem['telephone']

            data['thirdPartyCode'] = contentItem['third_party_code']

            data['userCode'] = contentItem['user_code']

            data['userId'] = contentItem['user_id']

            data['version'] = contentItem['version_']

            data['flagName'] = top.cardone.configuration.utils.DictionaryUtils.readOneByDictionaryTypeCodesCache(['dictionaryTypeCodes': 'userFlag,flag', 'dictionaryCode': contentItem['flag_code'], 'stateCode': '1', 'dataStateCode': '1',  'object_id': 'name'])

            data['stateName'] = top.cardone.configuration.utils.DictionaryUtils.readOneByDictionaryTypeCodesCache(['dictionaryTypeCodes': 'userState,state', 'dictionaryCode': contentItem['state_code'], 'stateCode': '1', 'dataStateCode': '1',  'object_id': 'name'])

            data['dataStateName'] = top.cardone.configuration.utils.DictionaryUtils.readOneByDictionaryTypeCodesCache(['dictionaryTypeCodes': 'userDataState,dataState', 'dictionaryCode': contentItem['data_state_code'], 'stateCode': '1', 'dataStateCode': '1',  'object_id': 'name'])

			newOutput.datas.add(data)
        }

        newOutput
    }
}