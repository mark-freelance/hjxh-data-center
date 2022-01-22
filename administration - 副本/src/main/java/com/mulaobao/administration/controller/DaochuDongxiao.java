package com.mulaobao.administration.controller;


import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.mulaobao.administration.entity.LsFilename;
import com.mulaobao.administration.service.KingdeeHsService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("daochuDongxiao")
public class DaochuDongxiao extends ApiController {

    @Resource
    private KingdeeHsService kingdeeHsService;



    @GetMapping("getcs")
    public void show(@RequestParam("datas") String [] datas, HttpServletResponse response, HttpServletRequest request){
        if (datas!=null){
            if (datas.length!=0){
                kingdeeHsService.getDaochuSS(datas,response,request);
            }
        }


    }


    @GetMapping("getcs1")
    public void getDaochu(HttpServletResponse response, HttpServletRequest request) {
        HttpSession session = request.getSession();
        List<LsFilename> lsSaleAcotn1 = (List<LsFilename>) session.getAttribute("LsFilename1");
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
//重要点
            String filename = "动销已上传文件";
            String fileName = new String(filename.getBytes(), "iso8859-1") + dateFormat.format(new Date().getTime()) + ".xlsx";
            response.setContentType("application/vnd.ms-excel");
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-disposition", "attachment;filename="+fileName);
            EasyExcel.write(response.getOutputStream(), LsFilename.class).sheet("Sheet1")
                    .doWrite(lsSaleAcotn1);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @GetMapping("getcs2")
    public void getDaochu2(HttpServletResponse response, HttpServletRequest request) {
        HttpSession session = request.getSession();
        List<LsFilename> lsSaleAcotn1 = (List<LsFilename>) session.getAttribute("LsFilename2");
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
//重要点
            String filename = "账务类型已上传文件";
            String fileName = new String(filename.getBytes(), "iso8859-1") + dateFormat.format(new Date().getTime()) + ".xlsx";
            response.setContentType("application/vnd.ms-excel");
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-disposition", "attachment;filename="+fileName);
            EasyExcel.write(response.getOutputStream(), LsFilename.class).sheet("Sheet1")
                    .doWrite(lsSaleAcotn1);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
