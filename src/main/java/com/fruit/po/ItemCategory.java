package com.fruit.po;

import java.io.Serializable;

/**
 * 类目表封装
 */
public class ItemCategory implements Serializable {

    private Integer id; //主键
    private String name; // 类目名称
    private Integer pid; // 父id
    private Integer isDelete; //是否已删除


    public ItemCategory(Integer id, String name, Integer pid, Integer isDelete) {
        this.id = id;
        this.name = name;
        this.pid = pid;
        this.isDelete = isDelete;
    }

    public ItemCategory() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    @Override
    public String toString() {
        return "ItemCategory{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pid=" + pid +
                ", isDetele=" + isDelete +
                '}';
    }
}
