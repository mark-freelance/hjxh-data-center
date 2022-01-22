package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.CkWarehouseDao;
import com.mulaobao.administration.entity.CkWarehouse;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.temporary.DDmc;
import com.mulaobao.administration.temporary.Maps;
import com.mulaobao.administration.service.CkWarehouseService;
import com.mulaobao.administration.util.UtilId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * (CkWarehouse)表服务实现类
 *
 * @author makejava
 * @since 2021-09-23 16:49:21
 */
@Service("ckWarehouseService")
public class CkWarehouseServiceImpl extends ServiceImpl<CkWarehouseDao, CkWarehouse> implements CkWarehouseService {

    @Resource
    private LsShopService shopService;

    //得到所有的仓库和省
    @Override
    public List<CkWarehouse> getckWarehouse() {
        List<CkWarehouse> list = baseMapper.selectList(new QueryWrapper<CkWarehouse>().eq("fid", 0).eq("type", 1));
        list.stream().forEach(req->{
            List<CkWarehouse> ckWarehouses1 = baseMapper.selectList(new QueryWrapper<CkWarehouse>().eq("fid", req.getId()).eq("type", 1));
            req.setCkWarehouses(ckWarehouses1);
        });
        return list;
    }



    //得到所有的省
    @Override
    public List<Maps> getckSheng() {
        ArrayList<Maps> maps = new ArrayList<>();
        List<CkWarehouse> ckWarehouses = baseMapper.selectList(new QueryWrapper<CkWarehouse>().eq("type", 1).eq("fid", 0));
        for (int i =0;i<ckWarehouses.size();i++){
            Maps maps1 = new Maps();
            maps1.setLabel(ckWarehouses.get(i).getNamed());
            maps1.setValue(ckWarehouses.get(i).getShpn());
            maps.add(maps1);
        }
        return maps;
    }

    @Override
    public void setDDmcCk(DDmc dDmc){
        CkWarehouse ckWarehouse = new CkWarehouse();
        List<Map<String, Object>> maps = baseMapper.selectMaps(new QueryWrapper<CkWarehouse>().select("max(id) as mas"));
       String mas = maps.get(0).get("mas")+"";
        ckWarehouse.setId(Integer.parseInt(mas)+1);
        ckWarehouse.setNamed(dDmc.getCk());
        CkWarehouse shpn = baseMapper.selectOne(new QueryWrapper<CkWarehouse>().eq("shpn", dDmc.getSheng()));
        if (shpn!=null){
            ckWarehouse.setFid(shpn.getId());
        }
        ckWarehouse.setType("1");
        ckWarehouse.setShpn("0");
        baseMapper.insert(ckWarehouse);
    }

    //新增加省
    @Override
    public void setDDmcCks(DDmc dDmc) {
        CkWarehouse ckWarehouse = new CkWarehouse();
        List<Map<String, Object>> maps = baseMapper.selectMaps(new QueryWrapper<CkWarehouse>().select("max(id) as mas"));
        String mas = maps.get(0).get("mas")+"";
        ckWarehouse.setId(Integer.parseInt(mas)+1);
        ckWarehouse.setType("1");
        ckWarehouse.setFid(0);
        ckWarehouse.setNamed(dDmc.getSheng());
        LsShop lsShop = new LsShop();
        lsShop.setId(UtilId.getUUID());
        lsShop.setPlatformBh("104");
        lsShop.setDateTime(new Date());
        lsShop.setState("1");
        lsShop.setShoplx2("5");
            lsShop.setShopName("多多买菜"+"("+dDmc.getSheng()+")");
        Map<String, Object> platForm_bh = shopService.getMap(new QueryWrapper<LsShop>().select("max(Shop_bh) as mas").eq("PlatForm_bh", 104));
        String mas1 = platForm_bh.get("mas") + "";
        lsShop.setShopBh(""+(Integer.parseInt(mas1)+1));
        ckWarehouse.setShpn(""+(Integer.parseInt(mas1)+1));
        shopService.save(lsShop);
        baseMapper.insert(ckWarehouse);
    }


    @Override
    public List<CkWarehouse> getckWarehousemt() {
        List<CkWarehouse> list = baseMapper.selectList(new QueryWrapper<CkWarehouse>().eq("fid", 0).eq("type", 2));
        list.stream().forEach(req->{
            List<CkWarehouse> ckWarehouses1 = baseMapper.selectList(new QueryWrapper<CkWarehouse>().eq("fid", req.getId()).eq("type", 2));
            req.setCkWarehouses(ckWarehouses1);
        });
        return list;
    }

    @Override
    public List<Maps> getckShengmt() {
        ArrayList<Maps> maps = new ArrayList<>();
        List<CkWarehouse> ckWarehouses = baseMapper.selectList(new QueryWrapper<CkWarehouse>().eq("type", 2).eq("fid", 0));
        for (int i =0;i<ckWarehouses.size();i++){
            Maps maps1 = new Maps();
            maps1.setLabel(ckWarehouses.get(i).getNamed());
            maps1.setValue(ckWarehouses.get(i).getShpn());
            maps.add(maps1);
        }
        return maps;
    }

    @Override
    public void setmtCk(DDmc dDmc) {
        CkWarehouse ckWarehouse = new CkWarehouse();
        List<Map<String, Object>> maps = baseMapper.selectMaps(new QueryWrapper<CkWarehouse>().select("max(id) as mas"));
        String mas = maps.get(0).get("mas")+"";
        ckWarehouse.setId(Integer.parseInt(mas)+1);
        ckWarehouse.setNamed(dDmc.getCk());
        CkWarehouse shpn = baseMapper.selectOne(new QueryWrapper<CkWarehouse>().eq("shpn", dDmc.getSheng()));
        if (shpn!=null){
            ckWarehouse.setFid(shpn.getId());
        }
        ckWarehouse.setType("2");
        ckWarehouse.setShpn("0");
        baseMapper.insert(ckWarehouse);
    }

    @Override
    public void setmts(DDmc dDmc) {
        CkWarehouse ckWarehouse = new CkWarehouse();
        List<Map<String, Object>> maps = baseMapper.selectMaps(new QueryWrapper<CkWarehouse>().select("max(id) as mas"));
        String mas = maps.get(0).get("mas")+"";
        ckWarehouse.setId(Integer.parseInt(mas)+1);
        ckWarehouse.setType("2");
        ckWarehouse.setFid(0);
        ckWarehouse.setNamed(dDmc.getSheng());
        LsShop lsShop = new LsShop();
        lsShop.setId(UtilId.getUUID());
        lsShop.setPlatformBh("104");
        lsShop.setDateTime(new Date());
        lsShop.setState("1");
        lsShop.setShoplx2("5");
        lsShop.setShopName("美团优选"+"("+dDmc.getSheng()+")");
        Map<String, Object> platForm_bh = shopService.getMap(new QueryWrapper<LsShop>().select("max(Shop_bh) as mas").eq("PlatForm_bh", 104));
        String mas1 = platForm_bh.get("mas") + "";
        lsShop.setShopBh(""+(Integer.parseInt(mas1)+1));
        ckWarehouse.setShpn(""+(Integer.parseInt(mas1)+1));
        shopService.save(lsShop);
        baseMapper.insert(ckWarehouse);
    }
}

