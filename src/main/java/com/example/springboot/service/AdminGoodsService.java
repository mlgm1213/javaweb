package com.example.springboot.service;

import com.example.springboot.entity.Goods;

import java.util.List;

public interface AdminGoodsService {

//    public String addOrUpdateGoods(Goods goods, HttpServletRequest request, String updateAct);
//    public String selectGoods(Model model, Integer pageCur, String act);
//    public String selectAGoods(Model model, Integer id, String act);
//    public String deleteGoods(Integer[] ids, Model model);
//    public String deleteAGoods(Integer id, Model model);

    public void addGoods(Goods goods);
    public List<Goods> selectGoods();
//    public List<Goods> findAll();

//    String addOrUpdateGoods(Goods goods, HttpServletRequest request, String updateAct);
}
