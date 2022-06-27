package com.example.springboot.service;

import com.example.springboot.entity.Auser;

public interface AuserService {
    public Auser login(String aname, String apwd);
}
