package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.service.LsEmployeeService;
import com.mulaobao.administration.service.LsEmpsaleService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.temporary.Maps;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * (LsEmployee)表控制层
 *
 * @author makejava
 * @since 2021-10-19 10:58:13
 */
@RestController
@RequestMapping("lsEmployee")
public class LsEmployeeController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private LsEmployeeService lsEmployeeService;

    @Resource
    private LsEmpsaleService lsEmpsaleService;

    @Resource
    private LsShopService shopService;


    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param lsEmployee 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<LsEmployee> page, LsEmployee lsEmployee) {
        return success(this.lsEmployeeService.page(page, new QueryWrapper<>(lsEmployee)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.lsEmployeeService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param lsEmployee 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody LsEmployee lsEmployee) {
        return success(this.lsEmployeeService.save(lsEmployee));
    }

    /**
     * 修改数据
     *
     * @param lsEmployee 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody LsEmployee lsEmployee) {
        return success(this.lsEmployeeService.updateById(lsEmployee));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.lsEmployeeService.removeByIds(idList));
    }

    @GetMapping("listlsEmployees")
    public R show(){
        List<LsEmployee> lsEmployees = lsEmployeeService.getlistE();
       return success(lsEmployees);
    }


            @GetMapping("namelist")
    public R showlist(){
       List<LsEmployee> list = lsEmployeeService.list(new QueryWrapper<LsEmployee>().eq("fperson_bh",0));
        ArrayList<HashMap<String, String>> lsEmployees = new ArrayList<>();
        for (int i =0;i<list.size();i++){
            HashMap<String, String> stringString = new HashMap<>();
            stringString.put("value",list.get(i).getPersonBh());
            stringString.put("label",list.get(i).getPerson());
            lsEmployees.add(stringString);
        }
        return success(lsEmployees);
    }

    //得到成员店铺
    @GetMapping("getshopname/{name}")
    public R shopname(@PathVariable String name){
        String[] split = name.split(",");
        String [] shopbh = new String[split.length];
        for (int i =0;i<split.length;i++){
            LsShop shop_name = shopService.getOne(new QueryWrapper<LsShop>().eq("Shop_name", split[i]));
            shopbh[i] = shop_name.getShopBh();
        }
        return success(shopbh);
    }

        //得到组长
    @GetMapping("getzzname/{id}")
    public R zzname(@PathVariable String id){
        LsEmployee shop_bh = lsEmployeeService.getOne(new QueryWrapper<LsEmployee>().eq("Shop_bh", id));
        Maps maps = new Maps();
        maps.setLabel(shop_bh.getPerson());
        maps.setValue(shop_bh.getPersonBh());
        return success(maps);
    }
}

