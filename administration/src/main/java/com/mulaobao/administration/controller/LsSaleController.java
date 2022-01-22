package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.dao.LsSaleDao;
import com.mulaobao.administration.entity.LsSale;
import com.mulaobao.administration.entity.LsSaleAcotn;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.LsSaleService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.util.UtilId;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ;
import lombok.Data;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (LsSale)表控制层
 *
 * @author makejava
 * @since 2021-09-22 16:35:59
 */
@RestController
@RequestMapping("lsSale")
public class LsSaleController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private LsSaleService lsSaleService;

    @Resource
    private LsSaleDao lsSaleDao;



    @Resource
    private LsShopService lsShopService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    /**
     * 分页查询所有数据
     *
     *
     */
            @GetMapping("getcs")
            public R show(HttpServletResponse response, HttpServletRequest request){
                lsSaleService.getDaochu(response,request);
                return success(true);
            }


    @PostMapping("list/{current}/{limit}")
    public R selectAll(@PathVariable long current, @PathVariable long limit, @RequestBody LsSaleAcotn lsSaleAcotn, HttpServletRequest request) {
        //创建page对象，传递当前页，每页记录数
        HttpSession session = request.getSession();
        Page<LsSale> pages = new Page<>(current,limit);
        QueryWrapper<LsSale> lsSaleQueryWrapper = new QueryWrapper<>();
        lsSaleQueryWrapper.orderByAsc("Shop_bh,Date_time");
            if (lsSaleAcotn.getValue() !=null){
                if (!lsSaleAcotn.getValue().equals("")){
                    if (!lsSaleAcotn.getValue().equals("1"))
                    lsSaleQueryWrapper.eq("Platform_bh",lsSaleAcotn.getValue());
                }
            }
            if (lsSaleAcotn.getDa1()!=null){


        if (lsSaleAcotn.getDa1().length!=0){
            lsSaleQueryWrapper.apply(
                    "(CONVERT([varchar](10),Date_time,(120)))>= "+"'"+lsSaleAcotn.getDa1()[0]+"'")
                    .apply(
                            "(CONVERT([varchar](10),Date_time,(120))) <="+ "'"+lsSaleAcotn.getDa1()[1]+"'");
        }
            }
        if (lsSaleAcotn.getName().length!=0){
                lsSaleQueryWrapper.in("Shop_bh",lsSaleAcotn.getName());
            }


        //调用方法实现分页查询
        IPage<LsSale> pageHospitalSet = lsSaleService.page(pages,lsSaleQueryWrapper);
        List<LsSale> records = pageHospitalSet.getRecords();
        for (int i = 0;i<records.size();i++){
            QueryWrapper<LsShop> pper = new QueryWrapper<>();
            pper.eq("Shop_bh",records.get(i).getShopBh());
            LsShop one = lsShopService.getOne(pper);
            records.get(i).setName(one.getShopName());
            records.get(i).setRefundrate1(UtilId.stringred(UtilId.getnlllduoble(records.get(i).getRefundrate())));
            records.get(i).setPaymentrate1(UtilId.stringred(UtilId.getnlllduoble(records.get(i).getPaymentrate())));
            records.get(i).setFreetrafficzb1(UtilId.stringred(UtilId.getnlllduoble(records.get(i).getFreetrafficzb())));
            records.get(i).setPromotionflowzb1(UtilId.stringred(UtilId.getnlllduoble(records.get(i).getPromotionflowzb())));
            records.get(i).setPromotioncostzb1(UtilId.stringred(UtilId.getnlllduoble(records.get(i).getPromotioncostzb())));
            records.get(i).setCostratio1(UtilId.stringred(UtilId.getnlllduoble(records.get(i).getCostratio()))  );
        }

        session.setAttribute("lsSaleAcotn",lsSaleAcotn);
        return success(pageHospitalSet);
    }




    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("getone/{id}")
    public R selectOne(@PathVariable String id) {
        return success(this.lsSaleService.getOne(new QueryWrapper<LsSale>().eq("id",id)));
    }

    /**
     * 新增数据
     *
     * @param lsSale 实体对象
     * @return 新增结果
     */
    @PostMapping("addHz")
    public R insert(@RequestBody LsSale lsSale) throws ParseException {


        lsSale.setDateTime(simpleDateFormat.parse(lsSale.getDateTime1()));
        QueryWrapper<LsSale> lsSaleQueryWrapper = new QueryWrapper<>();
        lsSaleQueryWrapper.eq("Date_time",simpleDateFormat.parse(lsSale.getDateTime1()));
        lsSaleQueryWrapper.eq("Shop_bh",10);
        LsSale one = lsSaleService.getOne(lsSaleQueryWrapper);
        if (one==null){
            QueryWrapper<LsSale> lsSaleQueryWrapper11 = new QueryWrapper<>();
            lsSaleQueryWrapper11.eq("Date_time",simpleDateFormat.parse(lsSale.getDateTime1()));
            lsSaleQueryWrapper11.eq("Shop_bh",lsSale.getShopBh());
            LsSale one1 = lsSaleService.getOne(lsSaleQueryWrapper11);
            if (one1==null){
                lsSaleService.addLsSale(lsSale);
            }else{
                return success(505); //已经存在
            }
            lsSale.setId(UtilId.getUUID());
            lsSale.setPlatformBh("10");
            lsSale.setShopBh("10");
            lsSale.setFreetrafficzb(1.1);
            lsSale.setPromotionflowzb(1.1);
            lsSaleService.addLsSale(lsSale);
        }else {
            QueryWrapper<LsSale> lsSaleQueryWrapper1 = new QueryWrapper<>();
            lsSaleQueryWrapper1.eq("Date_time",simpleDateFormat.parse(lsSale.getDateTime1()));
            lsSaleQueryWrapper1.eq("Shop_bh",lsSale.getShopBh());
            LsSale one1 = lsSaleService.getOne(lsSaleQueryWrapper1);
            if (one1==null){
                lsSaleService.addLsSale(lsSale);
            }else{
                return success(505); //已经存在
            }
             lsSaleService.generalSummary(simpleDateFormat.parse(lsSale.getDateTime1()),one);
        }

        return success(200);
    }

    /**
     * 修改数据
     *
     * @param lsSale 实体对象
     * @return 修改结果
     */
    @PostMapping("xgsj")
    public R update(@RequestBody LsSale lsSale)
    {
        lsSale.setXgdatetime(new Date());
        this.lsSaleService.updateById(lsSale);
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", 10).eq("Date_time", lsSale.getDateTime()));
        LsSale xgzhzlists = this.lsSaleService.xgzhzlists(lsSale.getDateTime());
        if (one!=null){
            xgzhzlists.setId(one.getId());
            lsSaleService.updateById(xgzhzlists);
        }

        return success(true);
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping("delet/{idList}/{id}")
    public R delete(@PathVariable String idList,@PathVariable String id) throws ParseException {
        QueryWrapper<LsSale> lsSaleQueryWrapper = new QueryWrapper<>();
        lsSaleQueryWrapper.eq("Date_time",simpleDateFormat.parse(idList));
        lsSaleQueryWrapper.eq("Shop_bh",id);
        lsSaleService.remove(lsSaleQueryWrapper);
       return success(200);
    }

    /**
     * 删除数据单个
     *
     * @return 删除结果
     */
    @DeleteMapping("deleteId/{id}")
    public R deletedg(@PathVariable String id) {
        return success(lsSaleService.removeqb(id));
    }



    /**
     * 删除数据单个
     *
     * @return 删除结果
     */
    @PostMapping("addlsSale")
    public R addlsSale(@RequestBody LsSale lsSale) {
        lsSale.setId(UtilId.getUUID());
        LsShop shop_name = lsShopService.getOne(new QueryWrapper<LsShop>().eq("Shop_name", lsSale.getName()));
        lsSale.setShopBh(shop_name.getShopBh());
        lsSale.setPlatformBh(shop_name.getPlatformBh());
        return success(this.lsSaleDao.insert(lsSale));
    }


    @GetMapping("a")
    public void shows(){
        List<LsSale> qitiaolists = lsSaleService.qitiaolists();

    }



}

