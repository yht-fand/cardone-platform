package top.cardone.usercenter.func

import com.google.common.base.Charsets
import com.google.common.hash.BloomFilter
import top.cardone.cache.Cache
import top.cardone.context.ApplicationContextHolder
import top.cardone.context.util.StringUtils
import top.cardone.core.util.func.Func4
import top.cardone.usercenter.service.UserService

class ReadListUserIdByFunc implements Func4<Object, String, String, String, Boolean> {
    @Override
    Object func(String userId, String userCode, String userName, Boolean isLike) {
        if (StringUtils.isNotBlank(userId)) {
            BloomFilter<String> userIdBloomFilter = getUserIdBloomFilter()

            if (userIdBloomFilter.mightContain(userId)) {
                return [userId]
            }

            return [StringUtils.EMPTY]
        } else if (StringUtils.isNotBlank(userCode)) {
            BloomFilter<String> userCodeBloomFilter = getUserCodeBloomFilter()

            if (userCodeBloomFilter.mightContain(userCode)) {
                return ApplicationContextHolder.getBean(UserService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "userId", "userCode": userCode])
            }

            return [StringUtils.EMPTY]
        } else if (StringUtils.isNotBlank(userName)) {
            BloomFilter<String> userIdBloomFilter = getUserIdBloomFilter()

            if (userIdBloomFilter.mightContain(userName)) {
                return [userName]
            }

            BloomFilter<String> userCodeBloomFilter = getUserCodeBloomFilter()

            if (userCodeBloomFilter.mightContain(userName)) {
                return ApplicationContextHolder.getBean(UserService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "userId", "userCode": userName])
            }

            return ApplicationContextHolder.getBean(UserService.class).readListUserIdLikeUserNameCache(userName, isLike)
        }

        [StringUtils.EMPTY]
    }

    private BloomFilter<String> getUserCodeBloomFilter() {
        BloomFilter<String> userCodeBloomFilter = ApplicationContextHolder.getBean(Cache.class).get(UserService.class.getName(), 1, "userCodeBloomFilter", {
            ->
            def dbUserCodes = ApplicationContextHolder.getBean(UserService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "userCode"])

            def bloomFilter = BloomFilter.create({ arg0, arg1 ->
                arg1.putString(arg0, Charsets.UTF_8)
            }, dbUserCodes.size() + 1024)

            for (def dbUserCode : dbUserCodes) {
                bloomFilter.put(dbUserCode)
            }

            bloomFilter
        })

        userCodeBloomFilter
    }

    private BloomFilter<String> getUserIdBloomFilter() {
        BloomFilter<String> userIdBloomFilter = ApplicationContextHolder.getBean(Cache.class).get(UserService.class.getName(), 1, "userIdBloomFilter", {
            ->
            def dbUserIds = ApplicationContextHolder.getBean(UserService.class).readListCache(String.class, ["dataStateCode": "1", "stateCode": "1", "object_id": "userId"])

            def bloomFilter = BloomFilter.create({ arg0, arg1 ->
                arg1.putString(arg0, Charsets.UTF_8)
            }, dbUserIds.size() + 1024)

            for (def dbUserId : dbUserIds) {
                bloomFilter.put(dbUserId)
            }

            bloomFilter
        })

        userIdBloomFilter
    }
}