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
		<table class="list-table" border="4">
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
	
	<div class="main-footer">
				<footer>
					<div class="gb-footer-2020__middle">
						<div class="gb-footer-2020__inner">
							<div class="gb-footer-2020__info-text">
								<div class="gb-footer-2020__info-copy">
									<p>Copyright&nbsp;©&nbsp;1995-2020&nbsp;SAMSUNG&nbsp;All&nbsp;Rights&nbsp;Reserved.</p>
								</div>
								<div class="gb-footer-2020__info-legal">
									<p>
										경기도 수원시 영통구 삼성로 129 (매탄동) 삼성전자주식회사 대표이사&nbsp;김기남 사업자등록번호
										124-81-00998 <a title="사업자 정보확인 새 창"
											href="//www.ftc.go.kr/www/bizCommView.do?key=232&amp;apv_perm_no=2000374001130200515&amp;pageUnit=10&amp;searchCnd=wrkr_no&amp;searchKrwd=1248100998&amp;pageIndex=1"
											target="_blank"><u>사업자 정보확인</u></a> 통신판매업 신고: 2000-경기수원-0515
										호스팅서비스사업자 : 삼성에스디에스(주)
									</p>
									<p>대표번호: 02-2255-0114 팩스: 02-2255-0117 제품/서비스/멤버십:
										1588-3366 구매문의: 1588-6084</p>
									<p>
										삼성전자주식회사는 통신판매중개자로서 통신판매의 당사자가 아니며, 개별 판매자가 등록한 거래정보 및 거래에 대하여
										책임을 지지 않습니다. </br>
										 <i>본 사이트의 콘텐츠는 저작권법의 보호를 받는바, 무단 전재, 복사, 배포 등을 금합니다.</i>
									</p>
								</div>
							</div>
						</div>
				</footer>
			</div>
</body>