package top.cardone.usercenter.func

import com.google.common.base.Charsets
import com.google.common.hash.BloomFilter
import top.cardone.cache.Cache
import top.cardone.context.ApplicationContextHolder
import top.cardone.context.util.StringUtils
import top.cardone.core.util.func.Func1
import top.cardone.core.util.func.Func2
import top.cardone.core.util.func.Func4
import top.cardone.usercenter.service.UserService

class ReadListUserIdByFunc implements Func1<List<String>, String>, Func2<List<String>, String, String>, Func3<List<String>, String, String, String>, Func4<Object, String, String, String, Boolean> {
    @Override
    List<String> func(String userCode) {
        this.func(null, userCode, null, true)
    }

    @Override
    List<String> func(String userCode, String userName) {
        this.func(null, userCode, userName, true)
    }

    @Override
    List<String> func(String userId, String userCode, String userName) {
        this.func(userId, userCode, userName, true)
    }

    @Override
    List<String> func(String userId, String userCode, String userName, Boolean isLike) {
        if (StringUtils.isNotBlank(userId)) {
            BloomFilter<?> userIdBloomFilter = getUserIdBloomFilter()

            if (userIdBloomFilter.mightContain(userId)) {
                return [userId]
            }

            return [StringUtils.EMPTY]
        } else if (StringUtils.isNotBlank(userCode)) {
            BloomFilter<?> userCodeBloomFilter = getUserCodeBloomFilter()

            if (userCodeBloomFilter.mightContain(userCode)) {
                return ApplicationContextHolder.getBean(UserService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "userId", "userCode": userCode])
            }

            return [StringUtils.EMPTY]
        } else if (StringUtils.isNotBlank(userName)) {
            BloomFilter<?> userIdBloomFilter = getUserIdBloomFilter()

            if (userIdBloomFilter.mightContain(userName)) {
                return [userName]
            }

            BloomFilter<?> userCodeBloomFilter = getUserCodeBloomFilter()

            if (userCodeBloomFilter.mightContain(userName)) {
                return ApplicationContextHolder.getBean(UserService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "userId", "userCode": userName])
            }

            return ApplicationContextHolder.getBean(UserService.class).readListUserIdLikeUserNameCache(userName, isLike)
        }

        return [StringUtils.EMPTY]
    }

    private BloomFilter<?> getUserCodeBloomFilter() {
        ApplicationContextHolder.getBean(Cache.class).get(UserService.class.getName(), "userCodeBloomFilter", {
            ->
            def dbUserCodes = ApplicationContextHolder.getBean(UserService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "userCode"])

            def bloomFilter = BloomFilter.create({ arg0, arg1 ->
                arg1.putString(arg0, Charsets.UTF_8)
            }, dbUserCodes.size() + 1024, 0.0000001d)

            for (def dbUserCode : dbUserCodes) {
                bloomFilter.put(dbUserCode)
            }

            bloomFilter
        })
    }

    private BloomFilter<?> getUserIdBloomFilter() {
        ApplicationContextHolder.getBean(Cache.class).get(UserService.class.getName(), "userIdBloomFilter", {
            ->
            def dbUserIds = ApplicationContextHolder.getBean(UserService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "userId"])

            def bloomFilter = BloomFilter.create({ arg0, arg1 ->
                arg1.putString(arg0, Charsets.UTF_8)
            }, dbUserIds.size() + 1024, 0.0000001d)

            for (def dbUserId : dbUserIds) {
                bloomFilter.put(dbUserId)
            }

            bloomFilter
        })
    }
}