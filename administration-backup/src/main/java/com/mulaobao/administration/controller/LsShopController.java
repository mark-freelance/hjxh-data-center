package com.mulaobao.administration.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.util.UtilId;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.*;

/**
 * (LsShop)表控制层
 *
 * @author makejava
 * @since 2021-09-16 17:41:12
 */
@RestController
@RequestMapping("lsShop")
public class LsShopController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private LsShopService lsShopService;


    /**
     * 得到全部的店铺
     * @return
     */
    @GetMapping("showlist")
    public R shhw(){
        List<Map<String, Object>> maps = new ArrayList<>();
        List<LsShop> list =lsShopService.list(new QueryWrapper<LsShop>().eq("state",1));
        for (int i = 0;i<list.size();i++){
            HashMap<String, Object> objectObjectHashMap = new HashMap<>();
            objectObjectHashMap.put("label",list.get(i).getShopBh());
            objectObjectHashMap.put("value",list.get(i).getShopName());
            maps.add(objectObjectHashMap);
        }
        return success(maps);
    }

    /**
     * 得到店铺的名字
     * @param name
     * @return
     */
    @GetMapping("showname")
    public R shhw2(String name){
       LsShop list = lsShopService.getOne(new QueryWrapper<LsShop>() .like("Shop_name",name));
        return success(list.getShopBh());
    }

    /**
     * 分页查询所有数据
     *
     *
     */
    @PostMapping("list/{current}/{limit}")
    public R selectAll(@PathVariable long current, @PathVariable long limit,@RequestBody LsShop name) {
        //创建page对象，传递当前页，每页记录数
        Page<LsShop> pages = new Page<>(current,limit);
        QueryWrapper<LsShop> lsShop = new QueryWrapper<>();
        //调用方法实现分页查询
        if (name.getShopName()!=null &&  !name.getShopName().equals("")){
            lsShop.like("Shop_name",name.getShopName());
        }
        if (name.getState()!=null &&  !name.getState().equals("")){
            lsShop.eq("state",name.getState());
        }
        lsShop.ne("state",3);
        IPage<LsShop> pageHospitalSet = lsShopService.page(pages,lsShop);
        return success(pageHospitalSet);
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.lsShopService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param lsShop 实体对象
     * @return 新增结果
     */
    @PostMapping("addLsShop")
    public R insert(@RequestBody LsShop lsShop) {
      // lsShopService.getOne(new QueryWrapper<>())
                    lsShop.setId(UtilId.getUUID());
                    lsShop.setState("1");
                    lsShop.setDateTime(new Date());
        Map<String, Object> map = lsShopService.getMap(new QueryWrapper<LsShop>().select("max(Shop_bh) as maxs").eq("PlatForm_bh",lsShop.getPlatformBh()));
                lsShop.setShopBh(""+(Integer.parseInt((""+map.get("maxs")))+1));
        return success(this.lsShopService.save(lsShop));
    }

    /**
     * 修改数据
     *
     * @param lsShop 实体对象
     * @return 修改结果
     */
    @PostMapping("xglsShop")
    public R update(@RequestBody LsShop lsShop) {
        lsShop.setXgdateTime(new Date());
        return success(this.lsShopService.updateById(lsShop));
    }

    /**
     * 删除数据
     *
     *
     * @return 删除结果
     */
    @DeleteMapping("deleteId/{id}")
    public R delete(@PathVariable("id") String id) {
        return success(this.lsShopService.removeById(id));
    }


    /**
     * 根据状态获取不同的
     * @param state
     * @return
     */
    @GetMapping("getState")
    public R getState(@RequestBody String state){
        System.out.println(state);
               // lsShopService.list(new QueryWrapper<LsShop>().eq("",state))
        return success("");
    }
}

