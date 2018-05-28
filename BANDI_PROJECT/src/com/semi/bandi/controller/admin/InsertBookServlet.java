package com.semi.bandi.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bandi.model.service.admin.AdminDMLService;
import com.semi.bandi.model.vo.Book;

/**
 * Servlet implementation class InsertBookServlet
 */
@WebServlet("/submitBook.do")
public class InsertBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String isbn = request.getParameter("ISBN");
		String title = request.getParameter("title");
		String writerCode = request.getParameter("writerCode");
		int price = Integer.parseInt(request.getParameter("price"));
		int page = Integer.parseInt(request.getParameter("page"));
		String publisher = request.getParameter("publisher");
		String img = request.getParameter("img");
		String introduce = request.getParameter("introduce");
		// Date 넣는 방법
		String date = request.getParameter("day") + "." + request.getParameter("month") + "." + request.getParameter("year");
		String origin = request.getParameter("origin");
		String genre = request.getParameter("genre");
		String quant = request.getParameter("quantity");
		int quantInt;
		if(quant == "") quantInt = 0;
		else   quantInt = Integer.parseInt(quant);
		
		String[] getImgeName = img.split("\\\\");
		
//		System.out.println("isbn : " +isbn);
//		System.out.println("title : "+title);
//		System.out.println("wc : " +writerCode);
//		System.out.println("price : " +price);
//		System.out.println("page : " + page);
//		System.out.println("publi: " + publisher);
//		System.out.println("img : " + getImgeName[getImgeName.length-1]);
//		System.out.println("introduce : " + introduce);
//		System.out.println("date : " + date);
//		System.out.println("origin : " + origin);
//		System.out.println("genre : " + genre);
//		System.out.println("quant : " + quantInt);	
			
		Book getBook = new Book(isbn, title, price, writerCode, 
				quantInt, origin, genre, introduce, 
				getImgeName[getImgeName.length - 1], page, publisher);
		
		// Date String, and Book,
		AdminDMLService adDMLservice = new AdminDMLService();
		
		if(adDMLservice.succInBookforDB(getBook, date))
		{
			// success
		}
		else
		{
			// fail
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
