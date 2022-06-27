package com.example.springboot.service;


import com.example.springboot.entity.Order;

import java.util.List;

public interface OrderService {

    public void placeOrder(Order order);

    public void addCart(Order order);

    public List<String> findCart(Integer uid);
}