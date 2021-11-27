package com.fruit.dao;

import com.fruit.base.BaseDao;
import com.fruit.po.Message;
import org.springframework.stereotype.Repository;

/**
 * 留言管理
 */
@Repository
public interface MessageMapper extends BaseDao<Message> {
}
