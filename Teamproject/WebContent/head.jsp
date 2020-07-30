<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@page import="com.model.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width , initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/headStyle.css?ver=3">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script defer src="script/head.js">
	
</script>
<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
%>
<!-- 웹 화면 -->
<div id="headCover">
	<!-- <a href="home.jsp"><img  class="logoImg" alt="로고" src="img/mainLogo.png"> </a>-->
	<ul class="listBox">
		<%
			if (info == null) {
		%>
		<li class="headlist"><a href="loginForm.jsp">로그인</a></li>
		<li class="headlist"><a href="joinForm.jsp">회원가입</a></li>
		<%
			} else {
		%>
		<li class="headlist"><a href="#">로그아웃</a></li>
		<li class="headlist"><a href="#">마이페이지</a></li>
		<%
			}
		%>
	</ul>
</div>

<!-- 모바일 화면 -->
<div id="headCover-m">
	<ul class="barBox">
		<li class="head-item"><a href="#" class="head-link"> <svg
					aria-hidden="true" focusable="false" data-prefix="fas"
					data-icon="bars" role="img" xmlns="http://www.w3.org/2000/svg"
					viewBox="0 0 448 512" class="svg-inline--fa fa-bars fa-w-14">
            		<g class="fa-group">
              	<path fill="currentColor"
						d="M16 132h416c8.837 0 16-7.163 16-16V76c0-8.837-7.163-16-16-16H16C7.163 60 0 67.163 0 76v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"
						class="fa-secondary-bar"></path>
            	</g>
          		</svg>
		</a></li>
	</ul>
</div>
</head>
</html>