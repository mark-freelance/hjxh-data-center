package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.JdCjtgDao;
import com.mulaobao.administration.entity.JdCjtg;
import com.mulaobao.administration.entity.JdJdkc;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.TmZtc;
import com.mulaobao.administration.service.JdCjtgService;
import com.mulaobao.administration.service.TmZtcService;
import com.mulaobao.administration.util.Csvs;
import com.mulaobao.administration.util.UtilId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * (JdCjtg)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:40:04
 */
@Service("jdCjtgService")
public class JdCjtgServiceImpl extends ServiceImpl<JdCjtgDao, JdCjtg> implements JdCjtgService {
@Autowired
private JdCjtgService jdCjtgService;

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    public void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name,Date data1) {

        File csvFile = Csvs.uploadFile(multipartFile);
        // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
        List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 28);
        for (int i =0;i<lists.size();i++){
            List<String> strings = lists.get(i);
            JdCjtg jdCjtg = new JdCjtg();
            jdCjtg.setPlanId(strings.get(0)); //计划ID
            jdCjtg.setPlanName(strings.get(1));//计划名称
            jdCjtg.setPlanExist(strings.get(3));//计划是否存在
            jdCjtg.setBudget(Double.parseDouble(strings.get(4)));//日预算
            jdCjtg.setPlanState(strings.get(5));//计划状态
            jdCjtg.setPlanJssj(strings.get(7));//计划结束时间
            jdCjtg.setMarkRio(strings.get(8));//营销场景
            jdCjtg.setPlanKssj(new Date());
            jdCjtg.setToshowNum(Double.parseDouble(strings.get(9)));//展现数
            jdCjtg.setHitsNum(Double.parseDouble(strings.get(10)));//点击数
            jdCjtg.setHitsRate(Double.parseDouble(strings.get(11)));//点击率
            jdCjtg.setTotalCost(Double.parseDouble(strings.get(12)));//总费用
            jdCjtg.setToshowSpend(Double.parseDouble(strings.get(13)));//千次展现成本
            jdCjtg.setHitsSpend(Double.parseDouble(strings.get(14)));//平均点击成本
            jdCjtg.setDirectDdh(Double.parseDouble(strings.get(15)));//直接订单行
            jdCjtg.setDirectDdje(Double.parseDouble(strings.get(16)));//直接订单金额
            jdCjtg.setIndirectDdh(Double.parseDouble(strings.get(17)));//间接订单行
            jdCjtg.setIndirectDdje(Double.parseDouble(strings.get(18)));//间接订单金额
            jdCjtg.setTotalDdh(Double.parseDouble(strings.get(19)));//总订单行
            jdCjtg.setTotalDdje(Double.parseDouble(strings.get(20))) ;//总订单金额
            jdCjtg.setPresaleDdh(Double.parseDouble(strings.get(21)));;//预售订单行
            jdCjtg.setPresaleDdje(Double.parseDouble(strings.get(22)));//预售订单金额
            jdCjtg.setDirectAddnum(Double.parseDouble(strings.get(23)));//直接加购数
            jdCjtg.setIndirectAddnum(Double.parseDouble(strings.get(24)));//间接加购数
            jdCjtg.setTotalAddnum(Double.parseDouble(strings.get(25)));//总加购数
            jdCjtg.setRoi(Double.parseDouble(strings.get(26)));//ROI
            jdCjtg.setConRate(Double.parseDouble(strings.get(27)));  //转化率
            jdCjtg.setId(UtilId.getUUID());
            jdCjtg.setPlatformBh(shop_name.getPlatformBh());
            jdCjtg.setShopBh(shop_name.getShopBh());
            jdCjtg.setDateTime(data1);
            jdCjtg.setChannelLx("京速推");
            baseMapper.insert(jdCjtg);

        }


    }


    @Override
    public void getInformation1(String file, String ms, LsShop shop_name, Date date2) {
        File csvFile = new File(file);
        // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
        List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 28);
        for (int i =0;i<lists.size();i++){
            List<String> strings = lists.get(i);
            JdCjtg jdCjtg = new JdCjtg();
            jdCjtg.setPlanId(strings.get(0)); //计划ID
            jdCjtg.setPlanName(strings.get(1));//计划名称
            jdCjtg.setPlanExist(strings.get(3));//计划是否存在
            jdCjtg.setBudget(Double.parseDouble(strings.get(4)));//日预算
            jdCjtg.setPlanState(strings.get(5));//计划状态
            jdCjtg.setPlanJssj(strings.get(7));//计划结束时间
            jdCjtg.setMarkRio(strings.get(8));//营销场景
            jdCjtg.setPlanKssj(new Date());
            jdCjtg.setToshowNum(Double.parseDouble(strings.get(9)));//展现数
            jdCjtg.setHitsNum(Double.parseDouble(strings.get(10)));//点击数
            jdCjtg.setHitsRate(Double.parseDouble(strings.get(11)));//点击率
            jdCjtg.setTotalCost(Double.parseDouble(strings.get(12)));//总费用
            jdCjtg.setToshowSpend(Double.parseDouble(strings.get(13)));//千次展现成本
            jdCjtg.setHitsSpend(Double.parseDouble(strings.get(14)));//平均点击成本
            jdCjtg.setDirectDdh(Double.parseDouble(strings.get(15)));//直接订单行
            jdCjtg.setDirectDdje(Double.parseDouble(strings.get(16)));//直接订单金额
            jdCjtg.setIndirectDdh(Double.parseDouble(strings.get(17)));//间接订单行
            jdCjtg.setIndirectDdje(Double.parseDouble(strings.get(18)));//间接订单金额
            jdCjtg.setTotalDdh(Double.parseDouble(strings.get(19)));//总订单行
            jdCjtg.setTotalDdje(Double.parseDouble(strings.get(20))) ;//总订单金额
            jdCjtg.setPresaleDdh(Double.parseDouble(strings.get(21)));;//预售订单行
            jdCjtg.setPresaleDdje(Double.parseDouble(strings.get(22)));//预售订单金额
            jdCjtg.setDirectAddnum(Double.parseDouble(strings.get(23)));//直接加购数
            jdCjtg.setIndirectAddnum(Double.parseDouble(strings.get(24)));//间接加购数
            jdCjtg.setTotalAddnum(Double.parseDouble(strings.get(25)));//总加购数
            jdCjtg.setRoi(Double.parseDouble(strings.get(26)));//ROI
            jdCjtg.setConRate(Double.parseDouble(strings.get(27)));  //转化率
            jdCjtg.setId(UtilId.getUUID());
            jdCjtg.setPlatformBh(shop_name.getPlatformBh());
            jdCjtg.setShopBh(shop_name.getShopBh());
            jdCjtg.setDateTime(date2);
            jdCjtg.setChannelLx("京速推");
            baseMapper.insert(jdCjtg);

        }

       // csvFile.delete();
    }

    @Override
    public Map<String, Object> getNum(String shopBh, Date data1) {
        QueryWrapper<JdCjtg> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh );
        ew.eq("Date_time",data1);
        ew.select("sum(Total_cost) AS ManyScenesfy,sum(Hits_num) AS ManyScenesll");
        Map<String, Object> map = jdCjtgService.getMap(ew);
        return map;
    }
}

