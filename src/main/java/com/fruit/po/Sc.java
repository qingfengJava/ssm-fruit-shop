package com.fruit.po;

import java.io.Serializable;

/**
 * 收藏表的实体类
 */
public class Sc implements Serializable {

    private Integer id;
    private Integer itemId; //商品id

    private  Item item; //商品对象

    private Integer userId; //收藏者id

    public Sc() {
    }

    public Sc(Integer id, Integer itemId,Integer userId) {
        this.id = id;
        this.itemId = itemId;
        this.userId = userId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Sc{" +
                "id=" + id +
                ", itemId=" + itemId +
                ", item=" + item +
                ", userId=" + userId +
                '}';
    }
}
