package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.temporary.Cwd;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * (DpDdmx)表服务接口
 *
 * @author makejava
 * @since 2021-12-13 17:29:43
 */
public interface DpDdmxService extends IService<DpDdmx> {
    void getexel(MultipartFile file);
    List<Cwd> gets(String shops,String data1,String data2);
}

