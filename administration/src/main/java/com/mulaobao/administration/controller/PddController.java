package com.mulaobao.administration.controller;

import com.baomidou.mybatisplus.extension.api.ApiController;
import com.mulaobao.administration.entity.Chunk;
import com.mulaobao.administration.service.PddCjtgService;
import com.mulaobao.administration.service.PddFxtService;
import com.mulaobao.administration.service.PddSstgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("aipPdd")
@RestController
public class PddController extends ApiController {

      @Autowired
    private PddFxtService fxtService;

      @Autowired
    private PddCjtgService pddCjtgService;

      @Autowired
    private PddSstgService pddSstgService;




    @PostMapping("single")
    public void singleUpload(Chunk chunk,@RequestParam("data1")  String data1) {
        // 获取传来的文件
        MultipartFile file = chunk.getFile();
        // 获取文件名
        String filename = chunk.getFilename();
        System.out.println("文件名"+filename);

    }

}
