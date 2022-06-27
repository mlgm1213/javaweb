package com.example.springboot.web;

import com.example.springboot.entity.User;
import com.example.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String user_name = request.getParameter("user_name");
        String user_pwd = request.getParameter("user_pwd");
        System.out.println(user_name+" "+user_pwd);
        User user = userService.login(user_name, user_pwd);
//        System.out.println(user);

        if (user != null){
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("/shop/shoppingIndex.jsp");
            System.out.println(user_name+"登录成功");
        }
        else{
            System.out.println("登录失败");
        }
    }

    @RequestMapping(value = "/exit")
    public void exit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("/shop/shoppingIndex.jsp");
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String userPwd = request.getParameter("userPwd");
        String realName = request.getParameter("realName");
        String sex = request.getParameter("sex");
        String mobile = request.getParameter("mobile");
        String company = request.getParameter("company");
        String province = request.getParameter("province");
        String hobby = request.getParameter("hobby");

        User user = new User();
        user.setUser_name(userName);
        user.setEmail(email);
        user.setUser_pwd(userPwd);
        user.setReal_name(realName);
        user.setSex(sex);
        user.setMobile(mobile);
        user.setCompany(company);
        user.setProvince(province);
        user.setHobby(hobby);
        System.out.println(user);
        userService.register(user);

        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        response.sendRedirect("/shop/shoppingIndex.jsp");
    }
}
