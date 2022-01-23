package com.mulaobao.administration.util;

import com.mulaobao.administration.temporary.Cwd;
import com.mulaobao.administration.temporary.Cwd2;
import com.mulaobao.administration.temporary.Dpckwjs;
import com.mulaobao.administration.temporary.RowRangeDto;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ExcelUtil {
    /**
     * @Author: TheBigBlue
     * @Description: 添加合并策略
     * @Date: 2020/3/16
     * @Param:
     * @return:
     **/
    public static Map<String, List<RowRangeDto>> addMerStrategy(List<Cwd> excelDtoList) {
        Map<String, List<RowRangeDto>> strategyMap = new HashMap<>();
        Cwd preExcelDto = null;
        for (int i = 0; i < excelDtoList.size(); i++) {
            Cwd currDto = excelDtoList.get(i);
            if (preExcelDto != null) {
                //从第二行开始判断是否需要合并
                if (currDto.getShopname().equals(preExcelDto.getShopname())) {
                    //如果坐席人员一样，则可合并坐席人员一列
                    fillStrategyMap(strategyMap, "0", i);
                    //如果坐席一样，并且所属机构一样，则可合并所属机构一列
                }
            }
            preExcelDto = currDto;
        }
        return strategyMap;
    }

    public static Map<String, List<RowRangeDto>> addMerStrategy2(List<Cwd2> excelDtoList) {
        Map<String, List<RowRangeDto>> strategyMap = new HashMap<>();
        Cwd2 preExcelDto = null;
        for (int i = 0; i < excelDtoList.size(); i++) {
            Cwd2 currDto = excelDtoList.get(i);
            if (preExcelDto != null) {
                //从第二行开始判断是否需要合并
                if (currDto.getShopname().equals(preExcelDto.getShopname())) {
                    //如果坐席人员一样，则可合并坐席人员一列
                    fillStrategyMap(strategyMap, "0", i);
                    //如果坐席一样，并且所属机构一样，则可合并所属机构一列
                }
            }
            preExcelDto = currDto;
        }
        return strategyMap;
    }


    /**
     * @Author: TheBigBlue
     * @Description: 新增或修改合并策略map
     * @Date: 2020/3/16
     * @Param:
     * @return:
     **/
    private static void fillStrategyMap(Map<String, List<RowRangeDto>> strategyMap, String key, int index) {
        List<RowRangeDto> rowRangeDtoList = strategyMap.get(key) == null ? new ArrayList<>() : strategyMap.get(key);
        boolean flag = false;
        for (RowRangeDto dto : rowRangeDtoList) {
            //分段list中是否有end索引是上一行索引的，如果有，则索引+1
            if (dto.getEnd() == index) {
                dto.setEnd(index + 1);
                flag = true;
            }
        }
        //如果没有，则新增分段
        if (!flag) {
            rowRangeDtoList.add(new RowRangeDto(index, index + 1));
        }
        strategyMap.put(key, rowRangeDtoList);
    }
}
