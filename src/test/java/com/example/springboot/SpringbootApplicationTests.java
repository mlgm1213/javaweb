package com.example.springboot;

import com.example.springboot.entity.User;
import com.example.springboot.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringbootApplicationTests {

    @Autowired
    UserMapper userMapper;

    @Test
    public void login(){
        User louise = userMapper.login("louise", "123456");
        System.out.println(louise);
    }
}
