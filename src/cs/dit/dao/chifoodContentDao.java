package cs.dit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.chifoodContentDto;

public class chifoodContentDao {
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jpark");
		Connection con = ds.getConnection();
		return con;
	}
	
	public ArrayList<chifoodContentDto> chifood_list(){
		String sql = "select * from chifood_content";
		ArrayList<chifoodContentDto> dtos = new ArrayList<chifoodContentDto>();
		
		try(
				Connection con = getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery(sql);
				)
		{
			while(rs.next()) {
				chifoodContentDto dto = new chifoodContentDto();
				dto.setCONTENTNAME(rs.getString("contentname"));
				dto.setCONTENT(rs.getString("content"));
				
				dtos.add(dto);
			}
			rs.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
	public void chifood_insert(chifoodContentDto dto) {
		String sql = "insert into chifood_content(contentname, content) values(?, ?)";
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{
			pstmt.setString(1, dto.getCONTENTNAME());
			pstmt.setString(2, dto.getCONTENT());
			
			pstmt.executeUpdate();
			
			pstmt.close();
		}	catch (Exception e) {
			e.printStackTrace();
		}
	}
}