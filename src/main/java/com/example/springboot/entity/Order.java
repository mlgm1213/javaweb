package com.example.springboot.entity;

/**
 * @version 1.0
 * @author：Sakana
 * @date： 2022-06-16 17:02
 */

public class Order {

    private Integer id;
    private Integer busertable_id;
    private Integer goodstable_id;
    private Double amount;
    private String orderdate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBusertable_id() {
        return busertable_id;
    }

    public void setBusertable_id(Integer busertable_id) {
        this.busertable_id = busertable_id;
    }

    public Integer getGoodstable_id() {
        return goodstable_id;
    }

    public void setGoodstable_id(Integer goodstable_id) {
        this.goodstable_id = goodstable_id;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", busertable_id=" + busertable_id +
                ", goodstable_id=" + goodstable_id +
                ", amount=" + amount +
                ", orderdate='" + orderdate + '\'' +
                '}';
    }
}
