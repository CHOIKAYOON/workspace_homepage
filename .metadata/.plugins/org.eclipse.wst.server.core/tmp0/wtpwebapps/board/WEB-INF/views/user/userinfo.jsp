<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/resources/css/userinfo.css">
<meta charset="UTF-8">
<title>UserInfo</title>
</head>
<body class="body">
	<form action="userinfo.do" method="POST">
		<div class="main-user-content">
			<img class="user-img" alt=""
				src="data:image/png;base64,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">
		<div class="user-content">
			<div class ="user-input">
				<label>아아디</label> 
				<input type="text" style="margin-left: 35px;" name="id">
			</div>
			<div class ="user-input">
				<label>비밀번호</label> 
				<input style="margin-left: 22px;" type="password" name="password">
			</div>
			<div class ="user-input">
				<label>재 비밀번호 </label> 
				<input type="password" name="password2">
			</div >
			<div class ="user-input">
				<label>이름</label> 
				<input type="text" style="margin-left: 48px;" name ="name">
			</div>
			<div class ="user-input">
				<label>핸드폰</label> 
				<input type="text" style="margin-left: 35px;" name="phone">
			</div>
			<div class ="user-input">
				<label>이메일</label> 
				<input type="text" style="margin-left: 35px;" name="email">
			</div>
		</div>
		<div class="userinfo-btn">
			<button type="submit">회원가입 하기</button>
		</div>
		</div>
	</form>
</body>
</html>