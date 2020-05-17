<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/phone.css">
<link rel="stylesheet" type="text/css" href="/resources/css/contact.css">
<meta charset="UTF-8">
<title>contact</title>
</head>
<body class="body">
	<div class="body-main">
		<div class="nav-conteiner">
			<div class="nav-conteiner-item">
					<div class="nav-item">
						<a href="/">S A M S U N G</a>
					</div>
					<div class="nav-item">
						<a href="">Logout</a>
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

	<div class="contact-list">
		<table class="list-table" border="3">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일</th>
					<th>작성자</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="list">
					<tr>
						<td>${list.bno}</td>
						<td>${list.title}</td>
						<td>${list.regDate}</td>
						<td>${list.writer}</td>
						<td>${list.viewCnt}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="pageing-num">
			<!-- 			<button id="backBtn" type="button">
				<a href="/">목록</a>
			</button> -->

			<c:if test="${prev}">
				<span>[ <a href="/contact/list?num=${startPageNum - 1}">
						이전</a> ]
				</span>
			</c:if>

			<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
				<span> <c:if test="${select != num}">
						<a href="/contact/list?num=${num}">${num}</a>
					</c:if> <c:if test="${select == num }">
						<b>${num}</b>
					</c:if>
				</span>
			</c:forEach>

			<c:if test="${next}">
				<span>[<a href="/contact/list?num=${endPageNum + 1}"> 다음</a>
					]
				</span>
			</c:if>
			
		</div>
		<div class="upbtn">
				<button>
					<a href="/board/write">게시물 등록</a>
				</button>
			</div>
	</div>
</body>