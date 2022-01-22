package com.mulaobao.administration.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.mulaobao.administration.entity.LsProductlx;
import com.mulaobao.administration.entity.SpGoodscost;
import com.mulaobao.administration.entity.SpGoodslx;
import com.mulaobao.administration.entity.SpGoodssale;
import com.mulaobao.administration.service.LsProductlxService;
import com.mulaobao.administration.service.SpGoodscostService;
import com.mulaobao.administration.service.SpGoodslxService;
import com.mulaobao.administration.service.SpGoodssaleService;
import com.mulaobao.administration.temporary.CostType;
import com.mulaobao.administration.util.UtilId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("cost")
@RestController
public class CostsController extends ApiController {
    @Autowired
    private SpGoodscostService spGoodscostService;
    @Autowired
    private LsProductlxService lsProductlxService;


    @GetMapping("getcostlist")
        public R getcostlist(@RequestParam(value = "shopName",required=false) String shopName,@RequestParam(value = "shopNames",required=false) String shopNames){
        List<LsProductlx> list = lsProductlxService.list();
        ArrayList<CostType> costTypes1 = new ArrayList<>();
        int a =1;
        for (int i =0;i<list.size();i++){
            CostType costType = new CostType();
            costType.setName(list.get(i).getLxName());
            costType.setIds(list.get(i).getId());
            costType.setId(a);
            a++;
            QueryWrapper<SpGoodscost> eqs = new QueryWrapper<>();
            if (shopName!=null){
                eqs.like("Goods_name",shopName);
            }
            if (shopNames!=null){
                eqs.like("Goods_bh",shopNames);
            }
            eqs.eq("Lx_bh", list.get(i).getLxBh());
            eqs.eq("state", 1);
            List<SpGoodscost> lx_bh = spGoodscostService.list(eqs);
            ArrayList<CostType> costTypes = new ArrayList<>();
            costType.setGs(lx_bh.size());
            if (lx_bh.size()!=0){
                for (int q =0;q<lx_bh.size();q++){
                    CostType costType1 = new CostType();
                    costType1.setId(a);
                    a++;
                    costType1.setIds(lx_bh.get(q).getId());
                    costType1.setName(lx_bh.get(q).getGoodsName()); //名称
                    costType1.setBh(lx_bh.get(q).getGoodsBh());  //编号
                    costType1.setCb(lx_bh.get(q).getGoodsCost());  //成本
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    costType1.setDateTime(lx_bh.get(q).getKsDatetime()); //时间
                    costTypes.add(costType1);
                }
                costType.setCostTypes(costTypes);
                costTypes1.add(costType);
            }

        }
        return success(costTypes1);
    }



}
