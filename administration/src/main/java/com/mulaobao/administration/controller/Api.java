package com.mulaobao.administration.controller;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.read.metadata.ReadSheet;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.R;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.listener.DdmcXssjListener;
import com.mulaobao.administration.service.LsSaleService;
import com.mulaobao.administration.service.TmCommodityService;
import com.mulaobao.administration.service.UserService;
import com.mulaobao.administration.util.UtilId;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("api")
public class Api {

@Autowired
private LsSaleService lsSaleService;

@Resource
private TmCommodityService tmCommodityService;

@Resource
private UserService userService;


    /**
     * 社区团购
     * @param lsae
     */

    //美团的商品概况
    @PostMapping("mtLsae")
    public void getmt(@RequestBody String lsae){
        lsSaleService.setLsaemt(lsae);
    }


    /**
     * 拼多多
     * @param lsea
     */

    //拼多多
    @PostMapping("Pddxlsx")
    public void getpddxlsx(@RequestBody String lsea){
            lsSaleService.setPddxlsx(lsea);
    }

    //拼多多的商品概况
    @PostMapping("pddLsae")
    public void getpdd(@RequestBody String lsae){
        lsSaleService.setLsae(lsae);
    }


    /**
     *  淘系
     * @param lsea
     */


    //天猫生意参谋
    @PostMapping("tmsycm")
    public void gettmsycm(@RequestBody String lsea){
        lsSaleService.settmsycm(lsea);
    }
    //天猫直通车
    @PostMapping("tmztc")
    public void gettmztc(@RequestBody String lsea){
        lsSaleService.settmztc(lsea);
    }

    //天猫商品详细
    @PostMapping("tmCommodity")
    public void gettmCommodity(@RequestBody String lsea){
        tmCommodityService.settmCommodity(lsea);
    }

    //天猫品销宝
    @PostMapping("tmpxb")
    public void gettmpxb(@RequestBody String lsea){
        lsSaleService.gettmpxb(lsea);
    }
    //天猫超级推荐
    @PostMapping("tmcjtj")
    public void gettmcjtj(@RequestBody String lsea){
        lsSaleService.gettmcjtj(lsea);
    }
    //天猫超级钻展
    @PostMapping("tmcjzz")
    public void gettmcjzz(@RequestBody String lsea){
        lsSaleService.gettmcjzz(lsea);
    }
    //天猫ai推广
    @PostMapping("tmaitg")
    public void gettmaitg(@RequestBody String lsea){
        lsSaleService.gettmaitg(lsea);
    }

    //特价版
    @PostMapping("ttxssj")
    public void getttxssj(@RequestBody String lsea){
        lsSaleService.getttxssj(lsea);
    }

    @PostMapping("ttztc")
    public void getttztc(@RequestBody String lsea){
        lsSaleService.getttztc(lsea);
    }

    /**
     *  京东
     */

    @PostMapping("jdtkje")
    public void getjdtkje(@RequestBody String lsea){
        lsSaleService.getjdtkje(lsea);
    }

    @PostMapping("jdCommodity")
    public void getjdCommodity(@RequestBody String lsea){
        lsSaleService.getjdCommodity(lsea);
    }

    @PostMapping("jdxssj")
    public void getJdXsSj(@RequestBody String lsea){
        lsSaleService.getjdxssj(lsea);
    }

    @PostMapping("jdkc")
    public void getJdKc(@RequestBody String lsea){
        lsSaleService.getJdKc(lsea);
    }

    @PostMapping("jdGwcd")
    public void getjdGwcd(@RequestBody String lsea){
        lsSaleService.getjdGwcd(lsea);
    }

    @PostMapping("jdJst")
    public void getjdJst(@RequestBody String lsea){
        lsSaleService.getjdJst(lsea);
    }

}
