package com.mulaobao.administration.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.service.*;
import com.mulaobao.administration.util.UtilId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


@RestController
@RequestMapping("daoru")
public class Daoru extends ApiController {

    @Autowired
    private PddCjtgService pddCjtgService;

    @Autowired
    private PddSstgService sstgService;

    @Autowired
    private LsShopService lsShopService;

    @Autowired
    private TmCjzzService tmCjzzService;

    @Autowired
    private TmCjtgService tmCjtgService;

    @Autowired
    private TmAitgService tmAitgService;
    @Autowired
    private TmPxbService tmPxbService;

    @Autowired
    private TmTktgService tmTktgService;
    @Autowired
    private TmXssjService tmXssjService;
    @Autowired
    private TmZtcService tmZtcService;

    @Autowired
    private JdXssjService jdXssjService;

    @Autowired
    private JdJdkcService jdJdkcService;

    @Autowired
    private JdCjtgService jdCjtgService;

    @Autowired
    private JdGwcdService jdGwcdService;

    @Autowired
    private MgjXssjService mgjXssjService;

    @Autowired
    private DdmcXssjService ddmcXssjService;

    @Autowired
    private DyXssjService dyXssjService;


    @Autowired
    private TtZtcService ttZtcService;

    @Autowired
    private PddFxtService fxtService;

    @Autowired
    private MtXssjService mtXssjService;

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");



    @PostMapping("information")
    public R information (@RequestParam("file") MultipartFile[] file, @RequestParam("ms") String ms,@RequestParam("data1") String data1){
        LsShop shop_name = lsShopService.getOne(new QueryWrapper<LsShop>().eq("Shop_name", ms));

        Date date2 = new Date();
        try {
            date2 = simpleDateFormat.parse(data1);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        if (shop_name!=null){
            for (int i = 0;i<file.length;i++){
                if (shop_name.getPlatformBh().equals("101")){  //拼多多
                    if (file[i].getOriginalFilename().substring(0,2).equals("场景")){
                        List<PddCjtg> list = pddCjtgService.list(new QueryWrapper<PddCjtg>().eq("Date_time", date2).eq("Shop_bh", shop_name.getShopBh()));
                        if (list.size()==0) {
                            pddCjtgService.getInformation(file[i], ms, shop_name, date2);
                        }
                    }

                    if (file[i].getOriginalFilename().substring(0,2).equals("搜索")){
                        List<PddSstg> list = sstgService.list(new QueryWrapper<PddSstg>().eq("Date_time", date2).eq("Shop_bh", shop_name.getShopBh()));
                        if (list.size()==0) {
                            sstgService.getInformation(file[i], ms, shop_name, date2);
                        }
                    }
                    if (file[i].getOriginalFilename().substring(0,2).equals("放心")){
                        fxtService.getInformation(file[i],ms,shop_name,date2);
                    }
                }
                ////////////////////////////////////
                if (shop_name.getPlatformBh().equals("102")){  //淘系
                    if (file[i].getOriginalFilename().substring(0,4).equals("业务类型")){ //超级钻 展
                        tmCjzzService.getInformation(file[i],ms,shop_name,date2);
                    }
                    if (file[i].getOriginalFilename().substring(0,4).equals("商品推广")){//超级推荐
                        tmCjtgService.getInformation(file[i],ms,shop_name,date2);
                    }
                    if (file[i].getOriginalFilename().substring(0,4).equals("2021")){ //直通车
                        tmZtcService.getInformation(file[i],ms,shop_name,date2);
                    }
                    if (file[i].getOriginalFilename().substring(0,4).equals("【生意参")){//销售数据

                        tmXssjService.getInformation(file[i],ms,shop_name);
                    }
                    if (file[i].getOriginalFilename().substring(0,4).equals("账户_分")){ //AI推广
                        tmAitgService.getInformation(file[i],ms,shop_name,date2);
                    }

                    if (file[i].getOriginalFilename().substring(0,4).equals("明星店铺")){ //品销宝
                        tmPxbService.getInformation(file[i],ms,shop_name,date2);
                    }
                    if (file[i].getOriginalFilename().substring(0,4).equals("arre")){ //淘客推广
                        tmTktgService.getInformation(file[i],ms,shop_name,date2);
                    }
                    if (file[i].getOriginalFilename().substring(0,4).equals("单元数据")){ //特价版
                        ttZtcService.getInformation(file[i],ms,shop_name,date2);
                    }
                }
                ////////////////////////////////////

                if (shop_name.getPlatformBh().equals("103")){  //京东
                    if (file[i].getOriginalFilename().substring(0,4).equals("京东快车")){ //京东快车
                        jdJdkcService.getInformation(file[i],ms,shop_name,date2);
                    }
                    if (file[i].getOriginalFilename().split("_")[1].equals("京速推")){//京速推
                        jdCjtgService.getInformation(file[i],ms,shop_name,date2);
                    }
                    if (file[i].getOriginalFilename().split("_")[1].equals("京速推_")){

                    }else {
                        String substring = file[i].getOriginalFilename().split("_")[1].substring(0, 3);
                        if (substring.equals("购物触")){ //购物触点
                            jdGwcdService.getInformation(file[i],ms,shop_name,date2);
                        }
                    }
                    if (file[i].getOriginalFilename().substring(0,4).equals("交易概况")){//销售数据
                        jdXssjService.getInformation(file[i],ms,shop_name,date2);
                    }

                }
                ////////////////////////////////////

                if (shop_name.getPlatformBh().equals("105")){
                    if (file[i].getOriginalFilename().substring(0,4).equals("店铺成交")){//蘑菇街
                        mgjXssjService.getInformation(file[i],ms,shop_name,date2);
                    }
                    if (file[i].getOriginalFilename().substring(0,4).equals("商品分析")){//抖音
                        dyXssjService.getInformation(file[i],ms,shop_name,date2);
                    }

                }
                ////////////////////////////////////
                if (shop_name.getPlatformBh().equals("104")){  //其他

                    if (shop_name.getShopName().substring(0,4).equals("多多买菜")){//多多买菜
                        ddmcXssjService.getInformation(file[i],ms,shop_name,date2);
                    }

                    if (shop_name.getShopName().substring(0,4).equals("美团优选")){//美团优选
                        mtXssjService.getInformation(file[i],ms,shop_name,date2);

                    }
                }
                ////////////////////////////////////


            }
            return success(200);
        }
        return success(404);

    }



    @GetMapping("hzName/{name}/{data1}")
    public R showrd(@PathVariable("name") String name,@PathVariable("data1") String data1){
        Date date2 = new Date();
        try {
            date2 = simpleDateFormat.parse(data1);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        LsShop shop_name = lsShopService.getOne(new QueryWrapper<LsShop>().eq("Shop_name",name));
        List<LsSale> pddHzEtls = new ArrayList<>();
        LsSale pddHzEtl = new LsSale();
        pddHzEtl.setShopBh(shop_name.getShopBh());
        pddHzEtl.setPlatformBh(shop_name.getPlatformBh());
        if (shop_name.getPlatformBh().equals("101")){ //拼多多
                            Map<String,Object> cjtgNum = pddCjtgService.getNum(shop_name.getShopBh(),date2);   //场景推广
                            Map<String,Object> sstgNum = sstgService.getNum(shop_name.getShopBh(),date2);  //搜索推广
                             Map<String,Object> fxtNum = fxtService.getNum(shop_name.getShopBh(),date2);  //放心推
            if (cjtgNum==null && sstgNum==null&& fxtNum==null){
        return success(404);
            }
            if (cjtgNum!=null){
                pddHzEtl.setManyscenesll(Double.parseDouble(cjtgNum.get("giveNum").toString()));
                pddHzEtl.setManyscenesfy(Double.parseDouble(cjtgNum.get("SpendNum").toString()));
            }
            if (sstgNum!=null){
                pddHzEtl.setMoresearchfy(Double.parseDouble(sstgNum.get("SpendNum").toString()));
                pddHzEtl.setMoresearchll(Double.parseDouble(sstgNum.get("giveNum").toString()));
            }
            if (fxtNum!=null){
                pddHzEtl.setRestassuredpushfy(Double.parseDouble(fxtNum.get("RestAssuredPushfy").toString()));
            }
                            pddHzEtl.setActualsales(0.0);
                            pddHzEtl.setPaymentrate(0.0);
                            pddHzEtl.setCustomerprice(0.0);
                            pddHzEtls.add(pddHzEtl);

                        return success(pddHzEtls);
        }

        if (shop_name.getPlatformBh().equals("102")){ //淘系
            if (shop_name.getShopName().substring(shop_name.getShopName().length()-4,shop_name.getShopName().length()-1).equals("特价版")){
                Map<String,Object> ttztcNum =  ttZtcService.getNum(shop_name.getShopBh(),date2);  //销售数据
                if (ttztcNum==null){
                    return success(404);
                }
                pddHzEtl.setMoresearchll((Double.parseDouble(ttztcNum.get("MoreSearchll").toString())));
                pddHzEtl.setMoresearchfy((Double.parseDouble(ttztcNum.get("MoreSearchfy").toString())));
                pddHzEtl.setRefundrate(0.0); //退款率
                pddHzEtl.setActualsales(0.0);  //实际销售额
                pddHzEtl.setPaymentrate(0.0); //支付转化率
                pddHzEtl.setCustomerprice(0.0); //客单价
                pddHzEtls.add(pddHzEtl);
                return success(pddHzEtls);
            }

            Map<String,Object> xssjNum =  tmXssjService.getNum(shop_name.getShopBh(),date2);  //销售数据
            Map<String,Object> pxbNum =  tmPxbService.getNum(shop_name.getShopBh(),date2);   //品销宝
            Map<String,Object> cjzzNum =  tmCjzzService.getNum(shop_name.getShopBh(),date2); //超级钻展
            Map<String,Object> aiNum =  tmAitgService.getNum(shop_name.getShopBh(),date2); //Ai推广
            Map<String,Object> tkNum =  tmTktgService.getNum(shop_name.getShopBh(),date2);  //淘客推广
            Map<String,Object> ztcNum =  tmZtcService.getNum(shop_name.getShopBh(),date2);   //直通车
            Map<String,Object> cjtgNum =  tmCjtgService.getNum(shop_name.getShopBh(),date2);  //场景推广
            if (xssjNum==null && pxbNum==null && cjtgNum==null && aiNum ==null && tkNum == null && ztcNum ==null && cjtgNum ==null){
                return success(404);
            }
            if (xssjNum!=null){
                pddHzEtl.setSales(Double.parseDouble(xssjNum.get("Sales").toString()));
                pddHzEtl.setOrderquantity((Double.parseDouble(xssjNum.get("OrderQuantity").toString())));
                pddHzEtl.setNumBuyers((Double.parseDouble(xssjNum.get("Num_Buyers").toString())));
                pddHzEtl.setRefundamount((Double.parseDouble(xssjNum.get("RefundAmount").toString())));
                pddHzEtl.setActualsales(UtilId.sting2double((Double.parseDouble(xssjNum.get("Sales").toString()))-(Double.parseDouble(xssjNum.get("RefundAmount").toString()))));
                pddHzEtl.setPaymentrate(UtilId.sting2double((Double.parseDouble(xssjNum.get("Num_Buyers").toString()))/(Double.parseDouble(xssjNum.get("TotalTraffic").toString()))));
                pddHzEtl.setCustomerprice((Double.parseDouble(xssjNum.get("CustomerPrice").toString())));
                pddHzEtl.setTotaltraffic((Double.parseDouble(xssjNum.get("TotalTraffic").toString())));
                pddHzEtl.setRefundrate(UtilId.sting2double(Double.parseDouble((xssjNum.get("RefundAmount").toString()))/(Double.parseDouble(xssjNum.get("Sales").toString()))));

            }

            if (pxbNum!=null){
                pddHzEtl.setPinxiaobaofy((Double.parseDouble(pxbNum.get("Pinxiaobaofy").toString())));
                pddHzEtl.setPinxiaobaoll(Double.parseDouble(pxbNum.get("Pinxiaobaoll").toString()));
            }

            if (cjzzNum!=null){
                pddHzEtl.setRestassuredpushfy((Double.parseDouble(cjzzNum.get("RestAssuredPushfy").toString())));
                pddHzEtl.setRestassuredpushll((Double.parseDouble(cjzzNum.get("RestAssuredPushll").toString())));
            }
            if (aiNum!=null){
                pddHzEtl.setAipromotionll((Double.parseDouble(aiNum.get("AIPromotionll").toString())));
                pddHzEtl.setAipromotionfy((Double.parseDouble(aiNum.get("AIPromotionfy").toString())));
            }
            if (tkNum!=null){
                pddHzEtl.setTaokepromotionll((Double.parseDouble(tkNum.get("TaokePromotionll").toString())));
                pddHzEtl.setTaokepromotionfy((Double.parseDouble(tkNum.get("TaokePromotionfy").toString())));
            }
            if (ztcNum!=null){
                pddHzEtl.setMoresearchll((Double.parseDouble(ztcNum.get("MoreSearchll").toString())));
                pddHzEtl.setMoresearchfy((Double.parseDouble(ztcNum.get("MoreSearchfy").toString())));

            }
            if (cjtgNum!=null){
                pddHzEtl.setManyscenesll((Double.parseDouble(cjtgNum.get("ManyScenesll").toString())));
                pddHzEtl.setManyscenesfy((Double.parseDouble(cjtgNum.get("ManyScenesfy").toString())));
            }

            pddHzEtls.add(pddHzEtl);
            return success(pddHzEtls);
             }

        if (shop_name.getPlatformBh().equals("103")){ //京东
            Map<String,Object>  xxsjNum  = jdXssjService.getNum(shop_name.getShopBh(),date2); //销售数据
                    Map<String,Object>  gwcdNum =  jdGwcdService.getNum(shop_name.getShopBh(),date2); //购物触点
                    Map<String,Object>  jdcjNum =  jdCjtgService.getNum(shop_name.getShopBh(),date2); //京速推
                    Map<String,Object>  jdkcNum = jdJdkcService.getNum(shop_name.getShopBh(),date2); //京东快车
            if (xxsjNum==null && gwcdNum==null && jdcjNum ==null && jdkcNum ==null){
                return success(404);
            }

            if (xxsjNum!=null){
                pddHzEtl.setSales(Double.parseDouble(xxsjNum.get("Sales").toString()));
                pddHzEtl.setOrderquantity((Double.parseDouble(xxsjNum.get("OrderQuantity").toString())));
                pddHzEtl.setNumBuyers((Double.parseDouble(xxsjNum.get("Num_Buyers").toString())));
                pddHzEtl.setPaymentrate((Double.parseDouble(xxsjNum.get("PaymentRate").toString())));
                pddHzEtl.setCustomerprice((Double.parseDouble(xxsjNum.get("CustomerPrice").toString())));
                pddHzEtl.setTotaltraffic((Double.parseDouble(xxsjNum.get("TotalTraffic").toString())));
                pddHzEtl.setRefundrate(0.0);//退款率
                pddHzEtl.setActualsales(0.0); //实际销售额
            }
            if (gwcdNum!=null){
                pddHzEtl.setRestassuredpushfy((Double.parseDouble(gwcdNum.get("RestAssuredPushfy").toString())));
                pddHzEtl.setRestassuredpushll((Double.parseDouble(gwcdNum.get("RestAssuredPushll").toString())));
            }
            if (jdcjNum!=null){
                pddHzEtl.setManyscenesll((Double.parseDouble(jdcjNum.get("ManyScenesll").toString())));
                pddHzEtl.setManyscenesfy((Double.parseDouble(jdcjNum.get("ManyScenesfy").toString())));
            }
            if (jdkcNum!=null){
                pddHzEtl.setMoresearchll((Double.parseDouble(jdkcNum.get("MoreSearchll").toString())));
                pddHzEtl.setMoresearchfy((Double.parseDouble(jdkcNum.get("MoreSearchfy").toString())));
            }

            pddHzEtls.add(pddHzEtl);
            return success(pddHzEtls);
             }
        if (shop_name.getPlatformBh().equals("104")){  //其他的
            if (shop_name.getShopName().substring(0,4).equals("多多买菜")){
                Map<String,Object>  ddmcNum =  ddmcXssjService.getNum(shop_name.getShopBh(),date2);
                if (ddmcNum==null){
                    return success(404);
                }
                pddHzEtl.setCustomerprice(0.0); //客单价
                pddHzEtl.setActualsales(0.0); //实际销售额
                pddHzEtl.setSales(Double.parseDouble(ddmcNum.get("Sales").toString()));
                pddHzEtl.setOrderquantity(Double.parseDouble(ddmcNum.get("OrderQuantity").toString()));
                pddHzEtls.add(pddHzEtl);
                return success(pddHzEtls);
            }
            if (shop_name.getShopName().substring(0,4).equals("美团优选")){
                Map<String,Object>  mtNum =  mtXssjService.getNum(shop_name.getShopBh(),date2);
                if (mtNum==null){
                    return success(404);
                }
                pddHzEtl.setCustomerprice(0.0); //客单价
                pddHzEtl.setActualsales(0.0); //实际销售额
                pddHzEtl.setPlatformbuckle(0.0);
                pddHzEtl.setSales(Double.parseDouble(mtNum.get("Sales").toString()));
                pddHzEtl.setOrderquantity(Double.parseDouble(mtNum.get("OrderQuantity").toString()));
                pddHzEtls.add(pddHzEtl);
                return success(pddHzEtls);
            }
            }
        if (shop_name.getPlatformBh().equals("105")){

            if (shop_name.getShopName().substring(shop_name.getShopName().length()-4,shop_name.getShopName().length()-1).equals("蘑菇街")){
                Map<String,Object>  mtNum =  mgjXssjService.getNum(shop_name.getShopBh(),date2);

                if (mtNum.size()==0){
                    return success(404);
                }
                pddHzEtl.setSales(Double.parseDouble(mtNum.get("Sales").toString()));
                pddHzEtl.setOrderquantity(Double.parseDouble(mtNum.get("OrderQuantity").toString()));
                pddHzEtl.setNumBuyers(Double.parseDouble(mtNum.get("Num_Buyers").toString()));

                pddHzEtl.setPaymentrate(Double.parseDouble(mtNum.get("PaymentRate").toString()));
                pddHzEtl.setCustomerprice(Double.parseDouble(mtNum.get("CustomerPrice").toString()));
                pddHzEtl.setTotaltraffic(Double.parseDouble(mtNum.get("TotalTraffic").toString()));
                pddHzEtl.setRefundamount(Double.parseDouble(mtNum.get("RefundAmount").toString()));
                pddHzEtl.setRefundrate(UtilId.sting2double(pddHzEtl.getRefundamount()/pddHzEtl.getSales()));
                pddHzEtl.setActualsales(pddHzEtl.getSales()-pddHzEtl.getRefundamount());

                pddHzEtls.add(pddHzEtl);
                return success(pddHzEtls);
            }else {
                Map<String,Object> dyxssjNum =  dyXssjService.getNum(shop_name.getShopBh(),date2); //抖音
                if (dyxssjNum==null){
                    return success(404);
                }
                pddHzEtl.setTotaltraffic(0.1);
                pddHzEtl.setSales(Double.parseDouble(dyxssjNum.get("Sales").toString()));
                pddHzEtl.setOrderquantity(Double.parseDouble(dyxssjNum.get("OrderQuantity").toString()));
                pddHzEtl.setNumBuyers(Double.parseDouble(dyxssjNum.get("Num_Buyers").toString()));
                pddHzEtl.setRefundamount(Double.parseDouble(dyxssjNum.get("RefundAmount").toString()));
                pddHzEtl.setActualsales(Double.parseDouble(dyxssjNum.get("Sales").toString())-Double.parseDouble(dyxssjNum.get("RefundAmount").toString())); //实际销售额
                pddHzEtl.setRefundrate(UtilId.sting2double(Double.parseDouble(dyxssjNum.get("RefundAmount").toString())/Double.parseDouble(dyxssjNum.get("Sales").toString()))); //退款率
                pddHzEtl.setCustomerprice(UtilId.sting2double(Double.parseDouble(dyxssjNum.get("Sales").toString())/Double.parseDouble(dyxssjNum.get("Num_Buyers").toString()))); //客单价
                pddHzEtls.add(pddHzEtl);
                return success(pddHzEtls);
            }

        }

        return success("成功");
    }


    /**
     * 文件夹上传
     *
     * @param data1
     * @return
     */

    @PostMapping("information2")
    public R information2 (Chunk chunk,@RequestParam("data1") String data1){
        String ms = chunk.getRelativePath().substring(0,chunk.getRelativePath().indexOf("/"));
        System.out.println(chunk.getRelativePath());
        if(ms.equals("美团优选")){
                ms = ms+"(湖北)";
        }
        if(ms.equals("多多买菜")){
            ms = ms+"(四川)";
        }
        LsShop shop_name = lsShopService.getOne(new QueryWrapper<LsShop>().eq("Shop_name", ms));

        MultipartFile file = chunk.getFile();

        Date date2 = new Date();
        try {
            date2 = simpleDateFormat.parse(data1);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        if (shop_name!=null){
            System.out.println("2");
                if (shop_name.getPlatformBh().equals("101")){  //拼多多
                    System.out.println("3");
                    if (file.getOriginalFilename().substring(0,2).equals("场景")){

                        pddCjtgService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().substring(0,2).equals("搜索")){
                        sstgService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().substring(0,2).equals("放心")){
                        fxtService.getInformation(file,ms,shop_name,date2);
                    }
                }
                ////////////////////////////////////
                if (shop_name.getPlatformBh().equals("102")){  //淘系
                    if (file.getOriginalFilename().substring(0,4).equals("业务类型")){ //超级钻 展
                        tmCjzzService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().substring(0,4).equals("商品推广")){//超级推荐
                        tmCjtgService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().substring(0,4).equals("2021")){ //直通车
                        tmZtcService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().substring(0,4).equals("【生意参")){//销售数据

                        tmXssjService.getInformation(file,ms,shop_name);
                    }
                    if (file.getOriginalFilename().substring(0,4).equals("账户_分")){ //AI推广
                        tmAitgService.getInformation(file,ms,shop_name,date2);
                    }

                    if (file.getOriginalFilename().substring(0,4).equals("明星店铺")){ //品销宝
                        tmPxbService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().substring(0,4).equals("arre")){ //淘客推广
                        tmTktgService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().substring(0,4).equals("单元数据")){ //特价版
                        ttZtcService.getInformation(file,ms,shop_name,date2);
                    }
                }
                ////////////////////////////////////

                if (shop_name.getPlatformBh().equals("103")){  //京东
                    if (file.getOriginalFilename().substring(0,4).equals("京东快车")){ //京东快车
                        jdJdkcService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().split("_")[1].equals("京速推_")){//京速推
                        jdCjtgService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().split("_")[1].equals("京速推_")){

                    }else {
                        String substring = file.getOriginalFilename().split("_")[1].substring(0, 3);
                        if (substring.equals("购物触")){ //购物触点
                            jdGwcdService.getInformation(file,ms,shop_name,date2);
                        }
                    }
                    if (file.getOriginalFilename().substring(0,4).equals("交易概况")){//销售数据
                        jdXssjService.getInformation(file,ms,shop_name,date2);
                    }

                }
                ////////////////////////////////////

                if (shop_name.getPlatformBh().equals("105")){
                    if (file.getOriginalFilename().substring(0,4).equals("店铺成交")){//蘑菇街
                        mgjXssjService.getInformation(file,ms,shop_name,date2);
                    }
                    if (file.getOriginalFilename().substring(0,4).equals("商品分析")){//抖音
                        dyXssjService.getInformation(file,ms,shop_name,date2);
                    }

                }
                ////////////////////////////////////
                if (shop_name.getPlatformBh().equals("104")){  //其他
                    if (shop_name.getShopName().substring(0,4).equals("多多买菜")){//多多买菜
                        ddmcXssjService.getInformation(file,ms,shop_name,date2);
                    }

                    if (shop_name.getShopName().substring(0,4).equals("美团优选")){//美团优选
                        mtXssjService.getInformation(file,ms,shop_name,date2);
                    }
                }
                ////////////////////////////////////
            return success(200);
        }
        return success(404);

    }

}
