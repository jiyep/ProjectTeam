package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cs.dit.dao.korfood_ContentDao;
import cs.dit.dto.korfood_ContentDto;

public class korfood_InsertService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		korfood_ContentDto dto = new korfood_ContentDto();
		
		dto.setCONTENTNAME(request.getParameter("CONTENTNAME"));
		dto.setCONTENT(request.getParameter("CONTENT"));
		
		korfood_ContentDao dao = new korfood_ContentDao();
		dao.korfood_insert(dto);
	}

}
