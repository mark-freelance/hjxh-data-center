package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.PddCommodity;
import com.mulaobao.administration.service.PddCommodityService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (PddCommodity)表控制层
 *
 * @author makejava
 * @since 2021-10-29 16:58:34
 */
@RestController
@RequestMapping("pddCommodity")
public class PddCommodityController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private PddCommodityService pddCommodityService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param pddCommodity 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<PddCommodity> page, PddCommodity pddCommodity) {
        return success(this.pddCommodityService.page(page, new QueryWrapper<>(pddCommodity)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.pddCommodityService.getById(id));
    }

    /**
     * 新增数据
     *
     * @return 新增结果
     */
    @PostMapping("addPddCommodity")
    public R insert(@RequestBody String pddCommoditys) {
        pddCommodityService.add(pddCommoditys);
        return success(0);
    }

    /**
     * 修改数据
     *
     * @param pddCommodity 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody PddCommodity pddCommodity) {
        return success(this.pddCommodityService.updateById(pddCommodity));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.pddCommodityService.removeByIds(idList));
    }
}

