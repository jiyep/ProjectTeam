package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.LoginDao;
import cs.dit.dto.LoginDto;

public class LoginInsertService implements LoginService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		// 1. �Է������� id, name, pwd�� �����´�.
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pw");
		
		// 2. id, name, pwd��  LoginDto�� �����.
		LoginDto dto = new LoginDto(id, name, pwd);

		// 3. dao ��ü�� �����Ѵ�.
		LoginDao dao = new LoginDao();
		
		// 4. insert(LoginDto)�� �����Ѵ�.
		dao.insert(dto);

	}

}