package com.example.springboot.mapper;

import com.example.springboot.entity.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @version 1.0
 * @author：Sakana
 * @date： 2022-06-16 13:12
 */
@Component
@Mapper
public interface AdminGoodsMapper {

    public List<Goods> selectGoods();
    public void addGoods(Goods goods);
}
