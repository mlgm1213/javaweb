package com.example.springboot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Goods {
    Integer id, goodstype_id, sale_num, gstore;
    String gname, contents, gpicture, create_time;
    Double goprice, grprice;

}
