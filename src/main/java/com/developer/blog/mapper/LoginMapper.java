package com.developer.blog.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {

    public int chkLogin(String email, String pwd);
}
