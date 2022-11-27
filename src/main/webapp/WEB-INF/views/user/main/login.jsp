<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <meta name="_csrf" content="${_csrf.token}">
    <meta name="_csrf_header" content="${_csrf.headerName}">
    <title>LOGIN </title>
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
</head>
<body>
<h1>
   로그인페이지
</h1>

    이메일   : <input type="email" id="email"> <br>
    비밀번호 : <input type="password" id="pwd"><br>
    <button type="button" onclick="login_btn()">로그인</button>
</body>
<script>
    // ajax 통신을 위한 csrf 설정
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");

    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });

    function login_btn(){

        let email = $('#email').val();
        let pwd = $('#pwd').val();
        // 빈값 체크
        if (email == ""){
            alert("이메일 을 입력하세요.");
        }else if(pwd == ""){
            alert("비밀번호를 입력하세요.");
        }

        var data = JSON.stringify({
            email  : email,
            pwd    : pwd
        })
        $.ajax({
                url : '/user/loginChk',
                type : 'post',
                dataType : 'json',
                contentType: "application/json; charset=utf-8",
                data : data,
                beforeSend: function(xhr){
                    xhr.setRequestHeader(header, token);
                },
                success:function(data){
                    if (data == 1){
                        // 성공처리
                        alert("로그인 성공!!");
                    }else{
                        // 실패처리
                        alert("로그인 실패!!");
                    }
                },
                error :function(){
                    // 통신실패처리
                }
        })


    }

</script>
</html>
