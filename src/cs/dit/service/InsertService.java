package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.ContentDao;
import cs.dit.dto.ContentDto;

public class InsertService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ContentDto dto = new ContentDto();
		
		dto.setCONTENTNAME(request.getParameter("CONTENTNAME"));
		dto.setCONTENT(request.getParameter("CONTENT"));
		
		ContentDao dao = new ContentDao();
		dao.insert(dto);
	}

}
