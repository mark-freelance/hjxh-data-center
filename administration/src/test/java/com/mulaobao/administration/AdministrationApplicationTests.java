package com.mulaobao.administration;

import com.mulaobao.administration.util.DDmcSheng;
import com.mulaobao.administration.util.Delecwj;
import com.mulaobao.administration.util.UtilId;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.*;

@SpringBootTest
class AdministrationApplicationTests {



    //拼多多
    @Test
    void contextLoads() {
        String [] fileName = Delecwj.getFileName("D:\\数据列表4\\拼多多");

        for (int i =0;i<fileName.length;i++){

            String [] fileName1 = Delecwj.getFileName("D:\\数据列表4\\拼多多\\"+fileName[i].toString());
            HashSet<String> strings = new HashSet<>();
            strings.add(fileName[i].toString());
            strings.add("搜索推广_账户_分级详情_单元");
            strings.add("放心推_账户_分级详情_商品");
            strings.add("店铺访客数");
            strings.add("支付买家数");
            strings.add("支付订单数");
            strings.add("支付金额");
            strings.add("退款金额");
            System.out.println("---");
            if (fileName1.length==5){

                for (int s =0;s<fileName1.length;s++) {
                    if (fileName1[s].substring(0, 15).equals("场景展示_账户_分级详情_单元")) {
                        strings.remove("场景展示_账户_分级详情_单元");
                    }
                    if (fileName1[s].substring(0, 14).equals("放心推_账户_分级详情_商品")) {
                        strings.remove("放心推_账户_分级详情_商品");
                    }
                    if (fileName1[s].substring(0, 15).equals("搜索推广_账户_分级详情_单元")) {
                        strings.remove("搜索推广_账户_分级详情_单元");
                    }
                    if (fileName1[s].substring(0, 2).equals("QQ")) {
                        Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表4\\拼多多\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                        if (stringStringMap.size() != 0 ) {
                            if (stringStringMap.size() == 1 && stringStringMap.get("退款金额") != null) {
                                strings.remove("退款金额");
                            }else {
                                if (stringStringMap!=null){
                                    if (stringStringMap.get("店铺访客数") !=null ){
                                        strings.remove("店铺访客数");
                                    }
                                    if (stringStringMap.get("支付买家数") !=null ){
                                        strings.remove("支付买家数");
                                    }
                                    if (stringStringMap.get("支付订单数") !=null ){
                                        strings.remove("支付订单数");
                                    }
                                    if (stringStringMap.get("支付金额") !=null ){
                                        strings.remove("支付金额");
                                    }
                                }
                            }


                        }
                    }
                }
                    if (strings.size() != 1) {
                        strings.add("放错表");
                    }

            }else {
                   for (int ss =0;ss<fileName1.length;ss++){
                       if (fileName1[ss].substring(0,15).equals("场景展示_账户_分级详情_单元")){
                           strings.remove("场景展示_账户_分级详情_单元");
                       }
                       if (fileName1[ss].substring(0,15).equals("放心推_账户_分级详情_商品")){
                           strings.remove("放心推_账户_分级详情_商品");
                       }
                       if (fileName1[ss].substring(0,15).equals("搜索推广_账户_分级详情_单元")){
                           strings.remove("搜索推广_账户_分级详情_单元");
                       }
                       if (fileName1[ss].substring(0, 2).equals("QQ")) {
                           Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表4\\拼多多\\" + fileName[i].toString() + "\\" + fileName1[ss] + "\\result.txt");
                           if (stringStringMap.size() != 0 && stringStringMap!=null) {
                               if (stringStringMap.size() == 1 && stringStringMap.get("退款金额") != null) {
                                   strings.remove("退款金额");
                               }else {
                                   if (stringStringMap!=null){
                                                if (stringStringMap.get("店铺访客数") !=null ){
                                                    strings.remove("店铺访客数");
                                                }
                                       if (stringStringMap.get("支付买家数") !=null ){
                                           strings.remove("支付买家数");
                                       }
                                       if (stringStringMap.get("支付订单数") !=null ){
                                           strings.remove("支付订单数");
                                       }
                                       if (stringStringMap.get("支付金额") !=null ){
                                           strings.remove("支付金额");
                                       }
                                   }
                               }


                           }
                       }
                       }
                strings.add("少表");
                 }
            if (strings.size()!=1 && strings.size()!=9){
               Iterator<String> iterator = strings.iterator();
                while (iterator.hasNext()){
                    System.out.println(iterator.next());
        }
            }
            //if (strings.size()==9 ){
             //   System.out.println("空的");
             //   Iterator<String> iterator = strings.iterator();
             //   while (iterator.hasNext()){

              //      System.out.println(iterator.next());
              //  }
          //  }

            }


    }



    //京东
    @Test
    void contextLoads1() {
        String [] fileName = Delecwj.getFileName("D:\\数据列表4\\京东");
        for (int i =0;i<fileName.length;i++){
            String [] fileName1 = Delecwj.getFileName("D:\\数据列表4\\京东\\"+fileName[i].toString());
            HashSet<String> strings = new HashSet<>();
            strings.add(fileName[i].toString());
            strings.add("皇家小虎旗舰店汤兵_购物触点账户报表");
            strings.add("皇家小虎旗舰店汤兵_京速推_场景推广");
            strings.add("交易概况_数据概览_全部渠道");
            strings.add("京东快车_普通计划_推广计划报表");
            strings.add("退款金额");
            System.out.println("---");
            if (fileName1.length==5){

                for (int s =0;s<fileName1.length;s++) {
                    if (fileName1[s].substring(0, 18).equals("皇家小虎旗舰店汤兵_购物触点账户报表")) {
                        strings.remove("皇家小虎旗舰店汤兵_购物触点账户报表");
                    }
                    if (fileName1[s].substring(0, 18).equals("皇家小虎旗舰店汤兵_京速推_场景推广")) {
                        strings.remove("皇家小虎旗舰店汤兵_京速推_场景推广");
                    }
                    if (fileName1[s].substring(0, 14).equals("交易概况_数据概览_全部渠道")) {
                        strings.remove("交易概况_数据概览_全部渠道");
                    }
                    if (fileName1[s].substring(0, 16).equals("京东快车_普通计划_推广计划报表")) {
                        strings.remove("京东快车_普通计划_推广计划报表");
                    }
                    if (fileName1[s].substring(0, 2).equals("QQ")) {
                        Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表4\\京东\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                        if (stringStringMap.size() != 0 ) {
                            if (stringStringMap.size() == 1 && stringStringMap.get("退款金额") != null) {
                                strings.remove("退款金额");
                            }


                        }
                    }
                }
                if (strings.size() != 1) {
                    strings.add("放错表");
                }

            }else {
                for (int s =0;s<fileName1.length;s++) {
                    if (fileName1[s].substring(0, 18).equals("皇家小虎旗舰店汤兵_购物触点账户报表")) {
                        strings.remove("皇家小虎旗舰店汤兵_购物触点账户报表");
                    }
                    if (fileName1[s].substring(0, 18).equals("皇家小虎旗舰店汤兵_京速推_场景推广")) {
                        strings.remove("皇家小虎旗舰店汤兵_京速推_场景推广");
                    }
                    if (fileName1[s].substring(0, 14).equals("交易概况_数据概览_全部渠道")) {
                        strings.remove("交易概况_数据概览_全部渠道");
                    }
                    if (fileName1[s].substring(0, 16).equals("京东快车_普通计划_推广计划报表")) {
                        strings.remove("京东快车_普通计划_推广计划报表");
                    }
                    if (fileName1[s].substring(0, 2).equals("QQ")) {
                        Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表4\\京东\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                        if (stringStringMap.size() != 0 ) {
                            if (stringStringMap.size() == 1 && stringStringMap.get("退款金额") != null) {
                                strings.remove("退款金额");
                            }


                        }
                    }
                }
                strings.add("少表");
            }
            if (strings.size()!=1 && strings.size()!=7){
                Iterator<String> iterator = strings.iterator();
                while (iterator.hasNext()){
                    System.out.println(iterator.next());
                }
            }

        }


    }


    //天猫
    @Test
    void contextLoads2() {
        String [] fileName = Delecwj.getFileName("D:\\数据列表4\\淘系");
        for (int i =0;i<fileName.length;i++){
            if (!fileName[i].substring(fileName[i].length() - 4, fileName[i].length() - 1).equals("特价版")) {
                String[] fileName1 = Delecwj.getFileName("D:\\数据列表4\\淘系\\" + fileName[i].toString());
                HashSet<String> strings = new HashSet<>();
                strings.add(fileName[i].toString());
                strings.add("【生意参");
                strings.add("2021");
                strings.add("arre");
                strings.add("明星店铺");
                strings.add("业务类型");
                strings.add("账户_分");
                strings.add("商品推广");
                System.out.println("---");
                if (fileName1.length == 7) {
                    for (int s = 0; s < fileName1.length; s++) {
                        if (fileName1[s].substring(0, 4).equals("【生意参")) {
                            strings.remove("【生意参");
                        }
                        if (fileName1[s].substring(0, 4).equals("2021")) {
                            strings.remove("2021");
                        }
                        if (fileName1[s].substring(0, 4).equals("arre")) {
                            strings.remove("arre");
                        }
                        if (fileName1[s].substring(0, 4).equals("明星店铺")) {
                            strings.remove("明星店铺");
                        }
                        if (fileName1[s].substring(0, 4).equals("业务类型")) {
                            strings.remove("业务类型");
                        }
                        if (fileName1[s].substring(0, 4).equals("账户_分")) {
                            strings.remove("账户_分");
                        }
                        if (fileName1[s].substring(0, 4).equals("商品推广")) {
                            strings.remove("商品推广");
                        }

                    }
                    if (strings.size() != 1) {
                        strings.add("放错表");
                    }

                } else {
                    for (int s = 0; s < fileName1.length; s++) {
                        if (fileName1[s].substring(0, 4).equals("【生意参")) {
                            strings.remove("【生意参");
                        }
                        if (fileName1[s].substring(0, 4).equals("2021")) {
                            strings.remove("2021");
                        }
                        if (fileName1[s].substring(0, 4).equals("arre")) {
                            strings.remove("arre");
                        }
                        if (fileName1[s].substring(0, 4).equals("明星店铺")) {
                            strings.remove("明星店铺");
                        }
                        if (fileName1[s].substring(0, 4).equals("业务类型")) {
                            strings.remove("业务类型");
                        }
                        if (fileName1[s].substring(0, 4).equals("账户_分")) {
                            strings.remove("账户_分");
                        }
                        if (fileName1[s].substring(0, 4).equals("商品推广")) {
                            strings.remove("商品推广");
                        }
                    }
                    strings.add("少表");
                }
                if (strings.size() != 1 && strings.size() != 9) {
                    Iterator<String> iterator = strings.iterator();
                    while (iterator.hasNext()) {
                        System.out.println(iterator.next());
                    }
                }
            }
        }
    }


    //特价版
    @Test
    void contextLoads3() {
        String [] fileName = Delecwj.getFileName("D:\\数据列表4\\淘系");
        for (int i =0;i<fileName.length;i++) {
            if (fileName[i].substring(fileName[i].length() - 4, fileName[i].length() - 1).equals("特价版")) {
                String[] fileName1 = Delecwj.getFileName("D:\\数据列表4\\淘系\\" + fileName[i].toString());
                HashSet<String> strings = new HashSet<>();
                strings.add(fileName[i].toString());
                strings.add("单元数据");
                strings.add("支付子订单数");
                strings.add("成功退款金额");
                strings.add("支付金额");
                strings.add("访客数");
                strings.add("支付买家数");
                System.out.println("---");
                if (fileName1.length == 3) {
                    for (int s = 0; s < fileName1.length; s++) {
                        if (fileName1[s].substring(0, 4).equals("单元数据")) {
                            strings.remove("单元数据");
                        }
                        if (fileName1[s].substring(0, 2).equals("QQ")) {
                            Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表4\\淘系\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                            if (stringStringMap.size() != 0) {
                                if (stringStringMap.size() == 2) {
                                    if (stringStringMap.get("支付子订单数") != null) {
                                        strings.remove("支付子订单数");
                                    }
                                    if (stringStringMap.get("成功退款金额") != null) {
                                        strings.remove("成功退款金额");
                                    }
                                } else {
                                    if (stringStringMap.get("支付金额") != null) {
                                        strings.remove("支付金额");
                                    }
                                    if (stringStringMap.get("访客数") != null) {
                                        strings.remove("访客数");
                                    }
                                    if (stringStringMap.get("支付买家数") != null) {
                                        strings.remove("支付买家数");
                                    }
                                }
                            }
                        }
                    }
                    if (strings.size() != 1) {
                        strings.add("放错表");
                    }
                } else {
                    for (int s = 0; s < fileName1.length; s++) {
                        if (fileName1[s].substring(0, 4).equals("单元数据")) {
                            strings.remove("单元数据");
                        }
                        if (fileName1[s].substring(0, 2).equals("QQ")) {
                            Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表4\\淘系\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                            if (stringStringMap.size() != 0) {
                                if (stringStringMap.size() == 2) {
                                    if (stringStringMap.get("支付子订单数") != null) {
                                        strings.remove("支付子订单数");
                                    }
                                    if (stringStringMap.get("成功退款金额") != null) {
                                        strings.remove("成功退款金额");
                                    }
                                } else {
                                    if (stringStringMap.get("支付金额") != null) {
                                        strings.remove("支付金额");
                                    }
                                    if (stringStringMap.get("访客数") != null) {
                                        strings.remove("访客数");
                                    }
                                    if (stringStringMap.get("支付买家数") != null) {
                                        strings.remove("支付买家数");
                                    }
                                }
                            }
                        }
                    }
                    strings.add("少表");
                }
                if (strings.size() != 1 && strings.size() != 8) {
                    Iterator<String> iterator = strings.iterator();
                    while (iterator.hasNext()) {
                        System.out.println(iterator.next());
                    }
                }

            }
        }
    }


    //抖音
    @Test
    void contextLoads4() {
        String [] fileName = Delecwj.getFileName("D:\\数据列表9\\新媒体");
        for (int i =0;i<fileName.length;i++){
            String [] fileName1 = Delecwj.getFileName("D:\\数据列表9\\新媒体\\"+fileName[i].toString());
            HashSet<String> strings = new HashSet<>();
            strings.add(fileName[i].toString());
            strings.add("全量商品");
            strings.add("支付转化率");
            System.out.println("---");
            if (fileName1.length==2){
                for (int s =0;s<fileName1.length;s++) {
                    if (fileName1[s].substring(0, 4).equals("全量商品")) {
                        strings.remove("全量商品");
                    }
                    if (fileName1[s].substring(0, 2).equals("QQ")) {
                        Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表9\\新媒体\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                        if (stringStringMap.size() != 0 ) {
                            if (stringStringMap.size() == 1 ) {
                                if(stringStringMap.get("支付转化率") !=null){
                                    strings.remove("支付转化率");
                                }
                            }

                        }
                    }
                }
                if (strings.size() != 1) {
                    strings.add("放错表");
                }
            }else {
                for (int s =0;s<fileName1.length;s++) {
                    if (fileName1[s].substring(0, 4).equals("全量商品")) {
                        strings.remove("全量商品");
                    }
                    if (fileName1[s].substring(0, 2).equals("QQ")) {
                        Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表9\\新媒体\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                        if (stringStringMap.size() != 0 ) {
                            if (stringStringMap.size() == 1 ) {
                                if(stringStringMap.get("支付转化率") !=null){
                                    strings.remove("支付转化率");
                                }
                            }

                        }
                    }
                }
                strings.add("少表");
            }
            if (strings.size()!=1 && strings.size()!=4){
                Iterator<String> iterator = strings.iterator();
                while (iterator.hasNext()){
                    System.out.println(iterator.next());
                }
            }
        }
    }


    //小米
    @Test
    void contextLoads5() {
        String [] fileName = Delecwj.getFileName("D:\\数据列表4\\新媒体");
        for (int i =0;i<fileName.length;i++) {
            if (fileName[i].substring(fileName[i].length() - 3, fileName[i].length() - 1).equals("小米")) {
                String[] fileName1 = Delecwj.getFileName("D:\\数据列表4\\新媒体\\" + fileName[i].toString());
                HashSet<String> strings = new HashSet<>();
                strings.add(fileName[i].toString());
                strings.add("支付金额");
                strings.add("支付订单数量");
                strings.add("支付客户数");
                strings.add("支付转化率");
                System.out.println("---");
                if (fileName1.length == 1) {
                    for (int s = 0; s < fileName1.length; s++) {
                        if (fileName1[s].substring(0, 2).equals("QQ")) {
                            Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表4\\新媒体\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                            if (stringStringMap.size() != 0) {
                                    if (stringStringMap.get("支付金额") != null) {
                                        strings.remove("支付金额");
                                    }
                                if (stringStringMap.get("支付订单数量") != null) {
                                    strings.remove("支付订单数量");
                                }
                                if (stringStringMap.get("支付客户数") != null) {
                                    strings.remove("支付客户数");
                                }
                                if (stringStringMap.get("支付转化率") != null) {
                                    strings.remove("支付转化率");
                                }

                            }
                        }
                    }
                    if (strings.size() != 1) {
                        strings.add("放错表");
                    }
                } else {
                    for (int s = 0; s < fileName1.length; s++) {
                        if (fileName1[s].substring(0, 2).equals("QQ")) {
                            Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表4\\新媒体\\" + fileName[i].toString() + "\\" + fileName1[s] + "\\result.txt");
                            if (stringStringMap.size() != 0) {
                                if (stringStringMap.get("支付金额") != null) {
                                    strings.remove("支付金额");
                                }
                                if (stringStringMap.get("支付订单数量") != null) {
                                    strings.remove("支付订单数量");
                                }
                                if (stringStringMap.get("支付客户数") != null) {
                                    strings.remove("支付客户数");
                                }
                                if (stringStringMap.get("支付转化率") != null) {
                                    strings.remove("支付转化率");
                                }
                            }
                        }
                    }
                    strings.add("少表");
                }
                if (strings.size() != 1 && strings.size() != 6) {
                    Iterator<String> iterator = strings.iterator();
                    while (iterator.hasNext()) {
                        System.out.println(iterator.next());
                    }
                }

            }
        }
    }


    //小米
    @Test
    void contextLoads51() {
        Map<String, String> stringStringMap = DDmcSheng.readTxtFile("D:\\数据列表\\拼多多\\2020-10-6_皇家小虎速食旗舰店(拼多多)\\QQ202110271555_OCR\\result.txt");
        System.out.println(stringStringMap);
        System.out.println(stringStringMap.get("\uFEFF店铺访客数"));
    }
}
