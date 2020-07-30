package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");
		String email= request.getParameter("email");

		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id,pw,tel,addr,email);
		int cnt = dao.join(dto);

		if (cnt > 0) {
			System.out.println("회원가입 성공");
			// main.jsp로 이동
			response.sendRedirect("home.jsp");
		} else {
			System.out.println("회원가입 실패");
			// join.jsp로 이동
			response.sendRedirect("home.jsp");
		}
	}

}
