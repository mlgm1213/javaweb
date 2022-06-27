package com.example.springboot.service;


import com.example.springboot.entity.Order;

import java.util.List;

public interface AdminOrderService {

    public List<Order> selectOrder();

}