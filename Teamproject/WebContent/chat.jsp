<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page language="java" import="java.net.*, java.io.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd ">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta name="viewport"
	content="user-scalable=no,
initial-scale=1.0,
maximum-scale=1.0,
minimum-scale=1.0,
width=device-width,
height=device-height">
<title>개더링 채팅</title>
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css " />
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>

<script LANGUAGE="Javascript">
	function a() {
		chat_form.method = "post";
		chat_form.action = "chat_send.jsp";
		chat_form.target = "send";
		chat_form.submit();
	}
</script>
</head>
<body>

	<div data-role="page">


		<div data-role="header" data-position="fixed">
			<a href="login.jsp" data-rel="back" data-icon="back">뒤로</a>

			<h1>개더링 채팅</h1>
		</div>



		<div data-role="content">


			<table width="290" border="0">
				<%!class InputThread extends Thread {
		private Socket sock = null;
		private BufferedReader br = null;
		javax.servlet.jsp.JspWriter out = null;

		public InputThread(Socket sock, BufferedReader br, javax.servlet.jsp.JspWriter out) {
			this.sock = sock;
			this.br = br;
			this.out = out;
			try {
				out.println("zzzz");
			} catch (IOException ex) {
			}
		}

		public void run() {
			try {
				String line = null;
				out.println("zzzz");
				while ((line = br.readLine()) != null) {
					out.println(line + "\n");
				}
			} catch (Exception ex) {
			}
		} // InputThread    
			// WinInputThread end
	}%>

				<%
					Socket sock = null;
					BufferedReader br = null;
					PrintWriter pw = null;
					boolean endflag = false;
					try {
						out.println("요긴1?");
						sock = new Socket("203.252.182.96", 10001);
						out.println("요긴2?");
						String id = (String) session.getId();
						session.setAttribute("test", sock);
						pw = new PrintWriter(new OutputStreamWriter(sock.getOutputStream()));
						br = new BufferedReader(new InputStreamReader(sock.getInputStream()));
						BufferedReader keyboard = new BufferedReader(new InputStreamReader(System.in));
						// 사용자의 id를 전송한다. 
						pw.println(session.getAttribute("id"));
						pw.flush();

						InputThread it = new InputThread(sock, br, out);
						it.start();

					} catch (Exception ex) {
						if (!endflag)
							out.println(ex);
					}
					// finally
				%>

			</table>
			<iframe border="0" name="send" scrolling="no" width="0" height="0"></iframe>

		</div>

		<div data-role="footer" data-position="fixed">
			<form id="chat_form">
				<div class="content-primary">
					<ul data-role="listview">
						<li class="ui-body ui-body-b">
							<fieldset class="ui-grid-a">
								<div class="ui-block-a" style="width: 230px">
									<li data-role="fieldcontain"><input type="text"
										name="chatText" id="chatText" value=""
										onKeyPress="if(event.keyCode == 13){a();return false;}" /></li>
								</div>
								<div class="ui-block-b" style="width: 60px">
									<input type="button" value="전송" onclick="a()">
								</div>
							</fieldset>
						</li>
					</ul>
				</div>
			</form>
		</div>




	</div>
</body>
</html>
