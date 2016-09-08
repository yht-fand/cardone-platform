package top.cardone.usercenter.service.impl;

import com.google.common.collect.Maps;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.DepartmentDao;
import top.cardone.usercenter.dto.DepartmentDto;
import top.cardone.usercenter.service.DepartmentService;

import java.util.List;
import java.util.Map;

/**
 * 部门服务
 *
 * @author yao hai tao
 */
@Transactional(readOnly = true)
public class DepartmentServiceImpl extends PageServiceImpl<DepartmentDao> implements top.cardone.usercenter.service.DepartmentService {
    @Override
    public Page<Map<String, Object>> pageCache(Object page) {
        return this.page(page);
    }

    @Override
    public <P> Page<P> pageCache(Class<P> mappedClass, Object page) {
        return this.page(mappedClass, page);
    }

    @Override
    public <P> List<P> findListCache(Class<P> mappedClass, Object findList) {
        return this.findList(mappedClass, findList);
    }

    @Override
    public <P> P findOneCache(Class<P> mappedClass, Object findOne) {
        return this.findOne(mappedClass, findOne);
    }

    @Override
    public <R> List<R> readListCache(Class<R> requiredType, Object readList) {
        return this.readList(requiredType, readList);
    }

    @Override
    public <R> R readOneCache(Class<R> requiredType, Object readOne) {
        return this.readOne(requiredType, readOne);
    }

    @Override
    @Transactional
    public int deleteCache(Object delete) {
        return this.delete(delete);
    }

    @Override
    @Transactional
    public int deleteAllCache() {
        return this.deleteAll();
    }

    @Override
    @Transactional
    public int deleteByIdsCache(Object ids) {
        return this.deleteByIds(ids);
    }

    @Override
    @Transactional
    public int[] deleteListCache(List<Object> deleteList) {
        return this.deleteList(deleteList);
    }

    @Override
    public List<Map<String, Object>> findListCache(Object findList) {
        return this.findList(findList);
    }

    @Override
    public Map<String, Object> findOneCache(Object findOne) {
        return this.findOne(findOne);
    }

    @Override
    @Transactional
    public int insertCache(Object insert) {
        return this.insert(insert);
    }

    @Override
    @Transactional
    public int insertByNotExistsCache(Object insert) {
        return this.insertByNotExists(insert);
    }

    @Override
    @Transactional
    public int[] insertListCache(List<Object> insertList) {
        return this.insertList(insertList);
    }

    @Override
    @Transactional
    public int[] insertListByNotExistsCache(List<Object> insertList) {
        return this.insertListByNotExists(insertList);
    }

    @Override
    public List<Object> readListCache(Object readList) {
        return this.readList(readList);
    }

    @Override
    public Object readOneCache(Object readOne) {
        return this.readOne(readOne);
    }

    @Override
    @Transactional
    public Integer saveCache(Object save) {
        return this.save(save);
    }

    @Override
    @Transactional
    public int updateCache(Object update) {
        return this.update(update);
    }

    @Override
    @Transactional
    public int[] updateListCache(List<Object> updateList) {
        return this.updateList(updateList);
    }

    public Map<String, Object> findOneByDepartmentId(Map<String, Object> findOneMap) {
        return this.dao.findOneByDepartmentId(findOneMap);
    }

    @Override
    public List<Map<String, Object>> findListByDepartmentCode(String deptCode) {
        return this.dao.findListByDepartmentCode(deptCode);
    }

    @Override
    @Transactional
    public int[][] saveListCache(List<Object> saveList) {
        return this.saveList(saveList);
    }

    @Override
    @Transactional
    public void syncOldData() {
        this.dao.syncOldData();
    }

    @Override
    @Transactional
    public void generateTreeInfo() {
        List<DepartmentDto> items = this.dao.findList(DepartmentDto.class, null);

        generateTreeInfo(null, items, 9);
    }

    private void generateTreeInfo(DepartmentDto parent, List<DepartmentDto> items, int dept) {
        if (CollectionUtils.isEmpty(items) || dept < 1) {
            return;
        }

        String parentCode = null;
        String parentTreeCode = null;
        String parentTreeName = null;

        if (parent != null) {
            parentCode = parent.getParentCode();
            parentTreeCode = org.apache.commons.lang3.StringUtils.isBlank(parentCode) ? null : parent.getParentTreeCode();
            parentTreeName = org.apache.commons.lang3.StringUtils.isBlank(parentCode) ? null : parent.getParentTreeName();

            Map<String, Object> inupts = Maps.newHashMap();

            inupts.put("parentCode", parentCode);
            inupts.put("parentTreeCode", parentTreeCode);
            inupts.put("parentTreeName", parentTreeName);
            inupts.put("departmentId", parent.getDepartmentId());

          this.dao.update(inupts);

            parentCode = parent.getDepartmentCode();
        }

        for (DepartmentDto item : items) {
            if (StringUtils.isBlank(item.getParentCode())) {
                item.setParentCode(null);
            }

            if (!StringUtils.equals(parentCode, item.getParentCode())) {
                continue;
            }

            if (parent != null) {
                if (org.apache.commons.lang3.StringUtils.isNotBlank(parentTreeCode)) {
                    item.setParentTreeCode(parentTreeCode + "," + parent.getDepartmentCode());
                } else {
                    item.setParentTreeCode(parent.getDepartmentCode());
                }

                if (org.apache.commons.lang3.StringUtils.isNotBlank(parentTreeName)) {
                    item.setParentTreeName(parentTreeName + "," + parent.getName());
                } else {
                    item.setParentTreeName(parent.getName());
                }
            }

            this.generateTreeInfo(item, items, (dept - 1));
        }
    }
}