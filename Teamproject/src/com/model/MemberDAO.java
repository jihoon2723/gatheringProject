package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private PreparedStatement psmt = null;
	private Connection conn = null;
	private ResultSet rs;

	private void getConnction() {
		try {
			// 1. ����̹� �����ε�(��� DBMS�� ����� ������ ����̹� Ȱ�� ��� �ۼ�)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.���� DataBase ���� ����(Connection ȣ��)
			// Driver�� ���ؼ� Connection ��ü�� �����´�
			// Connection ��ü�� �����ö��� DB�� �ּ�, ���̵�, ��й�ȣ�� �Է��ؾ� �Ѵ�.
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
		// 4. ������ �����ش�(������ �������� ���� �������� �ݾ��ش�)
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		getConnction();
		try {
			String sql = "SELECT * FROM GATHERING_MEMBER WHERE ID=? AND PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			if (rs.next()) {
				// �α��� �����ÿ��� ���ü� ����
				String id = rs.getString(1);
				String pw = rs.getString(2);
				info = new MemberDTO(id, pw);
				System.out.println("�α��� ����");
			} else {
				System.out.println("�α��� ����");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return info;
	}

	public int join(MemberDTO dto) {
		int cnt = 0;
		getConnction();

		try {
			String sql = "INSERT INTO GATHERING_MEMBER VALUES(?,?,?,?,?)";// �ٽ� ��
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getTel());
			psmt.setString(4, dto.getAddr());
			psmt.setString(5, dto.getEmail());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

}
