package com.example.springboot.web;


import com.example.springboot.entity.Order;
import com.example.springboot.service.AdminOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/adminOrder")
public class AdminOrderController{
    @Autowired
    private AdminOrderService adminOrderService;

    @RequestMapping("/selectOrder")
    public void selectGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Order> orderList = adminOrderService.selectOrder();
        System.out.println(orderList);
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("/manageadmin/orderlist.jsp").forward(request, response);
    }

//    @RequestMapping("/orderInfo")
//    public String orderInfo(Model model) {
//        return adminOrderService.orderInfo(model);
//    }
//    @RequestMapping("/deleteorderManager")
//    public String deleteorderManager(Integer id) {
//        return adminOrderService.deleteorderManager(id);
//    }
}
