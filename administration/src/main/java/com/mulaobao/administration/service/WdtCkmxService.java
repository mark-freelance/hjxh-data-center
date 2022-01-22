package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.WdtCkmx;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * (WdtCkmx)表服务接口
 *
 * @author makejava
 * @since 2021-12-26 17:49:31
 */
public interface WdtCkmxService extends IService<WdtCkmx> {

    void uploading(MultipartFile multipartFile);

    void insertBatch(List<WdtCkmx> entities);
}

