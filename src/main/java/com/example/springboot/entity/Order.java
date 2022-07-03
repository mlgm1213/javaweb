package com.example.springboot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {

    private Integer id;
    private Integer busertable_id;
    private Integer goodstable_id;
    private Double amount;
    private String orderdate;
    private String status;
    private Goods goods;

}
