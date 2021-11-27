package com.fruit.service.impl;

import com.fruit.base.BaseDao;
import com.fruit.base.BaseServiceImpl;
import com.fruit.dao.CommentMapper;
import com.fruit.po.Comment;
import com.fruit.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public BaseDao<Comment> getBaseDao() {
        return commentMapper;
    }
}
