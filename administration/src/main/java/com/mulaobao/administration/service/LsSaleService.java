package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.LsSale;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

/**
 * (LsSale)表服务接口
 *
 * @author makejava
 * @since 2021-09-22 16:36:03
 */
public interface LsSaleService extends IService<LsSale> {

    void addLsSale(LsSale lsSale);


    void generalSummary(Date parse,LsSale one);

    List<LsSale> pddlists(String shop);
    List<LsSale> pddlists1(String shop);
    List<LsSale> tjblists(String shop);
    List<LsSale> jdlists(String shop);
    List<LsSale> tmlists(String shop);
    List<LsSale> qtlists(String shop);
    List<LsSale> mgjlists(String shop);
    List<LsSale> dylists(String shop);
    List<LsSale> zhzlists();
   LsSale xgzhzlists(Date shop);
    List<LsSale> qitiaolists();

    void setLsae(String lsae);

    void setLsaemt(String lsae);

    void setPddxlsx(String lsea);

    List<LsSale>  getdaochu(String datas1,String datas2,String shops []);

    void getDaochu(HttpServletResponse response, HttpServletRequest request);

    void settmsycm(String lsea);

    void settmztc(String lsea);

    void gettmpxb(String lsea);

    void gettmcjtj(String lsea);

    void gettmcjzz(String lsea);

    void gettmaitg(String lsea);

    boolean removeqb(String id);

    void getttxssj(String lsea);

    void getjdtkje(String lsea);

    void getjdCommodity(String lsea);

    void getjdxssj(String lsea);

    void getttztc(String lsea);

    void getJdKc(String lsea);

    void getjdGwcd(String lsea);

    void getjdJst(String lsea);
}

