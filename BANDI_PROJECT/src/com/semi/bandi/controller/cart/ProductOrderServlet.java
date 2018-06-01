package com.semi.bandi.controller.cart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.semi.bandi.model.vo.Cart;

// 주문 / 결제

@WebServlet("/order.ct")
public class ProductOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductOrderServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bookList = request.getParameter("bookList");
		
		System.out.println(bookList);
		
		Gson gson  = new Gson();
		
		Cart[] cartList = gson.fromJson(bookList, Cart[].class);
		
		response.setContentType("text/html; charset=UTF-8");
		
		if(cartList.length > 0){			// 도서 주문

			System.out.println("Test");
			request.getRequestDispatcher("views/cart/productOrder.jsp").forward(request, response);
		
		} else {			// 잘못 된 경로로 접근할 경우 (주문할 도서 정보가 없을 경우)
			
			response.getWriter().print(0);
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
