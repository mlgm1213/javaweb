package com.example.springboot.service;

import com.example.springboot.entity.Goods;

import java.util.List;

public interface ShopService {

    public void test();
    public List<Goods> findByType(Integer type, Integer page);
}
