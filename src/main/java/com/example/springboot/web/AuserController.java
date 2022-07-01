package com.example.springboot.web;

import com.example.springboot.entity.Auser;
import com.example.springboot.mapper.AuserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@Controller
@RequestMapping("/admin")
public class AuserController {

    @Autowired
    private AuserMapper auserMapper;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestBody Auser auser) throws IOException {
        Auser auser1 = auserMapper.login(auser.getAname(), auser.getApwd());

        if(auser1 != null){
            System.out.println(auser1.getAname()+"登录成功");
            return "manageadmin/main";
        }
        else {
            return "manageadmin/login";
        }
    }

}
