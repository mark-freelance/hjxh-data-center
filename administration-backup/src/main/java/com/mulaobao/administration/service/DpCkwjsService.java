package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.DpCkwjs;
import org.springframework.web.multipart.MultipartFile;

/**
 * (DpCkwjs)表服务接口
 *
 * @author makejava
 * @since 2022-01-04 16:02:54
 */
public interface DpCkwjsService extends IService<DpCkwjs> {

    int uploading(MultipartFile multipartFile,DpCkwjsService dpCkwjsService);
}

