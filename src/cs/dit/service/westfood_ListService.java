package cs.dit.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.westfood_ContentDao;
import cs.dit.dto.westfood_ContentDto;

public class westfood_ListService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		westfood_ContentDao dao = new westfood_ContentDao();
		
		ArrayList<westfood_ContentDto> dtos = dao.westfood_list();
		
		request.setAttribute("dtos", dtos);
		
	}

}
