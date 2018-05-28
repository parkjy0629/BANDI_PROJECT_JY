package com.semi.bandi.controller.category;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/category.do")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("code");
		
		if(category == null) return; // ERROR CODE;
		
		switch(category)
		{
			case "A":
				break;
				
			case "B":
				break;
				
			case "C":
				break;
				
			case "D":
				break;
				
			case "E":
				break;
				
			case "F":
				break;
			
			default:
				subSelected(category);
		}
		
		RequestDispatcher views = request.getRequestDispatcher("/views/category/categoryForm.jsp");
		views.forward(request, response);
	}
	
	// Execute Query for Easy Code.
	private void subSelected(String category)
	{
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
