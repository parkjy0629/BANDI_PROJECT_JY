package com.semi.bandi.controller.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.semi.bandi.model.service.main.GetMainService;
import com.semi.bandi.model.vo.Book;

/**
 * Servlet implementation class GetFromDataServlet
 */
@WebServlet("/GetFromData.do")
public class GetFromDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetFromDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// Call for Data [Main Page]
		String member = request.getParameter("member");
		
		GetMainService gms = new GetMainService();
		
		// 1. Event Banner Path
		String[] eventBanner = gms.getEventBanner();
		
		// 2. Recommended Book by BANDI 
		Book[] getRecommendBook = gms.getRecommendBandi();
		
		// 3. BestSeller Book Each Type
		Book[] getBestSellerBook = gms.getbestSeller();
		
		// 4. Rated Book From User
		
		// 5. Confirm about Login Service
		if(member == null || member.isEmpty())
		{
			
		}else
		{
			
		}
		
		if(eventBanner == null || getRecommendBook == null || getBestSellerBook == null)
		{
			// GO TO ERROR PAGE;
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("eventBanner", eventBanner);
		session.setAttribute("recommend", getRecommendBook);
		session.setAttribute("bestSeller", getBestSellerBook);
				
		RequestDispatcher views = request.getRequestDispatcher("/views/main/Main.jsp");
		views.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
