package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cs.dit.dao.westfood_ContentDao;
import cs.dit.dto.westfood_ContentDto;

public class westfood_InsertService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		westfood_ContentDto dto = new westfood_ContentDto();
		
		dto.setCONTENTNAME(request.getParameter("CONTENTNAME"));
		dto.setCONTENT(request.getParameter("CONTENT"));
		
		westfood_ContentDao dao = new westfood_ContentDao();
		dao.westfood_insert(dto);
	}

}
