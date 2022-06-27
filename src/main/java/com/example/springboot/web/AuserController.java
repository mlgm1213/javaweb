package com.example.springboot.web;

import com.example.springboot.entity.Auser;
import com.example.springboot.service.AuserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/admin")
public class AuserController {

    @Autowired
    private AuserService auserService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String aname = request.getParameter("aname");
        String apwd = request.getParameter("apwd");
        System.out.println(aname+apwd);
        Auser auser = auserService.login(aname, apwd);
        System.out.println(auser);

        if(auser != null){
            HttpSession session = request.getSession();
            session.setAttribute("auser", auser);
            response.sendRedirect("/manageadmin/main.jsp");
            System.out.println("登录成功");
        }
        else {
            System.out.println("登录失败");
        }
//        modelAndView.addObject("user", user);
//        modelAndView.setViewName("/shop/shoppingIndex");
//        return modelAndView;
    }

}
