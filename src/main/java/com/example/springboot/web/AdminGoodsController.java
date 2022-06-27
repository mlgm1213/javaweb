package com.example.springboot.web;

import com.example.springboot.entity.Goods;
import com.example.springboot.service.AdminGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @version 1.0
 * @author：Sakana
 * @date： 2022-06-16 13:15
 */
@Controller
@RequestMapping("/admin")
public class AdminGoodsController {

    @Autowired
    private AdminGoodsService adminGoodsService;
    SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @RequestMapping(value = "/addGoods", method = RequestMethod.POST)
    public void addGoods(Goods goods, HttpServletResponse response) throws IOException {
        Date create_time = new Date();
        goods.setCreate_time(ft.format(create_time.getTime()));
        goods.setSale_num(0);
        System.out.println(goods);

        adminGoodsService.addGoods(goods);
        response.sendRedirect("/admin/selectGoods");
    }

    @RequestMapping("/selectGoods")
    public void selectGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Integer type = Integer.valueOf(request.getParameter("type"));
        List<Goods> goodsList = adminGoodsService.selectGoods();
        System.out.println(goodsList);
        request.setAttribute("goodsList", goodsList);
        request.getRequestDispatcher("/manageadmin/shoplist.jsp").forward(request, response);
    }
}
