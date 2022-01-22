package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.KingdeeHs;
import org.springframework.web.multipart.MultipartFile;

/**
 * (KingdeeHs)表服务接口
 *
 * @author makejava
 * @since 2021-12-22 10:14:01
 */
public interface KingdeeHsService extends IService<KingdeeHs> {

    void uploading(MultipartFile multipartFile);
}

