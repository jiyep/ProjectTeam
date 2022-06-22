package cs.dit.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.korfood_ContentDto;

public class korfood_ContentDao {
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jpark");
		Connection con = ds.getConnection();
		return con;
	}
	
	public ArrayList<korfood_ContentDto> korfood_list(){
		String sql = "select * from korfood_content";
		ArrayList<korfood_ContentDto> dtos = new ArrayList<korfood_ContentDto>();
		
		try(
				Connection con = getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery(sql);
				)
		{
			while(rs.next()) {
				korfood_ContentDto dto = new korfood_ContentDto();
				dto.setCONTENTNAME(rs.getString("CONTENTNAME"));
				dto.setCONTENT(rs.getString("CONTENT"));
				
				dtos.add(dto);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
	public void korfood_insert(korfood_ContentDto dto) {
		String sql = "insert into korfood_content(CONTENTNAME, CONTENT) values(?, ?)";
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
