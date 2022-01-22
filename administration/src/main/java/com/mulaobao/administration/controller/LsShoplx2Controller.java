package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.service.LsEmployeeService;
import com.mulaobao.administration.service.LsEmpsaleService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.service.LsShoplx2Service;
import com.mulaobao.administration.temporary.Maps;
import com.mulaobao.administration.util.UtilId;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * (LsShoplx2)表控制层
 *
 * @author makejava
 * @since 2021-10-20 11:14:12
 */
@RestController
@RequestMapping("lsShoplx2")
public class LsShoplx2Controller extends ApiController {



    /**
     * 服务对象
     */
    @Resource
    private LsShoplx2Service lsShoplx2Service;
    @Resource
    private LsShopService lsShopService;

    @Resource
    private LsEmployeeService employeeService;

    @Resource
    private LsEmpsaleService lsEmpsaleService;
    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param lsShoplx2 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<LsShoplx2> page, LsShoplx2 lsShoplx2) {
        return success(this.lsShoplx2Service.page(page, new QueryWrapper<>(lsShoplx2)));
    }

    @GetMapping("getlistShop2")
    public R getshoplxlist(){
        List<LsShoplx2> list = lsShoplx2Service.list();
        List<Maps> maps = new ArrayList<>();
        for (int i =0;i<list.size();i++){
            Maps maps1 = new Maps();
            maps1.setValue(list.get(i).getShopLxbh());
            maps1.setLabel(list.get(i).getShopLxname());
            maps.add(maps1);
        }
        return success(maps);
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.lsShoplx2Service.getById(id));
    }

    /**
     * 新增数据
     *

     * @return 新增结果
     */
    @PostMapping("add")
    public R insert(@RequestBody Zry zry) {
        Map<String, Object> map = employeeService.getMap(new QueryWrapper<LsEmployee>().select("max(Person_bh) as maxs"));
        LsEmployee lsEmployee = new LsEmployee();//添加责任人
        lsEmployee.setId(UtilId.getUUID());
        String maxs =(String)map.get("maxs");
        String substring = maxs.substring(0, 1);
        if (substring.equals("0")){
            int i = Integer.parseInt(maxs.substring(1, maxs.length())) + 1;
           lsEmployee.setPersonBh("0"+i);
        }else {
            int i = Integer.parseInt(maxs) + 1;
           lsEmployee.setPersonBh(""+i);
        }
        lsEmployee.setPerson(zry.getZyname());
        lsEmployee.setFpersonBh(zry.getZz());
        lsEmployee.setXsdate(zry.getDate());
        QueryWrapper<LsEmployee> person_bh = new QueryWrapper<LsEmployee>().eq("Person_bh", zry.getZz());
        LsEmployee one = employeeService.getOne(person_bh);
        lsEmployee.setFz(one.getFz());
        employeeService.save(lsEmployee);

            //添加责任人店铺
        LsEmpsale lsEmpsale = new LsEmpsale();

        lsEmpsale.setJxDatetime(zry.getDate().substring(0,zry.getDate().length()));
        lsEmpsale.setPersonBh(lsEmployee.getPersonBh());
        for (int i = 0;i<zry.getShop().length;i++){
        lsEmpsale.setShopBh(zry.getShop()[i]);
            lsEmpsale.setId(UtilId.getUUID());
            lsEmpsaleService.save(lsEmpsale);
        }

        return success(200);
    }

    /**
     * 修改数据
     *
     * @param lsShoplx2 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody LsShoplx2 lsShoplx2) {
        return success(this.lsShoplx2Service.updateById(lsShoplx2));
    }


    /**
     * 删除单个数据
     *
     * @param id 主键结合
     * @return 删除结果
     */
    @DeleteMapping("deletId/{id}")
    public R delete(@PathVariable String id) {
        LsEmployee person_bh = employeeService.getOne(new QueryWrapper<LsEmployee>().eq("Person_bh", id));
        employeeService.removeById(person_bh.getId());
        List<LsEmpsale> person_bh1 = lsEmpsaleService.list(new QueryWrapper<LsEmpsale>().eq("Person_bh", id));
        for (int i = 0;i<person_bh1.size();i++){
            lsEmpsaleService.removeById(person_bh1.get(i).getId());
        }
        return success(200);
    }



    @PostMapping("listName/{id}")
    public R listName(@PathVariable String id){
        LsEmployee person_bh = employeeService.getOne(new QueryWrapper<LsEmployee>().eq("Person_bh", id));

        List<LsShop> shop_lx3 = lsShopService.list(new QueryWrapper<LsShop>().eq("Shop_lx3", person_bh.getFz().substring(2,3)));
            ArrayList<Maps> maps3 = new ArrayList<>();
            for (int i =0;i<shop_lx3.size();i++){
                    Maps maps2 = new Maps();
                    maps2.setValue(shop_lx3.get(i).getShopBh());
                    maps2.setLabel(shop_lx3.get(i).getShopName());
                    maps3.add(maps2);
                }

       return success(maps3);
    }

}

