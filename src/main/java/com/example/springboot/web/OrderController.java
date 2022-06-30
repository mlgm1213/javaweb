package com.example.springboot.web;

import com.example.springboot.entity.Order;
import com.example.springboot.entity.User;
import com.example.springboot.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderMapper orderMapper;
    SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @RequestMapping("/placeOrder")
    public String placeOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Double amount = (Double) session.getAttribute("amount");
        Integer gid = (Integer) session.getAttribute("gid");
        User user = (User) session.getAttribute("user");

        if (user == null){
//            response.sendRedirect("/register/login.html");
            System.out.println("知道");
            return "register/login";
        }
        else{
            Date orderdate = new Date();
            Order order = new Order();
            order.setAmount(amount);
            order.setBusertable_id(user.getId());
            order.setOrderdate(ft.format(orderdate.getTime()));
            order.setGoodstable_id(gid);
            orderMapper.placeOrder(order);
//            response.sendRedirect("/shop/success.html");
            System.out.println("不知道");
            return "shop/success";
        }
    }

    @RequestMapping("/addCart")
    public String addCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer gid = (Integer) session.getAttribute("gid");
        User user = (User) session.getAttribute("user");

        if (user == null){
//            response.sendRedirect("/register/login.html");
            return "register/login";
        }
        else{
            Order order = new Order();
            order.setBusertable_id(user.getId());
            order.setGoodstable_id(gid);
            orderMapper.addCart(order);
//            response.sendRedirect("/shop/success.html");
            return "shop/success";
        }
    }
}
