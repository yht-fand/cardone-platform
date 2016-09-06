package top.cardone.usercenter.service;

import com.google.common.collect.Maps;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import top.cardone.ProviderApplication;
import top.cardone.context.ApplicationContextHolder;

import java.util.Map;

/**
 * Created by Administrator on 2016/4/22.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = ProviderApplication.class)
public class DepartmentServiceTest {

    @Test
    public void pageByCode() throws Exception {
//        Map<String,Object> map = Maps.newHashMap();
//        map.put("pageSize",20);
//        map.put("pageNumber",1);

//        Page<Map<String, Object>> departmentDTOPage = ApplicationContextHolder.getBean(DepartmentService.class).pageByCode(map);
//        int pageSize=departmentDTOPage.getSize();

//        /**
//         * 修改根据部门id查找对象
//         */
//        String departmentId="1";
//        Map<String,Object> out = ApplicationContextHolder.getBean(DepartmentService.class).findOneByDepartmentId(departmentId);
//        if(CollectionUtils.isEmpty(out)){
//            System.out.print("部门对象不存在");
//        }

//        Map<String,Object> map = Maps.newHashMap();
//        map.put("departmentId","1");
//        map.put("departmentCode","30000");
//        map.put("name","检察院");
//        map.put("parentCode","300");
//        map.put("parentDeptName","检察院法律组");
//        map.put("orgCode","211");
//        map.put("orgName","检察院*********");
//        map.put("stateCode","1");
//        int out = ApplicationContextHolder.getBean(DepartmentService.class).update(map);


        String departmentId = "1";
        Map<String, Object> out = ApplicationContextHolder.getBean(DepartmentService.class).findOneByDepartmentId(departmentId);
        int tt = ApplicationContextHolder.getBean(DepartmentService.class).delete(out);
    }


    @Test
    public void testPageCache() throws Exception {

    }

    @Test
    public void testPageCache1() throws Exception {

    }

    @Test
    public void testFindListCache() throws Exception {

    }

    @Test
    public void testFindOneCache() throws Exception {

    }

    @Test
    public void testReadListCache() throws Exception {

    }

    @Test
    public void testReadOneCache() throws Exception {

    }

    @Test
    public void testDeleteCache() throws Exception {

    }

    @Test
    public void testDeleteAllCache() throws Exception {

    }

    @Test
    public void testDeleteByIdsCache() throws Exception {
        Map<String, Object> inputs = Maps.newHashMap();

        inputs.put("ids", "test,test1");

        ApplicationContextHolder.getBean(DepartmentService.class).deleteByIdsCache(inputs);
    }

    @Test
    public void testDeleteListCache() throws Exception {

    }

    @Test
    public void testFindListCache1() throws Exception {

    }

    @Test
    public void testFindOneCache1() throws Exception {

    }

    @Test
    public void testInsertCache() throws Exception {

    }

    @Test
    public void testInsertByNotExistsCache() throws Exception {

    }

    @Test
    public void testInsertListCache() throws Exception {

    }

    @Test
    public void testInsertListByNotExistsCache() throws Exception {

    }

    @Test
    public void testReadListCache1() throws Exception {

    }

    @Test
    public void testReadOneCache1() throws Exception {

    }

    @Test
    public void testSaveCache() throws Exception {

    }

    @Test
    public void testUpdateCache() throws Exception {

    }

    @Test
    public void testUpdateListCache() throws Exception {

    }

    @Test
    public void testSaveListCache() throws Exception {

    }

    @Test
    public void testPageByCode1() throws Exception {

    }

    @Test
    public void testFindOneByDepartmentId() throws Exception {

    }

    @Test
    public void testFindListByDepartmentCode() throws Exception {

    }

    @Test
    public void testSyncOldData() throws Exception {

    }

    @Test
    public void testGenerateTreeInfo() throws Exception {

    }
}