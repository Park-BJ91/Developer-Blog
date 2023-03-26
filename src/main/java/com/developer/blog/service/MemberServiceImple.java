package com.developer.blog.service;


import com.developer.blog.dto.memberDTO;
import com.developer.blog.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImple implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public void memberJoin(memberDTO member) throws Exception {

        memberMapper.memberJoin(member);

    }
}
