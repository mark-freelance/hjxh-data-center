package com.mulaobao.administration.service.impl;

import com.alibaba.druid.sql.visitor.functions.Char;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.LsProductlxDao;
import com.mulaobao.administration.entity.LsProductcomm;
import com.mulaobao.administration.entity.LsProductlx;
import com.mulaobao.administration.service.LsProductcommService;
import com.mulaobao.administration.service.LsProductlxService;
import com.mulaobao.administration.temporary.Maps;
import com.mulaobao.administration.temporary.Productlx;
import com.mulaobao.administration.util.UtilId;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * (LsProductlx)表服务实现类
 *
 * @author makejava
 * @since 2021-11-27 14:38:02
 */
@Service("lsProductlxService")
public class LsProductlxServiceImpl extends ServiceImpl<LsProductlxDao, LsProductlx> implements LsProductlxService {
    @Resource
    private LsProductcommService lsProductcommService;

    @Override
    public List<Productlx> getlist(LsProductlx lsProductlx) {

        QueryWrapper<LsProductlx> f_bh22 = new QueryWrapper<>();
        f_bh22.eq("F_bh2", "0");
        if (lsProductlx.getId()!=null){
            if (!lsProductlx.getId().equals("")){
                if (!lsProductlx.getId().equals("0")){
                    f_bh22.eq("F_bh",lsProductlx.getId());
                }
            }
        }
        List<LsProductlx> f_bh2 = baseMapper.selectList(f_bh22);
        List<Productlx> productlxes = new ArrayList<>();
        for (int i =0;i<f_bh2.size();i++){ //二等级
            Productlx productlx = new Productlx();
            List<LsProductlx> f_bh21 = baseMapper.selectList(new QueryWrapper<LsProductlx>().eq("F_bh2", f_bh2.get(i).getLxBh()));
            List<Productlx> productlxes1 = new ArrayList<>();
            productlx.setName(f_bh2.get(i).getLxName());
            productlx.setId(f_bh2.get(i).getId());
            productlx.setFid(f_bh2.get(i).getFBh());
            productlx.setFfid(f_bh2.get(i).getFBh2());
            productlx.setNumber(f_bh21.size());
            if (f_bh21.size()!=0) {

                for (int ii = 0; ii < f_bh21.size(); ii++) {  //三等级
                    Productlx productlx1 = new Productlx();
                    List<LsProductcomm> list = null;
                    if (lsProductlx!=null){
                        if (lsProductlx.getShopbh()!=null){
                            if (!lsProductlx.getShopbh().equals("")){
                                list= lsProductcommService.list(new QueryWrapper<LsProductcomm>().eq("Lx_bh", f_bh21.get(ii).getLxBh()).eq("Shop_bh",lsProductlx.getShopbh()));
                            }else {
                                list= lsProductcommService.list(new QueryWrapper<LsProductcomm>().eq("Lx_bh", f_bh21.get(ii).getLxBh()));

                            }
                        }
                    }
                    productlx1.setName(f_bh21.get(ii).getLxName());
                    productlx1.setId(f_bh21.get(ii).getId());
                    productlx1.setFid(f_bh21.get(ii).getFBh());
                    productlx1.setFfid(f_bh21.get(ii).getFBh2());
                    productlx1.setNumber(list.size());
                    List<Productlx> productlxes2 = new ArrayList<>();
                    if (list.size() != 0) {
                        for (int iii = 0; iii < list.size(); iii++) { //四等级
                            Productlx productlx2 = new Productlx();
                            productlx2.setName(list.get(iii).getGoodId());
                            productlx2.setId(list.get(iii).getId());
                            productlx2.setFid(list.get(iii).getLxBh());
                            productlx2.setFfid("2");
                            productlxes2.add(productlx2);
                        }
                        productlx1.setChildren(productlxes2);
                    }
                    productlxes1.add(productlx1);
                }
                productlx.setChildren(productlxes1);
            }
            productlxes.add(productlx);
        }

        return productlxes;
    }

    @Override
    public List<Maps> getdyg() {
        List<LsProductlx> f_bh2 = baseMapper.selectList(new QueryWrapper<LsProductlx>().eq("F_bh2", "1"));
        ArrayList<Maps> maps = new ArrayList<>();
        Maps maps2 = new Maps();
        maps2.setLabel("全部");
        maps2.setValue("0");
        maps.add(maps2);
        for (int i=0;i<f_bh2.size();i++){
            Maps maps1 = new Maps();
            maps1.setLabel(f_bh2.get(i).getLxName());
            maps1.setValue(f_bh2.get(i).getLxBh());
            maps.add(maps1);
        }
        return maps;
    }


    @Override
    public List<Maps> getshow() {
        List<LsProductlx> f_bh2 = baseMapper.selectList(new QueryWrapper<LsProductlx>().eq("F_bh2", "1"));
        ArrayList<Maps> maps = new ArrayList<>();
        for (int i=0;i<f_bh2.size();i++){ //一级
            Maps maps1 = new Maps();
            maps1.setLabel(f_bh2.get(i).getLxName());
            maps1.setValue(f_bh2.get(i).getLxBh());
            List<LsProductlx> lsProductlxes = baseMapper.selectList(new QueryWrapper<LsProductlx>().eq("F_bh2", "0").eq("F_bh", f_bh2.get(i).getLxBh()));
            ArrayList<Maps> mapss = new ArrayList<>();
            for (int ii =0;ii<lsProductlxes.size();ii++){ //二级
                Maps maps2 = new Maps();
                maps2.setLabel(lsProductlxes.get(ii).getLxName());
                maps2.setValue(lsProductlxes.get(ii).getLxBh());
                List<LsProductlx> lsProductlxes1 = baseMapper.selectList(new QueryWrapper<LsProductlx>().eq("F_bh2", lsProductlxes.get(ii).getLxBh()));
                ArrayList<Maps> mapsss = new ArrayList<>();
                for (int iii =0;iii<lsProductlxes1.size();iii++){
                    Maps maps3 = new Maps();
                    maps3.setLabel(lsProductlxes1.get(iii).getLxName());
                    maps3.setValue(lsProductlxes1.get(iii).getLxBh());
                    mapsss.add(maps3);
                }
                maps2.setChildren(mapsss);
                mapss.add(maps2);
            }
            maps1.setChildren(mapss);
            maps.add(maps1);
        }
        return maps;
    }

    @Override
    public boolean addProductlxes(LsProductlx lsProductlx) {
      //  LsProductcomm lsProductcomm = new LsProductcomm();
       // lsProductcomm.setId(UtilId.getUUID());
      //  lsProductcomm.setState();
        return false;
    }
}

