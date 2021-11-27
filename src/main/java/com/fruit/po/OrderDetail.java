package com.fruit.po;

import java.io.Serializable;

/**
 * 商品详情实体类
 */
public class OrderDetail implements Serializable {

    private Integer id; //主键
    private Integer itemId; //商品ID
    private Item item;
    private Integer orderId; // 订单ID
    private Integer status; // 0: 未退货   1: 已退货
    private Integer num; //数量
    private String total; //小计

    public OrderDetail() {
    }

    public OrderDetail(Integer id, Integer itemId, Item item, Integer orderId, Integer status, Integer num, String total) {
        this.id = id;
        this.itemId = itemId;
        this.item = item;
        this.orderId = orderId;
        this.status = status;
        this.num = num;
        this.total = total;
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

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", itemId=" + itemId +
                ", item=" + item +
                ", orderId=" + orderId +
                ", status=" + status +
                ", num=" + num +
                ", total=" + total +
                '}';
    }
}
