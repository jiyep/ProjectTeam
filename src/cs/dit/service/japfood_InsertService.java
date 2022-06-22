package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cs.dit.dao.japfood_ContentDao;
import cs.dit.dto.japfood_ContentDto;


public class japfood_InsertService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		japfood_ContentDto dto = new japfood_ContentDto();
		
		dto.setCONTENTNAME(request.getParameter("CONTENTNAME"));
		dto.setCONTENT(request.getParameter("CONTENT"));
		
		japfood_ContentDao dao = new japfood_ContentDao();
		dao.japfood_insert(dto);
	}

}
