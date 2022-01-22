package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.WdtKc;
import org.springframework.web.multipart.MultipartFile;

/**
 * (WdtKc)表服务接口
 *
 * @author makejava
 * @since 2021-12-22 10:13:25
 */
public interface WdtKcService extends IService<WdtKc> {

    void uploading(MultipartFile multipartFile);
}

