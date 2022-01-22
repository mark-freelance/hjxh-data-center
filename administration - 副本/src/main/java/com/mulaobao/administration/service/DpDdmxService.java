package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.DpDdmx;

import com.mulaobao.administration.temporary.Cwd;
import com.mulaobao.administration.temporary.Cwd2;
import com.mulaobao.administration.temporary.Dpckjs;
import com.mulaobao.administration.temporary.Dpckwjs;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * (DpDdmx)表服务接口
 *
 * @author makejava
 * @since 2021-12-13 17:29:43
 */
public interface DpDdmxService extends IService<DpDdmx> {
    int getexel(MultipartFile file,DpDdmxService dpDdmxService);
    List<Cwd> gets(String shops, String data1, String data2);

    List<Cwd2> gets2(String shops, String data1, String data2);


    List<Dpckjs> gets4(String shops,String data1, String data2);

    List<Dpckwjs> gets5(String shops,String data1, String data2);
}

