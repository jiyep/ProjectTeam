package cs.dit.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.japfood_ContentDao;
import cs.dit.dto.japfood_ContentDto;

public class japfood_ListService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		japfood_ContentDao dao = new japfood_ContentDao();
		
		ArrayList<japfood_ContentDto> dtos = dao.japfood_list();
		
		request.setAttribute("dtos", dtos);
		
	}

}
