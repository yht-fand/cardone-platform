package top.cardone.usercenter.controller;

import com.google.common.base.CaseFormat;
import com.google.common.collect.HashBasedTable;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.MapUtils;
import top.cardone.context.util.StringUtils;
import top.cardone.core.CodeException;
import top.cardone.data.support.ExcelSupport;
import top.cardone.usercenter.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by yl on 2016/4/27.
 */
@Controller
public class UserController {
    @Value("${app.root:}/upload")
    private String uploadPath;

    @Value("${app.root:}/config/template/user.xls")
    private String excelFilePath;

    @RequestMapping("/web-api/v1/usercenter/user/m0001.txt")
    @ResponseBody
    public Object m0001Tex(HttpServletRequest request, HttpServletResponse response) throws InvalidFormatException, InstantiationException, IllegalAccessException, IOException {
        final MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

        if (multipartRequest == null) {
            throw new CodeException("没有上传文件");
        }

        Collection<MultipartFile> multipartFiles = multipartRequest.getFileMap().values();

        if (org.springframework.util.CollectionUtils.isEmpty(multipartFiles)) {
            throw new CodeException("没有上传文件");
        }

        String tempUpload = StringUtils.remove(uploadPath, "file:/") + File.separator + UUID.randomUUID().toString() + File.separator;

        try {
            MultipartFile multipartFile = (MultipartFile) CollectionUtils.get(multipartFiles, 0);
            String uploadFilePathName = tempUpload + multipartFile.getOriginalFilename();
            File uploadFile = new File(uploadFilePathName);
            FileUtils.writeByteArrayToFile(uploadFile, multipartFile.getBytes());
            Table<String, String, Object> configTable1 = HashBasedTable.create();
            //从第几行开始
            configTable1.put("params", "firstRowIndex", 1);
            //定义列名与excel列索引的映射
            configTable1.put("columns", "userCode", 0);
            configTable1.put("columns", "name", 1);
            configTable1.put("columns", "callName", 2);
            configTable1.put("columns", "password", 3);
            configTable1.put("columns", "sexCode", 4);
            configTable1.put("columns", "sexName", 5);
            configTable1.put("columns", "age", 6);
            configTable1.put("columns", "departmentCode", 7);
            configTable1.put("columns", "departmentName", 8);
            configTable1.put("columns", "idCardNo", 9);
            configTable1.put("columns", "mobilePhone", 10);
            configTable1.put("columns", "email", 11);

            Map<Object, Table<String, String, Object>> configTableMap = Maps.newHashMap();
            // 根据 sheet 名称去定位 sheet
            configTableMap.put(0, configTable1);
            ApplicationContextHolder.getBean(ExcelSupport.class).readFile(uploadFile, configTableMap);
            List<Map<String, Object>> inputMapList = (List<Map<String, Object>>) configTable1.get("data", "dataList");
            if (org.springframework.util.CollectionUtils.isEmpty(inputMapList)) {
                return null;
            }
            List<Map<String, Object>> newInputMapList = Lists.newArrayList();
            for (Map<String, Object> inputMap : inputMapList) {
                if (validate(inputMap)) {
                    newInputMapList.add(inputMap);
                }
            }
            if (org.springframework.util.CollectionUtils.isEmpty(newInputMapList)) {
                return null;
            }
            ApplicationContextHolder.getBean(UserService.class).saveListCache(Lists.newArrayList(newInputMapList));
        } finally {
            FileUtils.deleteDirectory(new File(tempUpload));
        }

        return "{}";
    }

    /**
     * 导出数据
     *
     * @return
     */
    @RequestMapping("/web-api/v1/usercenter/user/m0002.txt")
    public void m0002Tex(HttpServletRequest request,
                         @RequestParam(value = "mode") boolean mode,
                         HttpServletResponse response) throws Exception {
        Resource resource = ApplicationContextHolder.getApplicationContext().getResource(excelFilePath);
        if (!resource.exists()) {
            return;
        }
        if (mode) {
            response.setContentType("application/x-msdownload");
            response.setHeader("content-disposition", "attachment; filename=" + URLEncoder.encode("用户数据模板.xlsx", "UTF-8"));
            try (java.io.OutputStream out = response.getOutputStream()) {
                IOUtils.write(FileUtils.readFileToByteArray(resource.getFile()), out);
                out.flush();
                response.flushBuffer();
            }
        } else {
            Table<String, String, Object> configTable1 = HashBasedTable.create();
            //从第几行开始
            configTable1.put("params", "firstRowIndex", 1);
            //定义列名与excel列索引的映射
            configTable1.put("columns", "userCode", 0);
            configTable1.put("columns", "name", 1);
            configTable1.put("columns", "callName", 2);
            configTable1.put("columns", "password", 3);
            configTable1.put("columns", "sexCode", 4);
            configTable1.put("columns", "sexName", 5);
            configTable1.put("columns", "age", 6);
            configTable1.put("columns", "departmentCode", 7);
            configTable1.put("columns", "departmentName", 8);
            configTable1.put("columns", "idCardNo", 9);
            configTable1.put("columns", "mobilePhone", 10);
            configTable1.put("columns", "email", 11);

            List<Map<String, Object>> writeList = Lists.newCopyOnWriteArrayList();
            Map<String, Object> inputs = Maps.newHashMap();
            inputs.put("pageSize", Integer.MAX_VALUE);

            //获取数据
            List<Map<String, Object>> userList = ApplicationContextHolder.getBean(UserService.class).page(inputs).getContent();
            for (Map<String, Object> inputMap : userList) {
                Map<String, Object> row1Map = Maps.newHashMap();

                for(Map.Entry<String,Object> inputEntry:inputMap.entrySet()){
                    String key= CaseFormat.UPPER_UNDERSCORE.to(CaseFormat.LOWER_CAMEL, inputEntry.getKey());
                    row1Map.put(key,inputEntry.getValue());
                }
                writeList.add(row1Map);
            }
            configTable1.put("data", "writeList", writeList);
            Map<Object, Table<String, String, Object>> configTableMap = Maps.newHashMap();
            // 根据 sheet 索引去定位 sheet
            configTableMap.put(0, configTable1);
            ApplicationContextHolder.getBean(ExcelSupport.class).writeHttpServletResponse(response, "用户数据.xlsx", resource.getFile().getPath(), configTableMap);
        }
    }

    /**
     * 验证用户信息
     *
     * @param inputMap
     * @return
     */
    public Boolean validate(Map<String, Object> inputMap) {
        if (org.apache.commons.lang3.StringUtils.isBlank(MapUtils.getString(inputMap, "userCode"))) {
            return false;
        }
        if (org.apache.commons.lang3.StringUtils.isBlank(MapUtils.getString(inputMap, "password"))) {
            return false;
        }
        if (org.apache.commons.lang3.StringUtils.isBlank(MapUtils.getString(inputMap, "name"))) {
            return false;
        }
        return true;
    }
}
