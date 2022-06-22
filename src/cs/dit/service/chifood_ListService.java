package cs.dit.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.chifoodContentDao;
import cs.dit.dto.chifoodContentDto;

public class chifood_ListService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		chifoodContentDao dao = new chifoodContentDao();
		
		ArrayList<chifoodContentDto> dtos = dao.chifood_list();
		
		request.setAttribute("dtos", dtos);
		
	}

}
