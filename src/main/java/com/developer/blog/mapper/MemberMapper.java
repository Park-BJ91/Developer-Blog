package com.developer.blog.mapper;

import com.developer.blog.dto.memberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
    //회원가입
    public void memberJoin(memberDTO member);

}
