package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cs.dit.dao.chifoodContentDao;
import cs.dit.dto.chifoodContentDto;

public class chifood_InsertService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		chifoodContentDto dto = new chifoodContentDto();
		
		dto.setCONTENTNAME(request.getParameter("CONTENTNAME"));
		dto.setCONTENT(request.getParameter("CONTENT"));
		
		chifoodContentDao dao = new chifoodContentDao();
		dao.chifood_insert(dto);
	}

}
