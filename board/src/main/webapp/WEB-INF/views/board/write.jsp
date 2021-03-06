<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/phone.css">
<link rel="stylesheet" type="text/css" href="/resources/css/contact.css">
<meta charset="UTF-8">
<title>writer</title>
</head>
<body class="body">
	<div class="body-main">
		<div class="nav-conteiner">
			<div class="nav-conteiner-item">
				<div class="nav-item">
					<a href="/">S A M S U N G</a>
				</div>
				<div class="nav-item">
					<a href="/" id="logoutBtn">Logout</a>
				</div>
				<div class="nav-item">
					<a href="/phone/list">갤럭시5G</a>
				</div>
				<div class="nav-item">
					<a href="/contact/list?num=1">Contact</a>
				</div>
				<div class="nav-item">
					<a href="">Notice</a>
				</div>
			</div>
		</div>
	</div>
	<div class="side-menu">
		<div class="side-menu-item">
			<a href="">Contact</a>
		</div>
		<div class="side-menu-item">
			<a href="">Notice</a>
		</div>
	</div>
	<form method="POST">
		<div class="writer-main">

			<div class="writer-item">
				<label style="margin: 20px;">제목</label> <input
					style="width: 910px; height: 34px;" type="text" name="title" />
			</div>

			<div class="writer-item">
				<label style="margin: 11px;">작성자</label> <input
					style="width: 910px; height: 34px;" type="text" name="writer" />
			</div>

			<div class="writer-item">
				<label style="margin: 20px">내용</label>
				<textarea rows="5" cols="50" name="content"
					style="width: 910px; height: 450px;"></textarea>
			</div>

			<button type="submit">작성</button>
		</div>
	</form>
</body>
</html>