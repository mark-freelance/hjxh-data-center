package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.KingdeeHs;
import com.mulaobao.administration.service.KingdeeHsService;
import com.mulaobao.administration.service.WdtCkService;
import com.mulaobao.administration.service.WdtCkmxService;
import com.mulaobao.administration.service.WdtKcService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (KingdeeHs)表控制层
 *
 * @author makejava
 * @since 2021-12-22 10:14:01
 */
@RestController
@RequestMapping("kingdeeHs")
public class KingdeeHsController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private KingdeeHsService kingdeeHsService;

    @Resource
    private WdtCkmxService wdtCkmxService;

    @Resource
    private WdtKcService wdtKcService;


    @PostMapping("uploading")
    public R getlist(@RequestParam("file") MultipartFile[] file){
        for (int i =0;i<file.length;i++){
            if (file[i].getOriginalFilename().indexOf("库存台账")!=-1){
                        wdtKcService.uploading(file[i]);
            }
            if (file[i].getOriginalFilename().indexOf("出库明细")!=-1){
                wdtCkmxService.uploading(file[i]);
            }
            if (file[i].getOriginalFilename().indexOf("物料收发汇总表")!=-1){
                        kingdeeHsService.uploading(file[i]);
            }
        }

        return success(true);
    }



}

