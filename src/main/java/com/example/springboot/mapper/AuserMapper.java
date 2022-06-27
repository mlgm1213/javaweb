package com.example.springboot.mapper;

import com.example.springboot.entity.Auser;
import org.apache.ibatis.annotations.Param;


public interface AuserMapper {
    public Auser login(@Param("aname") String aname, @Param("apwd") String apwd);
}
