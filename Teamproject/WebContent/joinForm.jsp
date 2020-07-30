<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/join.css?ver=2">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<body>

	<div class="container">
		<div class="join-cover">
			<div class="joinHead">
				<a class="navbar-brand" href="home.jsp"><img
					src="img/mainLogo.png" style="width: 200px; height: auto;"></a>
			</div>
			<form action="JoinService" method="post" accept-charset="utf-8">
				<!-- �α����� ������ Login.jsp���Ϸ� post ������� �̵� -->
				<table>
					<tr class="form-group">
						<td class="joinTag">���̵�</td>
						<td><input type="text" class="form-control" name="id"
							placeholder="ID" required></td>
						<td style="width: 50px;"><input type="button" class="btn-2"
							value="�ߺ�Ȯ��"></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">��й�ȣ</td>
						<td><input type="password" id="pwd1" class="form-control"
							name="pw" placeholder="PASSWORD(���� ���� ȥ��)" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">��й�ȣ Ȯ��</td>
						<td><input type="password" id="pwd2" class="form-control"
							name="pwCheck" placeholder="��й�ȣ Ȯ��" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag"></td>
						<td class="alert alert-success" id="alert-success">��й�ȣ��
							��ġ�մϴ�.</td>
						<td class="alert alert-danger"  id="alert-danger" style="color: #d92742;">��й�ȣ�� ��ġ����
							�ʽ��ϴ�.</td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">��ȭ��ȣ</td>
						<td><input type="text" class="form-control" name="tel"
							placeholder="ex) 010-0000-0000" pattern="(010)-\d{3,4}-\d{4}"
							title="���� : 010-0000-0000" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">�������</td>
						<td><div class="selectBox">
								<select name="year">
									<%
										for (int i = 2020; i >= 1900; i--) {
									%>
									<option value="<%=i%>"><%=i%>��
									</option>
									<%
										}
									%>
								</select>
							</div>
							<div class="selectBox">
								<select name="month">
									<%
										for (int i = 1; i <= 12; i++) {
									%>
									<option value="<%=i%>"><%=i%>��
									</option>
									<%
										}
									%>
								</select>
							</div>
							<div class="selectBox">
								<select name="day">
									<%
										for (int i = 1; i <= 31; i++) {
									%>
									<option value="<%=i%>"><%=i%>��
									</option>
									<%
										}
									%>
								</select>
							</div></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">�ּ�</td>
						<td><input type="text" class="form-control" name="addr"
							placeholder="���θ� �ּ�"></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">�̸���</td>
						<td><input type="text" class="form-control" name="email"
							placeholder="ex) happy@gathering.com"></td>
					</tr>
				</table>
				<div class="button-group">
					<button type="submit" class="btn-1" value="join">ȸ������</button>
				</div>
			</form>
		</div>
		<%@ include file="footer.jsp"%>
		<!-- footer.jsp���� �ҷ����� -->
	</div>
	<script type="text/javascript">
		$(function() {
			$("#alert-success").hide();
			$("#alert-danger").hide();
			$("input").keyup(function() {
				var pwd1 = $("#pwd1").val();
				var pwd2 = $("#pwd2").val();
				if (pwd1 != "" || pwd2 != "") {
					if (pwd1 == pwd2) {
						$("#alert-success").show();
						$("#alert-danger").hide();
						$("#submit").removeAttr("disabled");
					} else {
						$("#alert-success").hide();
						$("#alert-danger").show();
						$("#submit").attr("disabled", "disabled");
					}
				}
			});
		});
	</script>

</body>

</html>