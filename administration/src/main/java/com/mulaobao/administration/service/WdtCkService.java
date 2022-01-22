package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.WdtCk;
import org.springframework.web.multipart.MultipartFile;

/**
 * (WdtCk)表服务接口
 *
 * @author makejava
 * @since 2021-12-22 10:12:59
 */
public interface WdtCkService extends IService<WdtCk> {

    void uploading(MultipartFile multipartFile);
}

