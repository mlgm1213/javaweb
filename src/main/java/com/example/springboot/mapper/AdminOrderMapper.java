package com.example.springboot.mapper;

import com.example.springboot.entity.Order;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @version 1.0
 * @author：Sakana
 * @date： 2022-06-16 17:16
 */
@Component
@Mapper
public interface AdminOrderMapper {

    public List<Order> selectOrder();

}
