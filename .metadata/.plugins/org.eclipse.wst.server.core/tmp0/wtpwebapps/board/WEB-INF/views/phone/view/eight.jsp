<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/phone.css">
<link rel="stylesheet" type="text/css" href="/resources/css/view2.css">

<meta charset="UTF-8">
<title>phone view</title>
</head>
<body class="body">
	<div class="body-main">
		<div class="nav-conteiner">
			<div class="nav-conteiner-item">
				<div class="nav-item">
					<a href="">로그아웃</a>
				</div>
				<div class="nav-item">
					<a href="/phone/list">핸드폰 판매</a>
				</div>
				<div class="nav-item">
					<a href="/contact/list?num=1">문의 하기</a>
				</div>
				<div class="nav-item">
					<a href="">안내문</a>
				</div>
			</div>
		</div>
	</div>
	<div class="side-menu">
		<div class="side-menu-item">
			<a href="/phone/list">전체보기</a>
		</div>
		<div class="side-menu-item">
			<a href="/phone/list">갤럭시 8</a>
		</div>
		<div class="side-menu-item">
			<a href="/phone/list">갤럭시 노트 8</a>
		</div>
		<div class="side-menu-item">
			<a href="/phone/list">갤럭시 9</a>
		</div>
		<div class="side-menu-item">
			<a href="/phone/list">갤럭시 노트 9</a>
		</div>
		<div class="side-menu-item">
			<a href="/phone/list">갤럭시 10</a>
		</div>
		<div class="side-menu-item">
			<a href="/phone/list">갤럭시 노트 10</a>
		</div>
	</div>

	<div class="main-img">
		<div class="main-contant-img">
			<img class="img-item"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRsCPc6gv_hKB4tsGetCA_mP_JsHgN0wwz62autx8ypsduHfmhy&usqp=CAU">
		</div>

		<div class="view-list">
			<div class="view-list-content">
				<h2>기종 :</h2>	
				<span>갤럭시 8</span>
			</div>
			<div class="view-list-content">
				<h2>회사 :</h2>	
				<span>삼성 전자</span>
			</div>
			<div class="view-list-content">
				<h2>가격 :</h2>	
				<span>1,000,000</span>
			</div>
			<div class="view-list-content">
				<h2>주요 기능:</h2>	
				<span>본 상품은 국내배송만 가능합니다</span>
			</div>
			<div class="view-list-content">
				<h2>배송:</h2>	
				<span>16 이전 주문 시 <strong>오늘 출발 예정</strong></span>
			</div>			
			<button class="boxbtn">장바구니</button>
			<button class="byebtn">구매하기</button>
		</div>
	</div>
</body>
</html>