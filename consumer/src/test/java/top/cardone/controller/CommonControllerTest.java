package top.cardone.controller;

import com.google.common.collect.HashBasedTable;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.io.Resource;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import top.cardone.ConsumerApplication;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.data.support.ExcelSupport;

import java.util.List;
import java.util.Map;

/**
 * @author cardone-home-001 on 2016/4/22.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = ConsumerApplication.class)
public class CommonControllerTest {
    @Value("${app.root:}/config/template/department.xls")
    private String excelFilePath;

//    //导入
//    @Test
//    public void testReadExcel() throws Exception {
//        Resource resource = ApplicationContextHolder.getApplicationContext().getResource("file:config/template/test.xls");
//
//        if (!resource.exists()) {
//            return;
//        }
//
//        Table<String, String, Object> configTable1 = HashBasedTable.create();
//
//        //从第几行开始
//        configTable1.put("params", "firstRowIndex", 3);
//
//        //定义列名与excel列索引的映射
//        configTable1.put("columns", "function", 2);
//        configTable1.put("columns", "name", 3);
//
//        Map<Object, Table<String, String, Object>> configTableMap = Maps.newHashMap();
//
//        // 根据 sheet 名称去定位 sheet
//        //       configTableMap.put("国迈功能补齐", configTable1);
//
//        // 根据 sheet 索引去定位 sheet
//        configTableMap.put(0, configTable1);
//
//        ApplicationContextHolder.getBean(ExcelSupport.class).readFile(resource.getFile(), configTableMap);
//
//        System.out.println(configTable1.get("data", "dataList"));
//    }


    //导出
    @Test
    public void testWriteExcel() throws Exception {
        Resource resource = ApplicationContextHolder.getApplicationContext().getResource(excelFilePath);

        if (!resource.exists()) {
            return;
        }

        Table<String, String, Object> configTable1 = HashBasedTable.create();

        //从第几行开始
        configTable1.put("params", "firstRowIndex", 3);

        //定义列名与excel列索引的映射
        configTable1.put("columns", "function", 2);
        configTable1.put("columns", "name", 3);

        List<Map<String, Object>> writeList = Lists.newCopyOnWriteArrayList();

        Map<String, Object> row1Map = Maps.newHashMap();


        row1Map.put("function", "test111111111");
        row1Map.put("name", "3333333333333333333");

        writeList.add(row1Map);

        Map<String, Object> row2Map = Maps.newHashMap();

        row2Map.put("function", "test222222222222222222");
        row2Map.put("name", "444444444444444444444");

        writeList.add(row2Map);

        configTable1.put("data", "writeList", writeList);

        Map<Object, Table<String, String, Object>> configTableMap = Maps.newHashMap();

        // 根据 sheet 名称去定位 sheet
        //       configTableMap.put("国迈功能补齐", configTable1);

        // 根据 sheet 索引去定位 sheet
        configTableMap.put(0, configTable1);

        ApplicationContextHolder.getBean(ExcelSupport.class).writeFile(resource.getFile().getPath(), "d:\\temps\\testttttt.xlsx", configTableMap);
    }
}