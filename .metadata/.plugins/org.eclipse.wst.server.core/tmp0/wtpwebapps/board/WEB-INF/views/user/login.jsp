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
</head>
<body class="body-main">
	<form action="/user/login.do" method="post">
		<div class="login-content">
			<h3>삼성 계정</h3>
			<div class="login-content-input">
				<label>이메일 주소 또는 전화번호</label><br> 
				<input class="login-input" type="text" id="IdBox" name="id" style=""> <br> 
					
				<input class="login-input" type="password" id="PwBox"
					name="Passsword" placeholder="비밀번호">
			</div>
			<div class="login-pw-fine">
				<a href="">ID 찾기 및 비밀번호 재설정</a>
			</div>
			<div class="login-content-btn">
				<button id="addUserBtn">
					<a href="/user/userinfo">Join Us</a>
				</button>
				<button onclick="login()" type="submit" id="loginBtn">Login</button>
			</div>
			
			<div class="google-btn" data-ng-show="vm.continueWith3rdParty == 'GG'">
			<button class="iam-button iam-primary" id="googleSignInButton" data-ng-click="googleSignIn()" type="button">
			<span aria-hidden="true"></span>Google 계정으로 사용</button>
			</div>
		</div>
	</form>
</body>
</html>