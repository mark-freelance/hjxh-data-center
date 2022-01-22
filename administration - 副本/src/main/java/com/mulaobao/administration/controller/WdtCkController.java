package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.WdtCk;
import com.mulaobao.administration.service.WdtCkService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (WdtCk)表控制层
 *
 * @author makejava
 * @since 2021-12-22 10:12:59
 */
@RestController
@RequestMapping("wdtCk")
public class WdtCkController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private WdtCkService wdtCkService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param wdtCk 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<WdtCk> page, WdtCk wdtCk) {
        return success(this.wdtCkService.page(page, new QueryWrapper<>(wdtCk)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.wdtCkService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param wdtCk 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody WdtCk wdtCk) {
        return success(this.wdtCkService.save(wdtCk));
    }

    /**
     * 修改数据
     *
     * @param wdtCk 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody WdtCk wdtCk) {
        return success(this.wdtCkService.updateById(wdtCk));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.wdtCkService.removeByIds(idList));
    }
}

