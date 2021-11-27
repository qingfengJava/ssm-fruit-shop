package com.fruit.service.impl;

import com.fruit.base.BaseDao;
import com.fruit.base.BaseServiceImpl;
import com.fruit.dao.CarMapper;
import com.fruit.po.Car;
import com.fruit.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl extends BaseServiceImpl<Car> implements CarService {

    @Autowired
    private CarMapper carMapper;

    @Override
    public BaseDao<Car> getBaseDao() {
        return carMapper;
    }
}
