package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.JdGwcdDao;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.service.JdGwcdService;
import com.mulaobao.administration.service.PddFxtService;
import com.mulaobao.administration.util.Csvs;
import com.mulaobao.administration.util.UtilId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * (JdGwcd)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:40:19
 */
@Service("jdGwcdService")
public class JdGwcdServiceImpl extends ServiceImpl<JdGwcdDao, JdGwcd> implements JdGwcdService {
    @Autowired
    private JdGwcdService jdGwcdService;

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");


    @Override
    public void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name,Date data1) {

        File csvFile = Csvs.uploadFile(multipartFile);
        // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
        List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 40);
        for (int i =0;i<lists.size();i++){
            List<String> strings = lists.get(i);
            JdGwcd jdGwcd = new JdGwcd();
            jdGwcd.setZhName(strings.get(1)); //账户名称
            jdGwcd.setToshowNum(Double.parseDouble(strings.get(2)));//展现量
           jdGwcd.setHitsNum(Double.parseDouble(strings.get(3)));//点击量
            jdGwcd.setHitsRate(Double.parseDouble(strings.get(4)));//点击率
            jdGwcd.setTotalCost(Double.parseDouble(strings.get(5)));//总费用
           jdGwcd.setToshowSpend(Double.parseDouble(strings.get(6))); //千次展现成本
           jdGwcd.setHitsSpend(Double.parseDouble(strings.get(7))); //平均点击成本
           jdGwcd.setDirectDdh(Double.parseDouble(strings.get(8))); //直接订单行
            jdGwcd.setDirectDdje(Double.parseDouble(strings.get(9)));//直接订单金额
            jdGwcd.setIndirectDdh(Double.parseDouble(strings.get(10)));//间接订单行
            jdGwcd.setIndirectDdje(Double.parseDouble(strings.get(11)));//间接订单金额
           jdGwcd.setTotalDdh(Double.parseDouble(strings.get(12))); //总订单行
            jdGwcd.setTotalDdje(Double.parseDouble(strings.get(13)));//总订单金额
           jdGwcd.setPresaleDdh(Double.parseDouble(strings.get(14))); //预售订单行
          jdGwcd.setPresaleDdje(Double.parseDouble(strings.get(15)));  //预售订单金额
            jdGwcd.setDirectAddnum(Double.parseDouble(strings.get(16)));//直接加购数
            jdGwcd.setIndirectAddnum(Double.parseDouble(strings.get(17)));//间接加购数
           jdGwcd.setTotalAddnum(Double.parseDouble(strings.get(18))); //总加购数
           jdGwcd.setConRate(Double.parseDouble(strings.get(19))); //转化率
           jdGwcd.setRoi(Double.parseDouble(strings.get(20))); //ROI
            jdGwcd.setXdxkNum(Double.parseDouble(strings.get(21)));//下单新客数
           jdGwcd.setGgfkNum(Double.parseDouble(strings.get(22))); //广告访客数
           jdGwcd.setFwymNum(Double.parseDouble(strings.get(23))); //访问页面数
           jdGwcd.setDuration(Double.parseDouble(strings.get(24))); //页面平均访问时长
            jdGwcd.setDeepentryNum(Double.parseDouble(strings.get(25)));//深度进店数
           jdGwcd.setShopgzNum(Double.parseDouble(strings.get(26))); //商品关注数
            jdGwcd.setFollowShop(Double.parseDouble(strings.get(27)));//店铺关注数
            jdGwcd.setMakeNum(Double.parseDouble(strings.get(28)));//预约数
            jdGwcd.setVolumeNum(Double.parseDouble(strings.get(29)));//领劵数
            jdGwcd.setCpa(Double.parseDouble(strings.get(30)));//CPA
            jdGwcd.setFabulousNum(strings.get(31));//点赞数
            jdGwcd.setCommentNum(strings.get(32));//评论数
           jdGwcd.setShareNum(strings.get(33)); //分享数
           jdGwcd.setFollowNum(strings.get(34)); //关注数
           jdGwcd.setInterNum(strings.get(35)); //互动数
           jdGwcd.setInterRate(strings.get(36)); //互动率
            jdGwcd.setWatchNum(strings.get(37)); //观看次数
            jdGwcd.setWatchTime(strings.get(38));//观看时长
           jdGwcd.setWatchPjtime(strings.get(39)); //平均观看时长
            jdGwcd.setId(UtilId.getUUID());
            jdGwcd.setPlatformBh(shop_name.getPlatformBh());
            jdGwcd.setShopBh(shop_name.getShopBh());
                jdGwcd.setDateTime(data1);

            jdGwcd.setChannelLx("购物触点");
            baseMapper.insert(jdGwcd);
        }

       // csvFile.delete();

    }

    @Override
    public void getInformation1(String file, String ms, LsShop shop_name, Date date2) {
        File csvFile = new File(file);
        // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
        List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 40);
        for (int i =0;i<lists.size();i++){
            List<String> strings = lists.get(i);
            JdGwcd jdGwcd = new JdGwcd();
            jdGwcd.setZhName(strings.get(1)); //账户名称
            jdGwcd.setToshowNum(Double.parseDouble(strings.get(2)));//展现量
            jdGwcd.setHitsNum(Double.parseDouble(strings.get(3)));//点击量
            jdGwcd.setHitsRate(Double.parseDouble(strings.get(4)));//点击率
            jdGwcd.setTotalCost(Double.parseDouble(strings.get(5)));//总费用
            jdGwcd.setToshowSpend(Double.parseDouble(strings.get(6))); //千次展现成本
            jdGwcd.setHitsSpend(Double.parseDouble(strings.get(7))); //平均点击成本
            jdGwcd.setDirectDdh(Double.parseDouble(strings.get(8))); //直接订单行
            jdGwcd.setDirectDdje(Double.parseDouble(strings.get(9)));//直接订单金额
            jdGwcd.setIndirectDdh(Double.parseDouble(strings.get(10)));//间接订单行
            jdGwcd.setIndirectDdje(Double.parseDouble(strings.get(11)));//间接订单金额
            jdGwcd.setTotalDdh(Double.parseDouble(strings.get(12))); //总订单行
            jdGwcd.setTotalDdje(Double.parseDouble(strings.get(13)));//总订单金额
            jdGwcd.setPresaleDdh(Double.parseDouble(strings.get(14))); //预售订单行
            jdGwcd.setPresaleDdje(Double.parseDouble(strings.get(15)));  //预售订单金额
            jdGwcd.setDirectAddnum(Double.parseDouble(strings.get(16)));//直接加购数
            jdGwcd.setIndirectAddnum(Double.parseDouble(strings.get(17)));//间接加购数
            jdGwcd.setTotalAddnum(Double.parseDouble(strings.get(18))); //总加购数
            jdGwcd.setConRate(Double.parseDouble(strings.get(19))); //转化率
            jdGwcd.setRoi(Double.parseDouble(strings.get(20))); //ROI
            jdGwcd.setXdxkNum(Double.parseDouble(strings.get(21)));//下单新客数
            jdGwcd.setGgfkNum(Double.parseDouble(strings.get(22))); //广告访客数
            jdGwcd.setFwymNum(Double.parseDouble(strings.get(23))); //访问页面数
            jdGwcd.setDuration(Double.parseDouble(strings.get(24))); //页面平均访问时长
            jdGwcd.setDeepentryNum(Double.parseDouble(strings.get(25)));//深度进店数
            jdGwcd.setShopgzNum(Double.parseDouble(strings.get(26))); //商品关注数
            jdGwcd.setFollowShop(Double.parseDouble(strings.get(27)));//店铺关注数
            jdGwcd.setMakeNum(Double.parseDouble(strings.get(28)));//预约数
            jdGwcd.setVolumeNum(Double.parseDouble(strings.get(29)));//领劵数
            jdGwcd.setCpa(Double.parseDouble(strings.get(30)));//CPA
            jdGwcd.setFabulousNum(strings.get(31));//点赞数
            jdGwcd.setCommentNum(strings.get(32));//评论数
            jdGwcd.setShareNum(strings.get(33)); //分享数
            jdGwcd.setFollowNum(strings.get(34)); //关注数
            jdGwcd.setInterNum(strings.get(35)); //互动数
            jdGwcd.setInterRate(strings.get(36)); //互动率
            jdGwcd.setWatchNum(strings.get(37)); //观看次数
            jdGwcd.setWatchTime(strings.get(38));//观看时长
            jdGwcd.setWatchPjtime(strings.get(39)); //平均观看时长
            jdGwcd.setId(UtilId.getUUID());
            jdGwcd.setPlatformBh(shop_name.getPlatformBh());
            jdGwcd.setShopBh(shop_name.getShopBh());
            jdGwcd.setDateTime(date2);

            jdGwcd.setChannelLx("购物触点");
            baseMapper.insert(jdGwcd);
        }

      //  csvFile.delete();
    }

    @Override
    public Map<String, Object> getNum(String shopBh, Date data1) {
        QueryWrapper<JdGwcd> ew = new QueryWrapper<>();
        ew.eq("Date_time",data1);
        ew.eq("Shop_bh", shopBh );
        ew.select("sum(Total_cost) AS RestAssuredPushfy,sum(Hits_num) AS RestAssuredPushll");
        Map<String, Object> map = jdGwcdService.getMap(ew);
        return map;
    }
}

