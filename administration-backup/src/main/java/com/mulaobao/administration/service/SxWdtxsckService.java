package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.SxWdtxsck;
import org.springframework.web.multipart.MultipartFile;

/**
 * (SxWdtxsck)表服务接口
 *
 * @author makejava
 * @since 2022-01-20 16:51:26
 */
public interface SxWdtxsckService extends IService<SxWdtxsck> {

    int uploading(MultipartFile multipartFile, SxWdtxsckService sxWdtxsckService);
}

