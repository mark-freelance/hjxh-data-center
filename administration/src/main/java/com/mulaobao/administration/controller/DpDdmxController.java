package com.mulaobao.administration.controller;




import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;


import com.mulaobao.administration.service.DpDdmxService;
import com.mulaobao.administration.service.DpZwmxService;
import lombok.SneakyThrows;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * (DpDdmx)表控制层
 *
 * @author makejava
 * @since 2021-12-12 18:12:03
 */
@RestController
@RequestMapping("dpDdmx")
public class DpDdmxController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private DpDdmxService dpDdmxService;

    @Resource
    private DpZwmxService dpZwmxService;

    @SneakyThrows
    @PostMapping("information")
    public boolean information1(@RequestParam("file") MultipartFile file){
        if (file.getOriginalFilename().indexOf("财务")!=-1){
            dpZwmxService.getexel(file);
        }else {
            dpDdmxService.getexel(file);
        }

        return true;
    }

    @GetMapping("getcs")
    public void show(@RequestParam("shop") String [] shop,@RequestParam("datas") String [] datas,HttpServletResponse response, HttpServletRequest request){
        if (shop!=null && datas!=null){
            if (shop.length!=0 && datas.length!=0){
                dpZwmxService.getDaochu(shop,datas,response,request);
            }
        }


    }
}

