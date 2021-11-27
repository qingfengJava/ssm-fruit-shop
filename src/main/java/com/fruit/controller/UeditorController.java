package com.fruit.controller;

import com.fruit.base.BaseController;
import com.fruit.utils.UUIDUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * ueditor上传文件处理
 */

@Controller
@RequestMapping("/ueditor")
public class UeditorController extends BaseController {

    @ResponseBody
    @RequestMapping("/saveFile")
    public Map<String,Object> saveFile(@RequestParam(value = "upfile",required = false)MultipartFile file) throws IOException {
        Map<String,Object> params = new HashMap<>();
        String n = UUIDUtils.create();
        String path = "D:\\IDEA版java相关知识学习\\web项目开发\\基于SSM的网上水果商城\\Fruit\\src\\main\\webapp\\resource\\ueditor\\upload\\" + n + file.getOriginalFilename();
        File newFile = new File(path);
        //通过CommonsMultipartFile的方法直接写文件
        file.transferTo(newFile);
        String vistUrl ="/resource/ueditor/upload/"+n+file.getOriginalFilename();
        params.put("state","SUCCESS");
        params.put("url",vistUrl);
        params.put("size",file.getSize());
        params.put("original",file.getOriginalFilename());
        params.put("type",file.getContentType());

        return params;
    }

}
