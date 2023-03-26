<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <meta name="_csrf" content="${_csrf.token}">
    <meta name="_csrf_header" content="${_csrf.headerName}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN </title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>

    <!-- 나의 스타일 추가 -->
    <link rel="stylesheet" href="/static/assets/css/login.css">

</head>
<body class="text-center">

<!--  html 전체 영역을 지정하는 container -->
<div id="container">
    <!--  login 폼 영역을 : loginBox -->
    <div id="loginBox">

        <!-- 로그인 페이지 타이틀 -->
        <div id="loginBoxTitle">BLOG Login</div>
        <!-- 아이디, 비번, 버튼 박스 -->
        <div id="inputBox">
            <div class="input-form-box"><span>Email </span><input type="text" name="uid" class="form-control"></div>
            <div class="input-form-box"><span>비밀번호 </span><input type="password" name="upw" class="form-control"></div>
            <div class="button-login-box" >
                <button type="button" class="btn btn-primary btn-xs" style="width:100%">로그인</button>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
<script>

</script>
</html>
