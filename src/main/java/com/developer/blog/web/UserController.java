package com.developer.blog.web;

import com.developer.blog.dto.LoginDTO;
import com.developer.blog.dto.memberDTO;
import com.developer.blog.service.LoginServiceImple;
import com.developer.blog.service.MemberService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@ComponentScan
@RequestMapping(value = "/user")
@Log4j2
public class UserController {

    @Autowired
    private MemberService memberService;

    @Setter(onMethod_=@Autowired)
    LoginServiceImple loginServiceImple;


    @GetMapping("/login")
    public String index(ModelMap model) throws Exception{
        return "/login.user";
    }

    @PostMapping("/loginChk")
    public int chkLogin(@RequestBody LoginDTO dto){
        int result = loginServiceImple.chkLogin(dto.getEmail(),dto.getPwd());
        return result;
    }

    @GetMapping("/join")
    public void  getJoin() {
        log.info("회원가입 페이지 진입 ");
    }

    @PostMapping("/join.po")
    public String postJoin(memberDTO member) throws Exception{

        log.info("POST JOIN ");

        memberService.memberJoin(member);

        log.info("JOIN Service ");

        return "redirect:/";
    }


}