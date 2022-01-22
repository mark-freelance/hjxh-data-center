package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.LsSale;
import com.mulaobao.administration.entity.LsSaleAcotn;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.SpHistory;
import com.mulaobao.administration.service.SpHistoryService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.rmi.CORBA.Util;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (SpHistory)表控制层
 *
 * @author makejava
 * @since 2021-11-06 18:21:18
 */
@RestController
@RequestMapping("spHistory")
public class SpHistoryController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private SpHistoryService spHistoryService;

    /**
     * 分页查询所有数据
     *

     */
    @PostMapping("getlist/{current}/{limit}")
    public R selectAll(@PathVariable long current, @PathVariable long limit,@RequestBody SpHistory spHistory) {
        //创建page对象，传递当前页，每页记录数
        Page<SpHistory> pages = new Page<>(current,limit);
        QueryWrapper<SpHistory> spHistoryQuery = new QueryWrapper<>();
        if (spHistory.getDatas()!=null && spHistory.getDatas().length!=0){
                spHistoryQuery.apply(
                        "(CONVERT([varchar](10),establish,(120)))>= "+"'"+spHistory.getDatas()[0]+"'")
                        .apply(
                                "(CONVERT([varchar](10),establish,(120))) <="+ "'"+spHistory.getDatas()[1]+"'");

        }
        if (spHistory.getModules()!=null){
            if (!spHistory.getModules().equals("全部")){
                spHistoryQuery.eq("modules",spHistory.getModules());
            }

        }
        if (spHistory.getTypes()!=null){
            if (!spHistory.getTypes().equals("全部")) {
                spHistoryQuery.eq("type", spHistory.getTypes());
            }
        }
        spHistoryQuery.orderByDesc("establish");
        IPage<SpHistory> pageHospitalSet = spHistoryService.page(pages,spHistoryQuery);
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
        return success(this.spHistoryService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param spHistory 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody SpHistory spHistory) {
        return success(this.spHistoryService.save(spHistory));
    }

    /**
     * 修改数据
     *
     * @param spHistory 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody SpHistory spHistory) {
        return success(this.spHistoryService.updateById(spHistory));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.spHistoryService.removeByIds(idList));
    }


}

