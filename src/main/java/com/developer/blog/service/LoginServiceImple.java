package com.developer.blog.service;

import com.developer.blog.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImple implements LoginService{

    @Autowired
    LoginMapper loginMapper;


    @Override
    public int chkLogin(String email, String pwd) {
        int result = loginMapper.chkLogin(email,pwd);
        return result;
    }
}
