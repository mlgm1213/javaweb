package com.example.springboot.web;

import com.example.springboot.entity.Goods;
import com.example.springboot.entity.User;
import com.example.springboot.mapper.OrderMapper;
import com.example.springboot.mapper.ShopMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    private ShopMapper shopMapper;
    @Autowired
    private OrderMapper orderMapper;

    @RequestMapping("/findByType")
    public String findByType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer type = Integer.valueOf(request.getParameter("type"));
        Integer page = Integer.valueOf(request.getParameter("page"));
        System.out.println(type+page);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null){
            Integer uid = user.getId();
            List<String> gpictureList = orderMapper.findCart(uid);
            request.setAttribute("gpictureList", gpictureList);
        }

        List<Goods> goodsList = shopMapper.findByType(type);
        request.setAttribute("goodsList", goodsList);
        return "shop/shoppingShow";
//        request.setAttribute("goodsList", goodsList);
//        request.getRequestDispatcher("/shop/shoppingShow.html").forward(request, response);
    }

    @GetMapping("/toDetail")
    public String toDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String gname = request.getParameter("gname");
        Integer gid = Integer.valueOf(request.getParameter("gid"));
        String gpicture = request.getParameter("gpicture");
        Double amount = Double.valueOf(request.getParameter("amount"));

        HttpSession session = request.getSession();
        request.setAttribute("gname", gname.substring(0, 15));
        session.setAttribute("gid", gid);
        request.setAttribute("gpicture", gpicture);
        session.setAttribute("amount", amount);
//        response.sendRedirect("/shop/shoppingDetail.html");
        return "shop/shoppingDetail";
//        request.getRequestDispatcher("/shop/shoppingDetail.html").forward(request, response);
    }
}
