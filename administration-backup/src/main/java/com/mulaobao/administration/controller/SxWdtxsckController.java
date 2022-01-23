package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.LsFilename;
import com.mulaobao.administration.entity.SxWdtxsck;
import com.mulaobao.administration.service.LsFilenameService;
import com.mulaobao.administration.service.SxWdtxsckService;
import com.mulaobao.administration.temporary.Message;
import com.mulaobao.administration.util.UtilId;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * (SxWdtxsck)表控制层
 *
 * @author makejava
 * @since 2022-01-20 16:51:25
 */
@RestController
@RequestMapping("sxWdtxsck")
public class SxWdtxsckController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private SxWdtxsckService sxWdtxsckService;

    @Resource
    private LsFilenameService filenameService;




    @PostMapping("uploading")
    public R getlist(@RequestParam("file") MultipartFile[] file) {
        ArrayList<Message> objects = new ArrayList<>();
        for (int i = 0; i < file.length; i++) {
                if (file[i].getOriginalFilename().indexOf("库存台账") != -1) {
                    int sc = sxWdtxsckService.uploading(file[i], sxWdtxsckService);
                    if (sc == 500) {
                        Message message = new Message();
                        message.setCode(sc);
                        message.setData(file[i].getOriginalFilename());
                        objects.add(message);
                    } else {
                        LsFilename lsFilename = new LsFilename();
                        lsFilename.setFileName(file[i].getOriginalFilename());
                        lsFilename.setLx("1");
                        lsFilename.setId(UtilId.getUUID());
                        filenameService.save(lsFilename);
                    }
                }

        }

        if (objects.size()==0){
            return success(objects).setCode(200);
        }

        return success(objects).setCode(505);
    }
}

