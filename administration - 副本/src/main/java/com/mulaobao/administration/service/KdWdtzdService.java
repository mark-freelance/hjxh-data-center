package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.KdWdtzd;
import org.springframework.web.multipart.MultipartFile;

/**
 * (KdWdtzd)表服务接口
 *
 * @author makejava
 * @since 2022-01-07 17:39:22
 */
public interface KdWdtzdService extends IService<KdWdtzd> {

    int uploading(MultipartFile multipartFile);
}

