package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.service.KdWdtzdService;
import com.mulaobao.administration.service.KdYdzdService;
import com.mulaobao.administration.temporary.Message;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * (KdWdtzd)表控制层
 *
 * @author makejava
 * @since 2022-01-07 17:39:22
 */
@RestController
@RequestMapping("kdWdtzd")
public class KdWdtzdController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private KdWdtzdService kdWdtzdService;

    @Resource
    private KdYdzdService kdYdzdService;

    @PostMapping("uploading")
    public R getlist(@RequestParam("file") MultipartFile[] file){
        ArrayList<Message> objects = new ArrayList<>();
        for (int i =0;i<file.length;i++){
            if(file[i].getOriginalFilename().indexOf("xlsx")!=-1){
                if (file[i].getOriginalFilename().indexOf("旺店通")!=-1){
                    int sc= kdWdtzdService.uploading(file[i]);
                    if (sc==500){
                        Message message = new Message();
                        message.setCode(sc);
                        message.setData(file[i].getOriginalFilename());
                    }
                }
                if (file[i].getOriginalFilename().indexOf("快递")!=-1){
                    int sc = kdYdzdService.uploading(file[i],kdYdzdService);
                    if (sc==500){
                        Message message = new Message();
                        message.setCode(sc);
                        message.setData(file[i].getOriginalFilename());
                    }
                }else {
                    Message message = new Message();
                    message.setCode(404);
                    message.setData(file[i].getOriginalFilename());
                    objects.add(message);
                }

            }else {
                Message message = new Message();
                message.setCode(404);
                message.setData(file[i].getOriginalFilename());
                objects.add(message);
            }


        }
            if (objects.size()==0){
             return success(objects).setCode(200);
            }
        return success(objects).setCode(505);
    }
}

