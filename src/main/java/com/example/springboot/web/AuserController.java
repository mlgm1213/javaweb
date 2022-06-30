package com.example.springboot.web;

import com.example.springboot.entity.Auser;
import com.example.springboot.mapper.AuserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@RestController
@RequestMapping("/admin")
public class AuserController {

    @Autowired
    private AuserMapper auserMapper;

    @PostMapping(value = "/login")
    public String login(@RequestBody Auser auser) throws IOException {
        Auser auser1 = auserMapper.login(auser.getAname(), auser.getApwd());
        System.out.println(auser1);

        if(auser1 != null){
            return "登录成功";
        }
        else {
            return "登录失败";
        }
    }

}
