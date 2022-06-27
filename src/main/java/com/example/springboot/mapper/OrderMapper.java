package com.example.springboot.mapper;

import com.example.springboot.entity.Order;

import java.util.List;

public interface OrderMapper {

    public void placeOrder(Order order);

    public void addCart(Order order);

    public List<String> findCart(Integer uid);
}

