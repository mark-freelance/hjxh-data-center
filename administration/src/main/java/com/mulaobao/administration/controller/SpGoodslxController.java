package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.LsProductlx;
import com.mulaobao.administration.entity.SpGoodscost;
import com.mulaobao.administration.entity.SpGoodslx;
import com.mulaobao.administration.service.LsProductlxService;
import com.mulaobao.administration.service.SpGoodslxService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (SpGoodslx)表控制层
 *
 * @author makejava
 * @since 2021-11-05 18:28:23
 */
@RestController
@RequestMapping("spGoodslx")
public class SpGoodslxController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private SpGoodslxService spGoodslxService;

    @Resource
    private LsProductlxService lsProductlxService;
    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param spGoodslx 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<SpGoodslx> page, SpGoodslx spGoodslx) {
        return success(this.spGoodslxService.page(page, new QueryWrapper<>(spGoodslx)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.spGoodslxService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param spGoodslx 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody SpGoodslx spGoodslx) {
        return success(this.spGoodslxService.save(spGoodslx));
    }

    /**
     * 修改数据
     *
     * @param spGoodslx 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody SpGoodslx spGoodslx) {
        return success(this.spGoodslxService.updateById(spGoodslx));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.spGoodslxService.removeByIds(idList));
    }

    /**
     * 得到全部的类型
     * @param name
     * @return
     */
    @GetMapping("showlist")
    public R shhw(String name){
        QueryWrapper<LsProductlx> shop_name = new QueryWrapper<LsProductlx>().like("Lx_name", name);
        List<Map<String, Object>> maps = new ArrayList<>();
        List<LsProductlx> list =null;
        if (name!=null){
            list= lsProductlxService.list(shop_name);
        }else{
            list = lsProductlxService.list();
        }
        for (int i = 0;i<list.size();i++){
            HashMap<String, Object> objectObjectHashMap = new HashMap<>();
            objectObjectHashMap.put("label",list.get(i).getLxBh());
            objectObjectHashMap.put("value",list.get(i).getLxName());
            maps.add(objectObjectHashMap);
        }
        return success(maps);
    }
}

