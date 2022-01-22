package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.SpHistoryDao;
import com.mulaobao.administration.entity.SpHistory;
import com.mulaobao.administration.service.SpHistoryService;
import org.springframework.stereotype.Service;

/**
 * (SpHistory)表服务实现类
 *
 * @author makejava
 * @since 2021-11-06 16:01:07
 */
@Service("spHistoryService")
public class SpHistoryServiceImpl extends ServiceImpl<SpHistoryDao, SpHistory> implements SpHistoryService {

}

