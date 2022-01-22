package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.WdtKc;
import com.mulaobao.administration.service.WdtKcService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (WdtKc)表控制层
 *
 * @author makejava
 * @since 2021-12-22 10:13:25
 */
@RestController
@RequestMapping("wdtKc")
public class WdtKcController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private WdtKcService wdtKcService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param wdtKc 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<WdtKc> page, WdtKc wdtKc) {
        return success(this.wdtKcService.page(page, new QueryWrapper<>(wdtKc)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.wdtKcService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param wdtKc 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody WdtKc wdtKc) {
        return success(this.wdtKcService.save(wdtKc));
    }

    /**
     * 修改数据
     *
     * @param wdtKc 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody WdtKc wdtKc) {
        return success(this.wdtKcService.updateById(wdtKc));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.wdtKcService.removeByIds(idList));
    }
}

