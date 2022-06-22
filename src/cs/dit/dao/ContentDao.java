package cs.dit.dao;

import java.sql.Connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.ContentDto;


public class ContentDao {
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jiyep");
		Connection con = ds.getConnection();
		return con;
	}
	
	public ArrayList<ContentDto> list(){
		String sql = "select * from content";
		ArrayList<ContentDto> dtos = new ArrayList<ContentDto>();
		
		try(
				Connection con = getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery(sql);
			)
			{
				while(rs.next()) {
					ContentDto dto = new ContentDto();
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
	
	public void insert(ContentDto dto) {
		String sql = "insert into content(contentname, content) values(?, ?)";
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