<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="_csrf" content="${_csrf.token}">
    <meta name="_csrf_header" content="${_csrf.headerName}">
    <title>JOIN PAGE</title>
    <link rel="stylesheet" href="/static/assets/css/join.css">
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>

</head>
<body>

<div class="wrapper">
    <form id="join_form" method="post">
        <div class="wrap">
            <div class="subjecet">
                <span>회원가입</span>
            </div>

            <div class="mail_wrap">
                <div class="mail_name">이메일</div>
                <div class="mail_input_box">
                    <input class="mail_input" name="email">
                </div>
                <div class="mail_check_wrap">
                    <div class="mail_check_input_box">
                        <input class="mail_check_input">
                    </div>
                    <div class="mail_check_button">
                        <span>인증번호 전송</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="pw_wrap">
                <div class="pw_name">비밀번호</div>
                <div class="pw_input_box">
                    <input class="pw_input" name="pwd">
                </div>
            </div>
            <div class="pwck_wrap">
                <div class="pwck_name">비밀번호 확인</div>
                <div class="pwck_input_box">
                    <input class="pwck_input">
                </div>
            </div>


            <div class="address_wrap">
                <div class="address_name">주소</div>
                <div class="address_input_1_wrap">
                    <div class="address_input_1_box">
                        <input class="address_input_1" name="addr">
                    </div>
                    <div class="address_button">
                        <span>주소 찾기</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class ="address_input_2_wrap">
                    <div class="address_input_2_box">
                        <input class="address_input_2">
                    </div>
                </div>
                <div class ="address_input_3_wrap">
                    <div class="address_input_3_box">
                        <input class="address_input_3">
                    </div>
                </div>
            </div>
            <div class="join_button_wrap">
                <input type="button" class="join_button" value="가입하기">
            </div>
        </div>
    </form>
</div>

<script>





$(document).ready(function(){
    //회원가입 버튼(회원가입 기능 작동)
    $(".join_button").click(function(){
        $("#join_form").attr("action","/user/join.po");
        $("#join_form").submit();
    });
});


</script>
</body>
</html>
