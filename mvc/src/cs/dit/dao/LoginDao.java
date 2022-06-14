package cs.dit.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.LoginDto;

/**
 * =================================================== ��Ű���� : cs.dit ���ϸ� :
 * LoginDao.java �����̷� : 2022-5-2 / �����ۼ� / ������
 * 
 * ���α׷� ���� : DB���� ��� ���� list() : login ���̺��� ������ ȭ�鿡 ����� �� �ְ� �غ� insert() : ������
 * �Էµ� �����͸� db�� ���� checkUser() : ��ȿ�� ����ڸ� 1, ��ȿ���� ���� ����ڸ� 0
 * =====================================================
 */

public class LoginDao {

	private java.sql.Connection getConnection() throws Exception {
		// DBCP�� ����� DB����
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jpark");
		java.sql.Connection con = (java.sql.Connection) ds.getConnection();
		return con;
	}

	// DB������ �Ͽ� login ���̺��� ���ڵ带 ����
	public ArrayList<LoginDto> list() {
		String sql = "select id, name, pwd from login";
		ArrayList<LoginDto> dtos = new ArrayList<LoginDto>();

		try (java.sql.Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);

		) {
			while (rs.next()) {
				LoginDto dto = new LoginDto();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));

				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}

	// �޼ҵ� �ۼ� �� ����ؾ� �� ��
	// 1.public / private ����
	// 2.��ȯ��(output)
	// 3.�ŰԺ���(input)
	// 3 ���� �����͸� �޾Ƽ� db�� ����
	public void insert(LoginDto dto) {
		String sql = "insert into login(id, name, pwd) values(?, ?, ?)";

		try (java.sql.Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// �޼ҵ� �ۼ� �� ����ؾ� �� ��
	// 1.public / private ����
	// 2.��ȯ��(output)
	// 3.�ŰԺ���(input)
	// 3 ���� �����͸� �޾Ƽ� db�� ����
	public int checkUser(String id, String pwd) throws Exception {
		int check = 0;
		String sql = "select pwd from where id=? and pwd=?";

		try (java.sql.Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next())
					check = 1;
				else
					check = 0;

			} catch (Exception e) {
				e.printStackTrace();

			}

			return check;
		}
	}

}