package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.LoginDao;
import cs.dit.dto.LoginDto;

public class UserUpdateService implements LoginService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id"); 
		String name = request.getParameter("name"); 
		String pwd = request.getParameter("pw"); 

		LoginDto dto = new LoginDto(id, name, pwd);
		new LoginDao().update(dto);

	}

}
