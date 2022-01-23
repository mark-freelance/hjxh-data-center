package com.mulaobao.administration.controller;



import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.write.handler.SheetWriteHandler;
import com.alibaba.excel.write.metadata.holder.WriteSheetHolder;
import com.alibaba.excel.write.metadata.holder.WriteWorkbookHolder;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.service.*;
import com.mulaobao.administration.temporary.Message;
import com.mulaobao.administration.util.UtilId;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * (KingdeeHs)表控制层
 *
 * @author makejava
 * @since 2021-12-22 10:14:01
 */
@RestController
@RequestMapping("kingdeeHs")
public class KingdeeHsController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private KingdeeHsService kingdeeHsService;

    @Resource
    private WdtCkmxService wdtCkmxService;

    @Resource
    private WdtKcService wdtKcService;

    @Resource
    private DpDdmxService dpDdmxService;

    @Resource
    private LsFilenameService filenameService;



    @Resource
    private DpZwmxService dpZwmxService;

    @Resource
    private DpXsckService dpXsckService;

    @Resource
    private TmZwlxZwzhService tmZwlxZwzhService;


    @PostMapping("uploading")
    public R getlist(@RequestParam("file") MultipartFile[] file) {
        ArrayList<Message> objects = new ArrayList<>();
        for (int i = 0; i < file.length; i++) {
            if (file[i].getOriginalFilename().indexOf("xlsx") != -1) {

                if (file[i].getOriginalFilename().indexOf("库存台账") != -1) {
                        int sc = wdtKcService.uploading(file[i], wdtKcService);
                        if (sc == 500) {
                            Message message = new Message();
                            message.setCode(sc);
                            message.setData(file[i].getOriginalFilename());
                            objects.add(message);
                        } else {
                            LsFilename lsFilename = new LsFilename();
                            lsFilename.setFileName(file[i].getOriginalFilename());
                            lsFilename.setLx("1");
                            lsFilename.setId(UtilId.getUUID());
                            filenameService.save(lsFilename);
                        }
                    continue;
                }
                if (file[i].getOriginalFilename().indexOf("出库明细") != -1) {
                        int sc = wdtCkmxService.uploading(file[i], wdtCkmxService);
                        if (sc == 500) {
                            Message message = new Message();
                            message.setCode(sc);
                            message.setData(file[i].getOriginalFilename());
                            objects.add(message);
                        } else {
                            LsFilename lsFilename = new LsFilename();
                            lsFilename.setFileName(file[i].getOriginalFilename());
                            lsFilename.setLx("1");
                            lsFilename.setId(UtilId.getUUID());
                            filenameService.save(lsFilename);
                        }

                    continue;
                }
                if (file[i].getOriginalFilename().indexOf("物料收发汇总表") != -1) {
                    int sc = kingdeeHsService.uploading(file[i], kingdeeHsService);
                    if (sc == 500) {
                        Message message = new Message();
                        message.setCode(sc);
                        message.setData(file[i].getOriginalFilename());
                        objects.add(message);
                    } else {
                        LsFilename lsFilename = new LsFilename();
                        lsFilename.setFileName(file[i].getOriginalFilename());
                        lsFilename.setLx("1");
                        lsFilename.setId(UtilId.getUUID());
                        filenameService.save(lsFilename);
                    }
                } else {
                    Message message = new Message();
                    message.setCode(404);
                    message.setData(file[i].getOriginalFilename());
                }


                //这个不用了
           /*     if (file[i].getOriginalFilename().indexOf("未结算订单") != -1) {
                  int sc =  dpCkwjsService.uploading(file[i],dpCkwjsService);
                    if (sc==500){
                        Message message = new Message();
                        message.setCode(sc);
                        message.setData(file[i].getOriginalFilename());
                    }
                }
            }

            else {
                Message message = new Message();
                message.setCode(404);
                message.setData(file[i].getOriginalFilename());
                objects.add(message);
            }

            */
            }else {
                Message message = new Message();
                message.setCode(404);
                message.setData(file[i].getOriginalFilename());
                objects.add(message);
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
        lsSaleQueryWrapper.eq("Lx","1");
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

        session.setAttribute("LsFilename1",pageHospitalSet.getRecords());
        return success(pageHospitalSet);
    }

        @GetMapping("getList1")
        public R getList(){
            List<LsFilename> lx = filenameService.list(new QueryWrapper<LsFilename>().eq("Lx", "1"));
            return success(lx);
        }
    @GetMapping("getList2")
    public R getList2(){
        List<LsFilename> lx = filenameService.list(new QueryWrapper<LsFilename>().eq("Lx", "2"));
        return success(lx);
    }

    @DeleteMapping("deleteId/{id}")
    public R deleteDiaobao(@PathVariable String id){
        LsFilename id1 = filenameService.getOne(new QueryWrapper<LsFilename>().eq("id", id));
        boolean fileName = false;
        if (id1.getLx().equals("1")){

            if (id1.getFileName().indexOf("库存台账") != -1) {
                 fileName = wdtKcService.remove(new QueryWrapper<WdtKc>().eq("FileName", id1.getFileName()));
            }
            if (id1.getFileName().indexOf("出库明细") != -1) {
                fileName =  wdtCkmxService.remove(new QueryWrapper<WdtCkmx>().eq("FileName",id1.getFileName()));
            }
            if (id1.getFileName().indexOf("物料收发汇总表") != -1) {
                fileName = kingdeeHsService.remove(new QueryWrapper<KingdeeHs>().eq("FileName",id1.getFileName()));
            }

        }


        if (id1.getLx().equals("2")){
            if (id1.getFileName().indexOf("财务") != -1) {
                fileName = dpZwmxService.remove(new QueryWrapper<DpZwmx>().eq("FileName", id1.getFileName()));
            }
            if (id1.getFileName().indexOf("未结算出库明细") != -1) {
                fileName =  dpXsckService.remove(new QueryWrapper<DpCkmx>().eq("FileName",id1.getFileName()));
            }
            if (id1.getFileName().indexOf("账务") != -1) {
                fileName = tmZwlxZwzhService.remove(new QueryWrapper<TmZwlxZwzh>().eq("FileName",id1.getFileName()));
            }else {
                fileName =  dpDdmxService.remove(new QueryWrapper<DpDdmx>().eq("FileName",id1.getFileName()));
            }
        }
                filenameService.removeById(id1.getId());
        return success(fileName);
    }

}

