package com.example.springboot.exception;

public class AdminLoginNoException extends Exception{
    private static final long serialVersionUID = 1L;
    public AdminLoginNoException(String message){
        super(message);
    }
}
