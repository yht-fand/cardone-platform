package top.cardone.usercenter.func

import com.google.common.base.Charsets
import com.google.common.hash.BloomFilter
import top.cardone.cache.Cache
import top.cardone.context.ApplicationContextHolder
import top.cardone.context.util.StringUtils
import top.cardone.core.util.func.Func1
import top.cardone.core.util.func.Func2
import top.cardone.core.util.func.Func4
import top.cardone.usercenter.service.DepartmentService

class ReadListDepartmentIdByFunc implements Func1<List<String>, String>, Func2<List<String>, String, String>, Func3<List<String>, String, String, String>, Func4<Object, String, String, String, Boolean> {
    @Override
    List<String> func(String departmentCode) {
        this.func(null, departmentCode, null, true)
    }

    @Override
    List<String> func(String departmentCode, String departmentName) {
        this.func(null, departmentCode, departmentName, true)
    }

    @Override
    List<String> func(String departmentId, String departmentCode, String departmentName) {
        this.func(departmentId, departmentCode, departmentName, true)
    }

    @Override
    List<String> func(String departmentId, String departmentCode, String departmentName, Boolean isLike) {
        if (StringUtils.isNotBlank(departmentId)) {
            BloomFilter<?> departmentIdBloomFilter = getDepartmentIdBloomFilter()

            if (departmentIdBloomFilter.mightContain(departmentId)) {
                if(isLike){
                    return ApplicationContextHolder.getBean(DepartmentService.class).readListDepartmentIdLikeDepartmentIdForTreeCache(departmentId)
                }

                return [departmentId]
            }

            return [StringUtils.EMPTY]
        } else if (StringUtils.isNotBlank(departmentCode)) {
            BloomFilter<?> departmentCodeBloomFilter = getDepartmentCodeBloomFilter()

            if (departmentCodeBloomFilter.mightContain(departmentCode)) {
                if(isLike){
                    return ApplicationContextHolder.getBean(DepartmentService.class).readListDepartmentIdLikeDepartmentCodeForTreeCache(departmentCode)
                }

                return ApplicationContextHolder.getBean(DepartmentService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "departmentId", "departmentCode": departmentCode])
            }

            return [StringUtils.EMPTY]
        } else if (StringUtils.isNotBlank(departmentName)) {
            BloomFilter<?> departmentIdBloomFilter = getDepartmentIdBloomFilter()

            if (departmentIdBloomFilter.mightContain(departmentName)) {
                return [departmentName]
            }

            BloomFilter<?> departmentCodeBloomFilter = getDepartmentCodeBloomFilter()

            if (departmentCodeBloomFilter.mightContain(departmentName)) {
                return ApplicationContextHolder.getBean(DepartmentService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "departmentId", "departmentCode": departmentName])
            }

            return ApplicationContextHolder.getBean(DepartmentService.class).readListDepartmentIdLikeDepartmentNameCache(departmentName, isLike)
        }

        return [StringUtils.EMPTY]
    }

    private BloomFilter<?> getDepartmentCodeBloomFilter() {
        ApplicationContextHolder.getBean(Cache.class).get(DepartmentService.class.getName(), "departmentCodeBloomFilter", {
            ->
            def dbDepartmentCodes = ApplicationContextHolder.getBean(DepartmentService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "departmentCode"])

            def bloomFilter = BloomFilter.create({ arg0, arg1 ->
                arg1.putString(arg0, Charsets.UTF_8)
            }, dbDepartmentCodes.size() + 1024, 0.0000001d)

            for (def dbDepartmentCode : dbDepartmentCodes) {
                bloomFilter.put(dbDepartmentCode)
            }

            bloomFilter
        })
    }

    private BloomFilter<?> getDepartmentIdBloomFilter() {
        ApplicationContextHolder.getBean(Cache.class).get(DepartmentService.class.getName(), "departmentIdBloomFilter", {
            ->
            def dbDepartmentIds = ApplicationContextHolder.getBean(DepartmentService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "departmentId"])

            def bloomFilter = BloomFilter.create({ arg0, arg1 ->
                arg1.putString(arg0, Charsets.UTF_8)
            }, dbDepartmentIds.size() + 1024, 0.0000001d)

            for (def dbDepartmentId : dbDepartmentIds) {
                bloomFilter.put(dbDepartmentId)
            }

            bloomFilter
        })
    }
}