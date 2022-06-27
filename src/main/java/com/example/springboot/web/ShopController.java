package com.example.springboot.web;

import com.example.springboot.entity.Goods;
import com.example.springboot.entity.User;
import com.example.springboot.service.OrderService;
import com.example.springboot.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    private ShopService shopService;
    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/1", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String test(){
        shopService.test();
        return "ok成功";
    }

    @RequestMapping("/findByType")
    public void findByType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer type = Integer.valueOf(request.getParameter("type"));
        Integer page = Integer.valueOf(request.getParameter("page"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null){
            Integer uid = user.getId();
            List<String> gpictureList = orderService.findCart(uid);
            request.setAttribute("gpictureList", gpictureList);
        }

        List<Goods> goodsList = shopService.findByType(type, page);
        request.setAttribute("goodsList", goodsList);
        request.getRequestDispatcher("/shop/shoppingShow.jsp").forward(request, response);
    }

    @RequestMapping("/toDetail")
    public void toDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String gname = new String(request.getParameter("gname").getBytes("iso-8859-1"), "utf-8");
        Integer gid = Integer.valueOf(request.getParameter("gid"));
        String gpicture = request.getParameter("gpicture");
        Double amount = Double.valueOf(request.getParameter("amount"));

        HttpSession session = request.getSession();
        request.setAttribute("gname", gname.substring(0, 15));
        session.setAttribute("gid", gid);
        request.setAttribute("gpicture", gpicture);
        session.setAttribute("amount", amount);
//        response.sendRedirect("/shop/shoppingDetail.jsp");
        request.getRequestDispatcher("/shop/shoppingDetail.jsp").forward(request, response);
    }
}
