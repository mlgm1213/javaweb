package com.example.springboot.service;

import com.example.springboot.entity.User;


public interface UserService {
    public User login(String user_name, String user_pwd);

    public void register(User user);
}
