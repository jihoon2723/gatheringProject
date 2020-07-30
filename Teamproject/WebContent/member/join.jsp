<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
<%@ include file="../head.jsp" %>
<style>
h, td, tr, input, select, form {
	font-family: 고딕;
	font-size: 1em;
	border-radius: 5px;
}

table {
	border: 2px solid black;
	border-spacing: 15px;
}
</style>
<br>
<br>
<br>
<br>
<br>
<body>
	<center>
		<h1>회원가입</h1>

		<table>
			<form action="join.do" method="post" name="frm">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="20">*</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid" size="20" id="userid">*
					<input type="hidden" name="reid" size="20"> <input
					type="button" value="중복 체크" onclick="idCheck.do"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" />*</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" />*&nbsp;비밀번호를 다시입력해주세요.</td>
			</tr>

			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" size="20"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" size="20"></td>
			</tr>

			<tr>
				<td>등급</td>
				<td><input type="radio" name="admin" value="0"
					checked="checked"> 일반회원 <input type="radio" name="admin"
					value="1"> 관리자</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button" value="확인"
					onclick="location.href='../surveyForm.jsp'">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="취소">
				</td>
			</tr>
			<tr>
				<td colspan="2">${message }</td>
			</tr>
			</form>
		</table>
	</center>
</body>
</html>