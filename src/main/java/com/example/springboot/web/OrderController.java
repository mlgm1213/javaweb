package com.example.springboot.web;

import com.example.springboot.entity.Order;
import com.example.springboot.entity.User;
import com.example.springboot.service.OrderService;
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
    private OrderService orderService;
    SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @RequestMapping("/placeOrder")
    public void placeOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Double amount = (Double) session.getAttribute("amount");
        Integer gid = (Integer) session.getAttribute("gid");
        User user = (User) session.getAttribute("user");

        if (user == null){
            response.sendRedirect("/register/login.jsp");
        }
        else{
            Date orderdate = new Date();
            Order order = new Order();
            order.setAmount(amount);
            order.setBusertable_id(user.getId());
            order.setOrderdate(ft.format(orderdate.getTime()));
            order.setGoodstable_id(gid);
            orderService.placeOrder(order);
            response.sendRedirect("/shop/success.jsp");
        }
    }

    @RequestMapping("/addCart")
    public void addCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer gid = (Integer) session.getAttribute("gid");
        User user = (User) session.getAttribute("user");

        if (user == null){
            response.sendRedirect("/register/login.jsp");
        }
        else{
            Order order = new Order();
            order.setBusertable_id(user.getId());
            order.setGoodstable_id(gid);
            orderService.addCart(order);
            response.sendRedirect("/shop/success.jsp");
        }
    }
}
