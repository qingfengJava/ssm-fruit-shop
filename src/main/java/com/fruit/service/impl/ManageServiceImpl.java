package com.fruit.service.impl;

import com.fruit.base.BaseDao;
import com.fruit.base.BaseServiceImpl;

import com.fruit.dao.ManageMapper;
import com.fruit.po.Manage;
import com.fruit.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ManageServiceImpl") //声明这是一个service
public class ManageServiceImpl extends BaseServiceImpl<Manage> implements ManageService {

    @Autowired
    private ManageMapper manageMapper = null;

    @Override
    public BaseDao<Manage> getBaseDao() {
        return manageMapper;
    }
}
