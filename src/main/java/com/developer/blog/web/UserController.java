package com.developer.blog.web;

import com.developer.blog.dto.LoginDTO;
import com.developer.blog.service.LoginServiceImple;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@ComponentScan
@RequestMapping(value = "/user")
public class UserController {

    @Setter(onMethod_=@Autowired)
    LoginServiceImple loginServiceImple;


    @GetMapping("/login")
    public String index(ModelMap model) throws Exception{
        return "/main/login.user";
    }

    @PostMapping("/loginChk")
    @ResponseBody
    public int chkLogin(@RequestBody LoginDTO dto){
        int result = loginServiceImple.chkLogin(dto.getEmail(),dto.getPwd());
        return result;
    }
}