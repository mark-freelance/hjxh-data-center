package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.PddMxdpDao;
import com.mulaobao.administration.entity.PddMxdp;
import com.mulaobao.administration.entity.PddSstg;
import com.mulaobao.administration.service.PddMxdpService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * (PddMxdp)表服务实现类
 *
 * @author makejava
 * @since 2021-12-02 15:44:06
 */
@Service("pddMxdpService")
public class PddMxdpServiceImpl extends ServiceImpl<PddMxdpDao, PddMxdp> implements PddMxdpService {
    @Override
    public Map<String, Object> getNum(String shopBh, Date datae) {
        QueryWrapper<PddMxdp> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh );
        ew.eq("Date_time",datae);
        ew.select("sum(Hits) AS giveNumll,sum(Spend) AS SpendNumfy");
        List<Map<String, Object>> maps = baseMapper.selectMaps(ew);
       return maps.get(0);
    }
}

