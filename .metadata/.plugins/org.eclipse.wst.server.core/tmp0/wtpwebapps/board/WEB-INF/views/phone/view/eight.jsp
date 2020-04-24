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
		<div class="main-time">
			<p>${serverTime}</p>
		</div>
		<div class="main-conteiner-title">
			<a href="/"> <img alt="" class="main-title-img"
				src="data:image/png;base64,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">
			</a>
		</div>


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