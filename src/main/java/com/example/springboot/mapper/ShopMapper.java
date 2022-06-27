package com.example.springboot.mapper;

import com.example.springboot.entity.Goods;

import java.util.List;

public interface ShopMapper {

    public void test();
    public List<Goods> findByType(Integer type);

}
