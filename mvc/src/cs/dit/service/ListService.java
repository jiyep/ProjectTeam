package cs.dit.service;

import java.io.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.LoginDao;
import cs.dit.dto.LoginDto;

public class ListService implements LoginService {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. DB ����
		LoginDao dao = new LoginDao();
		
		// 2. DB �޼ҵ� ����� ����� ����
		ArrayList<LoginDto> dtos = dao.list();
		
		// 3. Requestscope �� ���ϰ� ����
		request.setAttribute("dtos", dtos);
	}

}