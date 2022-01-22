package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.LsEmployeeDao;
import com.mulaobao.administration.entity.LsEmployee;
import com.mulaobao.administration.entity.LsEmpsale;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.LsEmployeeService;
import com.mulaobao.administration.service.LsEmpsaleService;
import com.mulaobao.administration.service.LsShopService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (LsEmployee)表服务实现类
 *
 * @author makejava
 * @since 2021-10-19 10:58:13
 */
@Service("lsEmployeeService")
public class LsEmployeeServiceImpl extends ServiceImpl<LsEmployeeDao, LsEmployee> implements LsEmployeeService {
    @Resource
    private LsEmployeeService lsEmployeeService;

    @Resource
    private LsEmpsaleService lsEmpsaleService;

    @Resource
    private LsShopService shopService;

    @Override
    public List<LsEmployee> listLsEmployee() {
        return baseMapper.listLsEmployee();
    }

    @Override
    public List<LsEmployee> getlistE() {
        List<LsEmployee> lsEmployees = lsEmployeeService.listLsEmployee();
        lsEmployees.stream().forEach(element->{
                    if (element.getFz().equals("101")){
                        element.setName("拼多多食品");
                        List<LsEmployee> lsEmployees1 = element.getLsEmployees();
                        for (int i =0;i<lsEmployees1.size();i++){
                            List<LsEmpsale> person_bh = lsEmpsaleService.list(new QueryWrapper<LsEmpsale>().eq("Person_bh", lsEmployees1.get(i).getPersonBh()));
                            String name = "";
                            for (int is = 0;is<person_bh.size();is++){
                                LsShop shop_bh = shopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh", person_bh.get(is).getShopBh()));
                                if (shop_bh!=null){
                                    if (is==0){
                                        name = shop_bh.getShopName();
                                    }else {
                                        name = name+","+shop_bh.getShopName();
                                    }
                                }
                            }
                            element.getLsEmployees().get(i).setName(name);

                        }
                    }
                    if (element.getFz().equals("102")){
                        element.setName("淘系");
                        List<LsEmployee> lsEmployees1 = element.getLsEmployees();
                        for (int i =0;i<lsEmployees1.size();i++){
                            List<LsEmpsale> person_bh = lsEmpsaleService.list(new QueryWrapper<LsEmpsale>().eq("Person_bh", lsEmployees1.get(i).getPersonBh()));
                            String name = "";
                            for (int is = 0;is<person_bh.size();is++){
                                LsShop shop_bh = shopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh", person_bh.get(is).getShopBh()));
                                if (shop_bh!=null){
                                    if (is==0){
                                        name = shop_bh.getShopName();
                                    }else {
                                        name = name+","+shop_bh.getShopName();
                                    }
                                }
                            }
                            element.getLsEmployees().get(i).setName(name);


                        }
                    }
                    if (element.getFz().equals("103")){
                        element.setName("多多买菜");
                        List<LsEmployee> lsEmployees1 = element.getLsEmployees();
                        for (int i =0;i<lsEmployees1.size();i++){
                            List<LsEmpsale> person_bh = lsEmpsaleService.list(new QueryWrapper<LsEmpsale>().eq("Person_bh", lsEmployees1.get(i).getPersonBh()));
                            String name = "";
                            for (int is = 0;is<person_bh.size();is++){
                                LsShop shop_bh = shopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh", person_bh.get(is).getShopBh()));
                                if (shop_bh!=null){
                                    if (is==0){
                                        name = shop_bh.getShopName();
                                    }else {
                                        name = name+","+shop_bh.getShopName();
                                    }
                                }
                            }
                            element.getLsEmployees().get(i).setName(name);

                        }
                    }
                    if (element.getFz().equals("104")){
                        element.setName("拼多多生鲜");
                        List<LsEmployee> lsEmployees1 = element.getLsEmployees();
                        for (int i =0;i<lsEmployees1.size();i++){
                            List<LsEmpsale> person_bh = lsEmpsaleService.list(new QueryWrapper<LsEmpsale>().eq("Person_bh", lsEmployees1.get(i).getPersonBh()));
                            String name = "";
                            for (int is = 0;is<person_bh.size();is++){
                                LsShop shop_bh = shopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh", person_bh.get(is).getShopBh()));
                                if (shop_bh!=null){
                                    if (is==0){
                                        name = shop_bh.getShopName();
                                    }else {
                                        name = name+","+shop_bh.getShopName();
                                    }
                                }
                            }
                            element.getLsEmployees().get(i).setName(name);


                        }
                    }
                    if (element.getFz().equals("105")){
                        element.setName("推广平台");
                        List<LsEmployee> lsEmployees1 = element.getLsEmployees();
                        for (int i =0;i<lsEmployees1.size();i++){
                            List<LsEmpsale> person_bh = lsEmpsaleService.list(new QueryWrapper<LsEmpsale>().eq("Person_bh", lsEmployees1.get(i).getPersonBh()));
                            String name = "";
                            for (int is = 0;is<person_bh.size();is++){
                                LsShop shop_bh = shopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh", person_bh.get(is).getShopBh()));
                                if (shop_bh!=null){
                                    if (is==0){
                                        name = shop_bh.getShopName();
                                    }else {
                                        name = name+","+shop_bh.getShopName();
                                    }
                                }
                            }
                            element.getLsEmployees().get(i).setName(name);
                        }
                    }

                }

        );

        List<LsEmployee> fz1 = lsEmployeeService.list(new QueryWrapper<LsEmployee>().eq("fz", 106));
        if (fz1.size()==1){
            LsEmployee fz = lsEmployeeService.getOne(new QueryWrapper<LsEmployee>().eq("fz", 106));
            fz.setName("产品运营");
            lsEmployees.add(fz);
        }

        return lsEmployees;
    }
}

