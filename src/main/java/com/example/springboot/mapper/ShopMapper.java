package com.example.springboot.mapper;

import com.example.springboot.entity.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface ShopMapper {

    public List<Goods> findByType(Integer type);

}
