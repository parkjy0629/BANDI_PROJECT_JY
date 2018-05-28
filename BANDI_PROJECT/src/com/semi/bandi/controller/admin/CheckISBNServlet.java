package com.semi.bandi.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.semi.bandi.model.service.admin.AdminDQLService;

/**
 * Servlet implementation class CheckISBNServlet
 */
@WebServlet("/DuplicateISBN.do")
public class CheckISBNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckISBNServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String isbn  = request.getParameter("ISBN");
		AdminDQLService ads = new AdminDQLService();
		
		boolean exist = ads.getExistByISBN(isbn);
		
		JSONObject obj = new JSONObject();
		
		obj.put("exist", exist);
		
		response.setContentType("application/json; charset=UTF-8;"); 
		
		response.getWriter().print(obj.toJSONString());
		response.getWriter().flush();
		response.getWriter().close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
