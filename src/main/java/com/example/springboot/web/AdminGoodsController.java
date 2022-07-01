package com.example.springboot.web;

import com.example.springboot.entity.Goods;
import com.example.springboot.mapper.AdminGoodsMapper;
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

@Controller
@RequestMapping("/admin")
public class AdminGoodsController {

    @Autowired
    private AdminGoodsMapper adminGoodsMapper;

    SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @RequestMapping(value = "/addGoods", method = RequestMethod.POST)
    public String addGoods(Goods goods, HttpServletResponse response) throws IOException {
        Date create_time = new Date();
        goods.setCreate_time(ft.format(create_time.getTime()));
        goods.setSale_num(0);

        System.out.println(goods);
        adminGoodsMapper.addGoods(goods);

        return "manageadmin/addgoods";
//        response.sendRedirect("/admin/selectGoods");
    }

    @RequestMapping("/selectGoods")
    public String selectGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Integer type = Integer.valueOf(request.getParameter("type"));
        List<Goods> goodsList = adminGoodsMapper.selectGoods();
        System.out.println(goodsList);
        request.setAttribute("goodsList", goodsList);

        return "manageadmin/shoplist";
//        request.getRequestDispatcher("/manageadmin/shoplist.jsp").forward(request, response);
    }
}
