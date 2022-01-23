package com.mulaobao.administration.controller;




import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.LsFilename;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.*;
import com.mulaobao.administration.temporary.Message;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;


/**
 * (DpDdmx)表控制层
 *
 * @author makejava
 * @since 2021-12-12 18:12:03
 */
@RestController
@RequestMapping("dpDdmx")
public class DpDdmxController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private DpDdmxService dpDdmxService;

    @Resource
    private DpZwmxService dpZwmxService;

    @Resource
    private DpXsckService dpXsckService;

    @Resource
    private LsFilenameService filenameService;

    @Resource
    private TmZwlxZwzhService tmZwlxZwzhService;

    @Resource
    private LsShopService lsShopService;

    @SneakyThrows
    @PostMapping("information")
    public R information1(@RequestParam("file") MultipartFile [] file){
        ArrayList<Message> objects = new ArrayList<>();
        for (int i =0;i<file.length;i++) {
            if (file[i].getOriginalFilename().indexOf("xlsx") != -1) {
                if (file[i].getOriginalFilename().indexOf("财务") != -1) {
                    int sc =  dpZwmxService.getexel(file[i],dpZwmxService);
                    if (sc == 500) {
                        Message message = new Message();
                        message.setCode(sc);
                        message.setData(file[i].getOriginalFilename());
                        objects.add(message);

                    } else {
                        LsFilename lsFilename = new LsFilename();
                        lsFilename.setFileName(file[i].getOriginalFilename());
                        lsFilename.setLx("2");
                        lsFilename.setId(UtilId.getUUID());
                        filenameService.save(lsFilename);
                    }

                } else {
                    if (file[i].getOriginalFilename().indexOf("未结算出库明细") != -1) {
                        int sc =  dpXsckService.getexel(file[i],dpXsckService);
                        if (sc == 500) {
                            Message message = new Message();
                            message.setCode(sc);
                            message.setData(file[i].getOriginalFilename());
                            objects.add(message);
                        } else {
                            LsFilename lsFilename = new LsFilename();
                            lsFilename.setFileName(file[i].getOriginalFilename());
                            lsFilename.setLx("2");
                            lsFilename.setId(UtilId.getUUID());
                            filenameService.save(lsFilename);
                        }
                    } else {
                        if (file[i].getOriginalFilename().indexOf("账务") != -1){
                            int sc =  tmZwlxZwzhService.getexel(file[i],tmZwlxZwzhService);
                            if (sc == 500) {
                                Message message = new Message();
                                message.setCode(sc);
                                message.setData(file[i].getOriginalFilename());
                                objects.add(message);
                            } else {
                                LsFilename lsFilename = new LsFilename();
                                lsFilename.setFileName(file[i].getOriginalFilename());
                                lsFilename.setLx("2");
                                lsFilename.setId(UtilId.getUUID());
                                filenameService.save(lsFilename);
                            }
                        }else{

                        int sc = dpDdmxService.getexel(file[i],dpDdmxService);
                        if (sc == 500) {
                            Message message = new Message();
                            message.setCode(sc);
                            message.setData(file[i].getOriginalFilename());
                            objects.add(message);
                        } else {
                            LsFilename lsFilename = new LsFilename();
                            lsFilename.setFileName(file[i].getOriginalFilename());
                            lsFilename.setLx("2");
                            lsFilename.setId(UtilId.getUUID());
                            filenameService.save(lsFilename);
                        }
                    }
                    }

                }


            }

        }

        if (objects.size()==0){
            return success(objects).setCode(200);
        }

        return success(objects).setCode(505);
    }


    @PostMapping("list/{current}/{limit}")
    public R selectAll(@PathVariable long current, @PathVariable long limit, @RequestBody LsFilename lsFilename , HttpServletRequest request) {
        //创建page对象，传递当前页，每页记录数
        HttpSession session = request.getSession();
        Page<LsFilename> pages = new Page<>(current,limit);
        QueryWrapper<LsFilename> lsSaleQueryWrapper = new QueryWrapper<>();
        lsSaleQueryWrapper.eq("Lx","2");
        if (lsFilename.getDaTa()!=null){
            if (lsFilename.getDaTa().length!=0){
                lsSaleQueryWrapper.apply(
                        "(CONVERT([varchar](10),Date_time,(120)))>= "+"'"+lsFilename.getDaTa()[0]+"'")
                        .apply(
                                "(CONVERT([varchar](10),Date_time,(120))) <="+ "'"+lsFilename.getDaTa()[1]+"'");
            }
        }
        //调用方法实现分页查询
        IPage<LsFilename> pageHospitalSet = filenameService.page(pages,lsSaleQueryWrapper);

        session.setAttribute("LsFilename2",pageHospitalSet.getRecords());
        return success(pageHospitalSet);
    }

    @GetMapping("getcs")
    public void show(@RequestParam("shop") String [] shop,@RequestParam("datas") String [] datas,HttpServletResponse response, HttpServletRequest request){
        if (shop!=null && datas!=null){
            if (shop.length!=0 && datas.length!=0){
                LsShop one = lsShopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh",shop[0]));
                if (one.getPlatformBh().equals("102")){
                            tmZwlxZwzhService.getDaochu(shop,one.getShopName(),datas,response,request);
                }
                if (one.getPlatformBh().equals("101")){
                    dpZwmxService.getDaochu(shop,datas,response,request);
                }

            }
        }


    }
}

