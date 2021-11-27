package com.fruit.service.impl;

import com.fruit.base.BaseDao;
import com.fruit.base.BaseServiceImpl;
import com.fruit.dao.UserMapper;
import com.fruit.po.User;
import com.fruit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public BaseDao<User> getBaseDao() {
        return userMapper;
    }
}
