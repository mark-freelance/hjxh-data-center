package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.KdYdzd;
import org.springframework.web.multipart.MultipartFile;

/**
 * (KdYdzd)表服务接口
 *
 * @author makejava
 * @since 2022-01-10 09:20:16
 */
public interface KdYdzdService extends IService<KdYdzd> {

    int uploading(MultipartFile multipartFile, KdYdzdService kdYdzdService);
}

