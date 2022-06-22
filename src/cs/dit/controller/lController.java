package cs.dit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs.dit.dao.*;
import cs.dit.dto.*;
import cs.dit.service.*;

@WebServlet("*.do")
public class lController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));
		String page = null;

		if(com != null && com.trim().equals("insertForm")) {
			page = "insert.jsp";

		}else if(com != null && com.trim().equals("insert")) {
			LoginInsertService service = new LoginInsertService();
			service.execute(request, response);
			
			page = "login.jsp";

		}else if(com != null && com.trim().equals("main")) {
			page = "main.jsp";

		}else if(com != null && com.trim().equals("delete")) {	
			DeleteService service = new DeleteService();
			service.execute(request, response);
			page = "main.jsp";
		}else if(com != null && com.trim().equals("userCheck")) {
			request.setCharacterEncoding("utf-8");

			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			
			LoginDao dao = new LoginDao();
			int i = dao.loginCheck(id, pwd);
			
			if (i == 1) {
				request.setAttribute("id", id);
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				page = "main.jsp";
			} else {
				page = "insert.jsp";
			}
		}else if(com != null && com.trim().equals("update")) {
			UserUpdateService service = new UserUpdateService();
			service.execute(request, response);
			
			page = "myInfo.jsp";
		}else if(com != null && com.trim().equals("logout")) {
			HttpSession session = request.getSession();
			session.invalidate();
			
			page = "login.jsp";
		}
		//---korfood----
		else if(com != null && com.trim().equals("makeContent_kor")) {
			ContentService service = new korfood_InsertService();
			service.execute(request, response);
			
			page = "/WEB-INF/view/makeContent_kor.jsp";
		}
		else if(com != null && com.trim().contentEquals("korfood_insert")) {
			korfood_InsertService service = new korfood_InsertService();
			service.execute(request, response);
			
			page = "korfood_List.jsp";
		}
		//---korfood----
		//---japfood----
		else if(com != null && com.trim().equals("makeContent_jap")) {
			ContentService service = new japfood_InsertService();
			service.execute(request, response);
			
			page = "/WEB-INF/view/makeContent_jap.jsp";
		}
		else if(com != null && com.trim().contentEquals("japfood_insert")) {
			japfood_InsertService service = new japfood_InsertService();
			service.execute(request, response);
			
			page = "japfood_List.jsp";
		}
		//---japfood----
		//---chifood----
		else if(com != null && com.trim().equals("makeContent_chi")) {
			ContentService service = new chifood_InsertService();
			service.execute(request, response);
			
			page = "/WEB-INF/view/makeContent_chi.jsp";
		}
		else if(com != null && com.trim().contentEquals("chifood_insert")) {
			chifood_InsertService service = new chifood_InsertService();
			service.execute(request, response);
			
			page = "chifood_List.jsp";
		}
		//---chifood----
		//---westfood----
		else if(com != null && com.trim().equals("makeContent_west")) {
			ContentService service = new westfood_InsertService();
			service.execute(request, response);
			
			page = "/WEB-INF/view/makeContent_west.jsp";
		}
		else if(com != null && com.trim().contentEquals("westfood_insert")) {
			westfood_InsertService service = new westfood_InsertService();
			service.execute(request, response);
			
			page = "westfood_List.jsp";
		}
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}