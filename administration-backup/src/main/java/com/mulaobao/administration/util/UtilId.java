package com.mulaobao.administration.util;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class UtilId {


    public static double doublelsnull(String s){
        if(s==null){
            return 0.0;
        }
        if(s.equals("null")){
            return 0.0;
        }
        return Double.valueOf(s);
    }

    //uuid
    public static String getUUID(){
        return UUID.randomUUID().toString();
    }

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");


    /**
     *   string转duoble
     * @param su
     * @return
     */
    public static double getduoble(String su){
        if(su==null){
            return 0.0;
        }
        if(su.equals("null")){
            return 0.0;
        }
        if (su.equals("0") ){
return 0.0;
        }

        String substring = su.substring(0, su.length() - 1);
       // System.out.println(substring);
        double v = Double.parseDouble(substring)/100;

        String s =  String.format("%.4f",v);

        Double ss =Double.parseDouble(s) ;
        return v;
    }

    public static double getMl(String su){

        if (su!=null){
            int i1 = su.indexOf(",");
            String nubs = "";
            if (i1==-1){
                int i = su.indexOf(".");
                if (i!=-1){
                    int i2 = su.substring(i+1, su.length()).indexOf(".");
                    if (i2!=-1){
                        nubs = su.substring(0,i)+su.substring(i+1, su.length());
                        return Double.parseDouble(nubs);
                    }
                }
                return Double.parseDouble(su);
            }else {
                String[] split = su.split(",");
                String zs = "";
                for (int i = 0;i<split.length;i++){
                    zs =zs+split[i];
                }
                Double ss =Double.parseDouble(zs.replace(" ", ""));
                return ss;
            }

        }
     return 0.0;
    }

    public static Date getsj(String su) throws ParseException {
        String[] split = su.split("/");
        String zs = "";
        for (int i = 0;i<split.length;i++){
            zs =zs+split[i];
        }
        return simpleDateFormat.parse(zs);
    }
    public static String getnlll(String su){
       if (su==null || su.isEmpty()){
           return "0";
       }
        return su;
    }

    public static Double getnlllduoble(Double su){
        if (su==null){
            return 0.0;
        }
        return su;
    }


    public static String stringred(double red){
        DecimalFormat df = new DecimalFormat("0.00%");
               return df.format(red);
    }

    public static double sting2double(double red){
        if (red != 0){
            BigDecimal b   =  new BigDecimal(red);
            double  f1   =  b.setScale(4,BigDecimal.ROUND_HALF_UP).doubleValue();
            return f1;
        }
        return 0.0;

    }


    /**
     * 整数金额
     * @param je
     * @return
     */
        public static double getmuje(String je){
        je = je.trim();
        if (je!=null){
            if (!je.equals("")){
                if (je.indexOf(",")!=-1){
                    String[] split = je.split(",");
                    if (split.length>=3){
                        String sc ="";
                        for (int i =0;i<split.length;i++){
                                sc=sc+split[i];
                        }
                        return Double.parseDouble(sc);
                    }else {
                        return Double.valueOf(split[0]+split[1]);
                    }
                }

        return Double.valueOf(je);
            }
        }
        return 0.0;
        }

        public static String getqd(String mc){

            if (mc==null){
                return "";
            }
            if (mc.indexOf("\"")!=-1){
                String[] split = mc.split("\"");
                return split[1];
            }
            if (mc.indexOf("=")!=-1){
                String[] split = mc.split("=");

                return split[1];
            }
            return mc;
        }







}


