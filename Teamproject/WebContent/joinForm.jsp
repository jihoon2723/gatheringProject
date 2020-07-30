<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/join.css?ver=1">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<body>

	<div class="container">
		<div class="join-cover">
			<div class="joinHead">
				<a class="navbar-brand" href="home.jsp"><img
					src="img/mainLogo.png" style="width: 200px; height: auto;"></a>
			</div>
			<form action="JoinService" method="post" accept-charset="utf-8">
				<!-- 로그인을 누르면 Login.jsp파일로 post 방식으로 이동 -->
				<table>
					<tr class="form-group">
						<td class="joinTag">아이디</td>
						<td><input type="text" class="form-control" name="id"
							placeholder="ID"></td>
						<td style="width: 50px;"><input type="button" class="btn-2"
							value="중복확인"></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">비밀번호</td>
						<td><input type="password" class="form-control" name="pw"
							placeholder="PASSWORD(영문 숫자 혼합)"></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">비밀번호 확인</td>
						<td><input type="password" class="form-control"
							name="pwCheck" placeholder="비밀번호 확인"></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">전화번호</td>
						<td><input type="text" class="form-control" name="tel"
							placeholder="ex) 010-0000-0000" pattern="(010)-\d{3,4}-\d{4}"
							title="형식 : 010-0000-0000"></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">생년월일</td>
						<td><div class="selectBox"><select name="year">
								<%
									for (int i = 2020; i >= 1900; i--) {
								%>
								<option value="<%=i%>"><%=i%>년
								</option>
								<%
									}
								%>
						</select> </div><div class="selectBox"><select name="month">
								<%
									for (int i = 1; i <= 12; i++) {
								%>
								<option value="<%=i%>"><%=i%>월
								</option>
								<%
									}
								%>
						</select> </div><div class="selectBox"><select name="day">
								<%
									for (int i = 1; i <= 31; i++) {
								%>
								<option value="<%=i%>"><%=i%>일
								</option>
								<%
									}
								%>
						</select></div></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">주소</td>
						<td><input type="text" class="form-control" name="addr"
							placeholder="도로명 주소"></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">이메일</td>
						<td><input type="text" class="form-control" name="email"
							placeholder="ex) happy@gathering.com"></td>
					</tr>
				</table>
				<div class="button-group">
					<button type="submit" class="btn-1" value="join">회원가입</button>
				</div>
			</form>
		</div>
		<%@ include file="footer.jsp"%>
		<!-- footer.jsp파일 불러오기 -->
	</div>
</body>

</html>