package cs.dit.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.ContentDao;
import cs.dit.dto.ContentDto;

public class ListService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ContentDao dao = new ContentDao();
		
		ArrayList<ContentDto> dtos = dao.list();
		
		request.setAttribute("dtos", dtos);
		
	}

}
