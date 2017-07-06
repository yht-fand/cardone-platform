package top.cardone.usercenter.dao;

import top.cardone.data.dao.PageDao;

import java.util.List;
import java.util.Map;

/**
 * 省份
 *
 * @author yao hai tao
 */
public interface ProvinceDao extends PageDao {
    /**
     * 查询省份对象
     *
     * @param findOne 省份标识
     * @return 省份对象
     */
    Map<String, Object> findOneByProvinceId(Map<String, Object> findOne);
}