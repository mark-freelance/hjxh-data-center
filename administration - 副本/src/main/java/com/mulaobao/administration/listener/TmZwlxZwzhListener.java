package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.DpCkmx;
import com.mulaobao.administration.entity.TmZwlxZwzh;
import com.mulaobao.administration.service.DpXsckService;
import com.mulaobao.administration.service.TmZwlxZwzhService;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class TmZwlxZwzhListener extends AnalysisEventListener<TmZwlxZwzh> {
    private TmZwlxZwzhService tmZwlxZwzhService ;
    private String name;
    private String fileName;
    private List<TmZwlxZwzh> wdtCkmxes = new ArrayList<>();
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    public TmZwlxZwzhListener(TmZwlxZwzhService tmZwlxZwzhService, String name,String fileName){
        this.tmZwlxZwzhService = tmZwlxZwzhService;
        this.name = name;
        this.fileName =fileName;
    }
    @SneakyThrows
    @Override
    public void invoke(TmZwlxZwzh tmZwlxZwzh, AnalysisContext analysisContext) {
                       if (tmZwlxZwzh.getA1().indexOf("导出")==-1){
                           tmZwlxZwzh.setId(UtilId.getUUID());
                           tmZwlxZwzh.setRzSj(simpleDateFormat.parse(tmZwlxZwzh.getA2()));
                           tmZwlxZwzh.setZwLx(tmZwlxZwzh.getA6());
                           tmZwlxZwzh.setShopBh(name);
                           tmZwlxZwzh.setFileName(fileName);
                           tmZwlxZwzh.setSrJe(UtilId.doublelsnull(tmZwlxZwzh.getA7()));
                           tmZwlxZwzh.setZcJe(UtilId.doublelsnull(tmZwlxZwzh.getA8()));
                           tmZwlxZwzh.setGoodsName(tmZwlxZwzh.getA16());
                           tmZwlxZwzh.setBz(tmZwlxZwzh.getA17());
                           tmZwlxZwzh.setYwjcDdh(tmZwlxZwzh.getA18());
                          wdtCkmxes.add(tmZwlxZwzh);
                       }
                    }

    @SneakyThrows
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        tmZwlxZwzhService.saveBatch(wdtCkmxes,2100);
            System.out.println("成功");
    }
}
