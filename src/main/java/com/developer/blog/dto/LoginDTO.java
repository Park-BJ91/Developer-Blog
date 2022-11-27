package com.developer.blog.dto;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class LoginDTO {
    private String email;
    private String pwd;
}
