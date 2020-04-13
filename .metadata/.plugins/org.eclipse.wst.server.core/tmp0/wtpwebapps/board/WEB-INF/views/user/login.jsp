<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="/resources/css/login.css">
<script type="text/javascript">
function login(){
	var loginId = document.getElementById("IdBox").value;
	var loinPw = document.getElementById("PwBox").value;
	
	console.log(loginId , loinPw)

	
}

function addUser(){
	var addUser = document.getElementById("addUserBtn");
	console.log("회원가입")
}

</script>
</head>
<body>
	<form action="/user/login.do" method="post">
		<div class="login-content">
			<div class="login-content-input">
				<label>사용자명</label><br> 
				<input class="login-input" type="text" id="IdBox" name="id" placeholder="아이디를 입력해주세요"> <br> 
				<label>비밀번호</label><br>
				<input class="login-input" type="password" id="PwBox" name="Passsword" placeholder="비밀번호를 입력해주세요">
			</div>
			<div class="login-content-btn">
				<button onclick="addUser()" type="submit" id="addUserBtn">회원가입</button>
				<button onclick="login()" type="submit" id="loginBtn">로그인</button>
			</div>
		</div>
	</form>
</body>
</html>