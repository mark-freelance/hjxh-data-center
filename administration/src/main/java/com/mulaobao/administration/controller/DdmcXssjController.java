package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.DdmcXssj;
import com.mulaobao.administration.service.DdmcXssjService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (DdmcXssj)表控制层
 *
 * @author makejava
 * @since 2021-09-18 18:32:39
 */
@RestController
@RequestMapping("ddmcXssj")
public class DdmcXssjController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private DdmcXssjService ddmcXssjService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param ddmcXssj 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<DdmcXssj> page, DdmcXssj ddmcXssj) {
        return success(this.ddmcXssjService.page(page, new QueryWrapper<>(ddmcXssj)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.ddmcXssjService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param ddmcXssj 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody DdmcXssj ddmcXssj) {
        return success(this.ddmcXssjService.save(ddmcXssj));
    }

    /**
     * 修改数据
     *
     * @param ddmcXssj 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody DdmcXssj ddmcXssj) {
        return success(this.ddmcXssjService.updateById(ddmcXssj));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.ddmcXssjService.removeByIds(idList));
    }
}

