package com.example.springboot.web;

import com.example.springboot.entity.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

    @RequestMapping("/world")
    public String hello(){
        return "hello spring-boot";
    }

//    @RequestMapping("/user")
//    public String getUser(){
//        User tom = new User(1, "tom");
//        System.out.println(tom);
//        return tom.toString();
//    }
}
