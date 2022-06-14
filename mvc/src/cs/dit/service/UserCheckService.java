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
		
		// 1. 입력폼에서 id, name, pwd를 가져온다.
		String id = request.getParameter("id");
		String pwd = request.getParameter("pw");

		// 2. dao 객체를 생성한다.
		LoginDao dao = new LoginDao();
		
		// 3.
//		if(dao.checkUser(id, pwd) == 1){
//			session.setAttribute("id", id);
//			location.href="main.jsp";
//		}else{
//			System.out.println("비밀번호가 틀렸습니다!!");
//
//		}
	}

}
