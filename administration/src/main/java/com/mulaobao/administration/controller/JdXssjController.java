package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.JdXssj;
import com.mulaobao.administration.service.JdXssjService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (JdXssj)表控制层
 *
 * @author makejava
 * @since 2021-09-16 17:40:47
 */
@RestController
@RequestMapping("jdXssj")
public class JdXssjController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private JdXssjService jdXssjService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param jdXssj 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<JdXssj> page, JdXssj jdXssj) {
        return success(this.jdXssjService.page(page, new QueryWrapper<>(jdXssj)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.jdXssjService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param jdXssj 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody JdXssj jdXssj) {
        return success(this.jdXssjService.save(jdXssj));
    }

    /**
     * 修改数据
     *
     * @param jdXssj 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody JdXssj jdXssj) {
        return success(this.jdXssjService.updateById(jdXssj));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.jdXssjService.removeByIds(idList));
    }
}

