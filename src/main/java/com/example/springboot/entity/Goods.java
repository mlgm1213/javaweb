package com.example.springboot.entity;

public class Goods {
    Integer id, goodstype_id, sale_num, gstore;
    String gname, contents, gpicture, create_time;
    Double goprice, grprice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodstype_id() {
        return goodstype_id;
    }

    public void setGoodstype_id(Integer goodstype_id) {
        this.goodstype_id = goodstype_id;
    }

    public Integer getSale_num() {
        return sale_num;
    }

    public void setSale_num(Integer sale_num) {
        this.sale_num = sale_num;
    }

    public Integer getGstore() {
        return gstore;
    }

    public void setGstore(Integer gstore) {
        this.gstore = gstore;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getGpicture() {
        return gpicture;
    }

    public void setGpicture(String gpicture) {
        this.gpicture = gpicture;
    }

    public Double getGoprice() {
        return goprice;
    }

    public void setGoprice(Double goprice) {
        this.goprice = goprice;
    }

    public Double getGrprice() {
        return grprice;
    }

    public void setGrprice(Double grprice) {
        this.grprice = grprice;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", goodstype_id=" + goodstype_id +
                ", sale_num=" + sale_num +
                ", gstore=" + gstore +
                ", gname='" + gname + '\'' +
                ", contents='" + contents + '\'' +
                ", gpicture='" + gpicture + '\'' +
                ", goprice=" + goprice +
                ", grprice=" + grprice +
                ", create_time=" + create_time +
                '}';
    }
}
