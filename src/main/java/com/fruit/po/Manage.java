package com.fruit.po;

import java.io.Serializable;

/**
 * 管理员数据库表封装
 */
public class Manage implements Serializable {

    private Integer id; //主键
    private String userName; //登录名
    private String password; //密码
    private String realName; //姓名

    public Manage(Integer id, String userName, String password, String realName) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.realName = realName;
    }

    public Manage() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    @Override
    public String toString() {
        return "Manger{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", realName='" + realName + '\'' +
                '}';
    }
}
