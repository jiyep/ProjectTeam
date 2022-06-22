package cs.dit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.LoginDto;

/**
 * =================================================== 패키지명 : cs.dit 파일명 :
 * LoginDao.java 변경이력 : 2022-5-2 / 최초작성 / 박지예
 * 
 * 프로그램 설명 : DB연동 기능 구현 list() : login 테이블의 내용을 화면에 출력할 수 있게 준비 insert() : 폼으로
 * 입력된 데이터를 db에 저장 checkUser() : 유효한 사용자면 1, 유효하지 않은 사용자면 0
 * =====================================================
 */

public class LoginDao {

	private java.sql.Connection getConnection() throws Exception {
		// DBCP를 사용한 DB연동
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jpark");
		java.sql.Connection con = (java.sql.Connection) ds.getConnection();
		return con;
	}

	// DB연동을 하여 login 테이블에서 레코드를 추출
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

	// 회원가입
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

	// 유효회원확인
	public int loginCheck(String id, String pwd) {
		String sql = "SELECT pwd FROM login WHERE id =? and pwd = ?";
		int flag = 0;		
		try (	Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				)
		{	pstmt.setString(1, id);
			pstmt.setString(2, pwd);
		
			try(ResultSet rs = pstmt.executeQuery();)
			{
				if(rs.next()) {
					flag = 1;					
				}else {
					flag = 0;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	//회원정보수정
	public void update(LoginDto dto) {
		String sql = "UPDATE login SET name = ?, pwd = ? WHERE id =?";
		
		try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{
			pstmt.setString(1,  dto.getName());
			pstmt.setString(2,  dto.getPwd());
			pstmt.setString(3,  dto.getId());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	//회원탈퇴
	public void delete(String id) {
		String sql = "DELETE FROM login WHERE id =?";
		
		try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
}
