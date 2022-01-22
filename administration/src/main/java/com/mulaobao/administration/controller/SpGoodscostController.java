package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.LsProductlx;
import com.mulaobao.administration.entity.SpGoodscost;
import com.mulaobao.administration.entity.SpGoodslx;
import com.mulaobao.administration.entity.SpHistory;
import com.mulaobao.administration.service.LsProductlxService;
import com.mulaobao.administration.service.SpGoodscostService;
import com.mulaobao.administration.service.SpGoodslxService;
import com.mulaobao.administration.service.SpHistoryService;
import com.mulaobao.administration.temporary.CostType;
import com.mulaobao.administration.util.UtilId;
import lombok.extern.log4j.Log4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import sun.rmi.runtime.Log;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.*;

/**
 * (SpGoodscost)表控制层
 *
 * @author makejava
 * @since 2021-11-05 18:28:36
 */
@RestController
@RequestMapping("spGoodscost")
public class SpGoodscostController extends ApiController {

    /**
     * 服务对象
     */
    @Resource
    private SpGoodscostService spGoodscostService;

    @Resource
    private SpHistoryService spHistoryService;



    @Autowired
    private LsProductlxService lsProductlxService;
    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param spGoodscost 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<SpGoodscost> page, SpGoodscost spGoodscost) {
        return success(this.spGoodscostService.page(page, new QueryWrapper<>(spGoodscost)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.spGoodscostService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param spGoodscost 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody SpGoodscost spGoodscost) {
        return success(this.spGoodscostService.save(spGoodscost));
    }

    /**
     * 修改数据
     *
     * @param spGoodscost 实体对象
     * @return 修改结果
     */
    @PutMapping("updateSpGoodscost")
    public R update(@RequestBody SpGoodscost spGoodscost) {
        if (spGoodscost.getGoodsCost()!=null){
            SpGoodscost id = spGoodscostService.getOne(new QueryWrapper<SpGoodscost>().eq("id", spGoodscost.getId()));
            SpHistory spHistory = new SpHistory();
            if (spGoodscost.getGoodlx()!=null && !spGoodscost.getGoodlx().equals("")){
                LsProductlx lx_name = lsProductlxService.getOne(new QueryWrapper<LsProductlx>().eq("Lx_name",spGoodscost.getGoodlx()));
                id.setLxBh(lx_name.getLxBh());
                spGoodscostService.updateById(id);
            }
            spHistory.setAccont(spGoodscost.getAccoun());
            spHistory.setTypes("修改");
            spHistory.setEstablish(new Date());
            if (!spGoodscost.getGoodsName().equals(id.getGoodsName())){
                String nr = ""; //内容
                nr = nr+"名称"+id.getGoodsName()+"修改为名称:"+spGoodscost.getGoodsName();
                id.setGoodsName(spGoodscost.getGoodsName());
                spHistory.setContent(nr);
                spHistory.setModules("名称");
                spHistoryService.save(spHistory);
                spGoodscostService.updateById(id);
            }
            if (!spGoodscost.getGoodsBh().equals(id.getGoodsBh())){
                String nr = ""; //内容
                nr = nr+id.getGoodsName()+"的商家编号从"+id.getGoodsBh()+"修改为"+spGoodscost.getGoodsBh()+";";
                spHistory.setContent(nr);
                spHistory.setModules("商家编号");
                id.setGoodsBh(spGoodscost.getGoodsBh());
                spHistoryService.save(spHistory);
                spGoodscostService.updateById(id);
            }
            if (!spGoodscost.getGoodsCost().equals(id.getGoodsCost())){
                String nr = ""; //内容
                nr = nr+id.getGoodsName()+"的成本从"+id.getGoodsCost()+"修改为"+spGoodscost.getGoodsCost()+";";
                spHistory.setContent(nr);
                spHistory.setModules("成本");
                spHistoryService.save(spHistory);
                id.setJsDatetime(new Date());
                id.setState('0');
                spGoodscostService.updateById(id);
                id.setId(UtilId.getUUID());
                id.setJsDatetime(null);
                id.setState('1');
                id.setGoodsCost(spGoodscost.getGoodsCost());
                id.setKsDatetime(new Date());
                spGoodscostService.save(id);
                return success(true);
            }
            }else {
            LsProductlx lx_name = lsProductlxService.getOne(new QueryWrapper<LsProductlx>().eq("id",spGoodscost.getId()));
                lx_name.setLxName(spGoodscost.getGoodsName());
                lsProductlxService.updateById(lx_name);
        }
        return success(true);
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.spGoodscostService.removeByIds(idList));
    }


    @PostMapping("addCost")
    public R addCost(@RequestBody SpGoodscost costType){
        costType.setState('1');
        SpHistory spHistory = new SpHistory();
        costType.setKsDatetime(new Date());
        LsProductlx lx_name = lsProductlxService.getOne(new QueryWrapper<LsProductlx>().eq("Lx_name", costType.getId()));
        costType.setLxBh(lx_name.getLxBh());
        spHistory.setAccont(costType.getAccoun());
        spHistory.setModules("成本,名称,商家编号");
        spHistory.setTypes("添加");
        spHistory.setContent("类型:"+costType.getId()+" 名称:"+costType.getGoodsName()+" 商家编号:"+costType.getGoodsBh()+" 成本:"+costType.getGoodsCost());
        costType.setId(UtilId.getUUID());
        spHistory.setEstablish(new Date());
        spGoodscostService.save(costType);
        return success(spHistoryService.save(spHistory));
    }

    @PostMapping("addCost1")
    public R addCost1(@RequestBody SpGoodscost costType){
        LsProductlx spGoodslx = new LsProductlx();
        spGoodslx.setId(UtilId.getUUID());
        spGoodslx.setLxName(costType.getGoodlx());
        spGoodslx.setDateTime(new Date());
        Map<String, Object> map = lsProductlxService.getMap(new QueryWrapper<LsProductlx>().select("max(Lx_bh) as maxs"));
        String maxs = (String) map.get("maxs");
        if (maxs.indexOf("A0")!=-1){
            int sc = Integer.parseInt(maxs.substring(2,4));
            spGoodslx.setLxBh("A0"+(sc+1));
        }else {
            int sc = Integer.parseInt(maxs.substring(1,4));
            spGoodslx.setLxBh("A0"+(sc+1));
        }
        //return success(lsProductlxService.save(spGoodslx));
        return success("");
    }

}

