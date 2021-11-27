package com.fruit.service.impl;

import com.fruit.base.BaseDao;
import com.fruit.base.BaseService;
import com.fruit.base.BaseServiceImpl;
import com.fruit.dao.OrderDetailMapper;
import com.fruit.po.OrderDetail;
import com.fruit.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailServiceImpl extends BaseServiceImpl<OrderDetail> implements OrderDetailService {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Override
    public BaseDao<OrderDetail> getBaseDao() {
        return orderDetailMapper;
    }
}
