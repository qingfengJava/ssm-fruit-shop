package com.fruit.controller;

import com.fruit.base.BaseController;
import com.fruit.po.Comment;
import com.fruit.service.CommentService;
import com.fruit.utils.Consts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * 评论
 */
@Controller
@RequestMapping("/comment")
public class CommentController extends BaseController {

    @Autowired
    private CommentService commentService;

    /**
     * 添加执行
     */
    @RequestMapping("/exAdd")
    public String exAdd(Comment comment, HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if (attribute == null){
            return "redirect: /login/toLogin";
        }
        Integer useeId = Integer.valueOf(attribute.toString());
        comment.setAddTime(new Date());
        comment.setUserId(useeId);
        commentService.insert(comment);
        return "redirect: /itemOrder/my.action";
    }
}
