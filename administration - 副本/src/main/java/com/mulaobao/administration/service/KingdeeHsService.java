package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.temporary.Dpckjs;
import com.mulaobao.administration.temporary.Dpckwjs;
import com.mulaobao.administration.temporary.Dxb;
import com.mulaobao.administration.temporary.Dxb2;
import com.mulaobao.administration.entity.KingdeeHs;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * (KingdeeHs)表服务接口
 *
 * @author makejava
 * @since 2021-12-22 10:14:01
 */
public interface KingdeeHsService extends IService<KingdeeHs> {





    void getDaochuSS(String[] datas, HttpServletResponse response, HttpServletRequest request);


    List<Dxb> gets(String data1,String data2);

    List<Dxb2> gets2(String data1,String data2);

    List<Dxb> gets3(String data1,String data2);

    int uploading(MultipartFile multipartFile, KingdeeHsService kingdeeHsService);

}

