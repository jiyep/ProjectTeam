package cs.dit.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.korfood_ContentDao;
import cs.dit.dto.korfood_ContentDto;

public class korfood_ListService implements ContentService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		korfood_ContentDao dao = new korfood_ContentDao();
		
		ArrayList<korfood_ContentDto> dtos = dao.korfood_list();
		
		request.setAttribute("dtos", dtos);
		
	}

}
