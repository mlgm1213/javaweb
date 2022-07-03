package com.example.springboot.mapper;

import com.example.springboot.entity.Order;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface OrderMapper {

    public void placeOrder(Order order);

    public void addCart(Order order);

    public List<String> findCart(Integer uid);

    public List<Order> findOrder(Integer uid);

    public void confirm(Integer id);

}

