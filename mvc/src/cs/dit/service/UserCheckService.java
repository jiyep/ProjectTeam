package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.LoginDao;
import cs.dit.dto.LoginDto;


public class UserCheckService implements LoginService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		// 1. �Է������� id, name, pwd�� �����´�.
		String id = request.getParameter("id");
		String pwd = request.getParameter("pw");

		// 2. dao ��ü�� �����Ѵ�.
		LoginDao dao = new LoginDao();
		
		// 3.
//		if(dao.checkUser(id, pwd) == 1){
//			session.setAttribute("id", id);
//			location.href="main.jsp";
//		}else{
//			System.out.println("��й�ȣ�� Ʋ�Ƚ��ϴ�!!");
//
//		}
	}

}
