package com.fruit.service.impl;

import com.fruit.base.BaseDao;
import com.fruit.base.BaseServiceImpl;
import com.fruit.dao.ItemCategoryMapper;
import com.fruit.po.ItemCategory;
import com.fruit.service.ItemCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ItemCategoryServiceImpl") //声明这是一个service
public class ItemCategoryServiceImpl extends BaseServiceImpl<ItemCategory> implements ItemCategoryService {

    @Autowired
    private ItemCategoryMapper itemCategoryMapper;


    @Override
    public BaseDao<ItemCategory> getBaseDao() {
        return itemCategoryMapper;
    }

}
