package top.cardone.usercenter.service.impl;

import com.google.common.collect.Maps;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;
import top.cardone.data.service.impl.PageServiceImpl;
import top.cardone.usercenter.dao.DepartmentDao;

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
	public int fixTreeInfo() {
		Map<String, Object> findListMap = Maps.newHashMap();

		findListMap.put("order_by_parentCode", "1");

		List<Map<String, Object>> items = this.dao.findList(findListMap);

		int updateCount = 0;

		for (Map<String, Object> item : items) {
			String itemParentCode = MapUtils.getString(item, "PARENT_CODE");

			if (StringUtils.isBlank(itemParentCode)) {
				itemParentCode = null;
			}

			String itemDepartmentCode = MapUtils.getString(item, "DEPARTMENT_CODE");

			Map<String, Object> update = Maps.newHashMap();

			if (StringUtils.equals(itemParentCode, itemDepartmentCode)) {
				update.put("departmentId", MapUtils.getString(item, "DEPARTMENT_ID"));
			} else if (StringUtils.isNotBlank(itemParentCode)) {
				Map<String, Object> findOne = Maps.newHashMap();

				findOne.put("departmentCode", itemParentCode);

				Map<String, Object> parent = this.dao.findOne(findOne);

				if (MapUtils.isEmpty(parent)) {
					update.put("departmentId", MapUtils.getString(item, "DEPARTMENT_ID"));
				} else {
					String[] parentTreeCodes = StringUtils.split(MapUtils.getString(parent, "PARENT_TREE_CODE", MapUtils.getString(parent, "PARENT_CODE")), ",");

					if (ArrayUtils.contains(parentTreeCodes, itemDepartmentCode)) {
						update.put("departmentId", MapUtils.getString(item, "DEPARTMENT_ID"));
					}
				}
			}

			if (!MapUtils.isEmpty(update)) {
				update.put("parentCode", null);
				update.put("parentTreeCode", null);
				update.put("parentTreeName", null);

				updateCount += this.dao.update(update);
			}
		}

		return updateCount;
	}

	@Override
	@Transactional
	public void generateTreeInfo() {
		for (int i = 0; i < 99; i++) {
			int updateCount = this.fixTreeInfo();

			if (updateCount < 1) {
				break;
			}
		}

		for (int i = 0; i < 99; i++) {
			Map<String, Object> findListMap = Maps.newHashMap();

			findListMap.put("order_by_parentCode", "1");

			List<Map<String, Object>> items = this.dao.findList(findListMap);

			generateTreeInfo(null, items, 9);

			boolean isReGenerateTreeInfo = true;

			for (int j = 0; j < 99; j++) {
				int updateCount = this.fixTreeInfo();

				if (updateCount < 1) {
					break;
				}

				isReGenerateTreeInfo = true;
			}

			if (!isReGenerateTreeInfo) {
				break;
			}
		}
	}

	private void generateTreeInfo(Map<String, Object> parent, List<Map<String, Object>> items, int dept) {
		String parentTreeCode = null;
		String parentTreeName = null;

		if (parent != null) {
			parentTreeCode = MapUtils.getString(parent, "PARENT_TREE_CODE");
			parentTreeName = MapUtils.getString(parent, "PARENT_TREE_NAME");

			Map<String, Object> update = Maps.newHashMap();

			update.put("parentCode", MapUtils.getString(parent, "PARENT_CODE"));
			update.put("parentTreeCode", parentTreeCode);
			update.put("parentTreeName", parentTreeName);
			update.put("departmentId", MapUtils.getString(parent, "DEPARTMENT_ID"));

			this.dao.update(update);
		}

		if (CollectionUtils.isEmpty(items) || dept < 1) {
			return;
		}

		String parentCode = MapUtils.getString(parent, "DEPARTMENT_CODE");

		for (Map<String, Object> item : items) {
			String itemParentCode = MapUtils.getString(item, "PARENT_CODE");

			if (StringUtils.isBlank(itemParentCode)) {
				itemParentCode = null;
			}

			if (!StringUtils.equals(parentCode, itemParentCode)) {
				continue;
			}

			if (org.apache.commons.lang3.StringUtils.isNotBlank(parentTreeCode)) {
				item.put("PARENT_TREE_CODE", parentTreeCode + "," + parentCode);
				item.put("PARENT_TREE_NAME", parentTreeName + "," + MapUtils.getString(parent, "NAME"));
			} else {
				item.put("PARENT_TREE_CODE", parentCode);
				item.put("PARENT_TREE_NAME", MapUtils.getString(parent, "NAME"));
			}

			this.generateTreeInfo(item, items, (dept - 1));
		}
	}
}