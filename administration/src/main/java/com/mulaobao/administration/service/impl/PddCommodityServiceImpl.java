package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.PddCommodityDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.PddCommodity;
import com.mulaobao.administration.entity.PddFxt;
import com.mulaobao.administration.entity.PddMxdp;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.service.PddCommodityService;
import com.mulaobao.administration.util.UtilId;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * (PddCommodity)表服务实现类
 *
 * @author makejava
 * @since 2021-10-29 16:32:55
 */
@Service("pddCommodityService")
public class PddCommodityServiceImpl extends ServiceImpl<PddCommodityDao, PddCommodity> implements PddCommodityService {
    @Autowired
    private LsShopService shopService;
    private final Logger LOG = LoggerFactory.getLogger(this.getClass());
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public void add(String pddCommoditys) {
        LOG.info(pddCommoditys);
        JSONObject jsonObject = JSONObject.fromObject(pddCommoditys);
        LsShop one = shopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 101).like("Shop_name",jsonObject.getString("shop_title")+"(拼多多)"));
        JSONArray jsonArray= JSONArray.fromObject(jsonObject.getString("goods_detail"));
        //获得jsonArray的第一个元素
        if (jsonArray.size()!=0){
        for (int i =0;i<jsonArray.size();i++){
            Object o=jsonArray.get(i);
            JSONObject jsonObject2=JSONObject.fromObject(o);
            PddCommodity stu2=(PddCommodity)JSONObject.toBean(jsonObject2, PddCommodity.class);
            stu2.setShopBh(one.getShopBh());
            stu2.setId(UtilId.getUUID());
            String stat_date = jsonObject.getString("stat_date").split(":")[1];
            try {
                stu2.setDateTime(simpleDateFormat.parse(stat_date));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            baseMapper.insert(stu2);
        }
        }
    }

}

