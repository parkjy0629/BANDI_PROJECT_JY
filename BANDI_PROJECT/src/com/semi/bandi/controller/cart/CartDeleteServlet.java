package com.semi.bandi.controller.cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.semi.bandi.model.service.cart.CashService;
import com.semi.bandi.model.vo.Cart;
import com.semi.bandi.model.vo.User;

// 장바구니 데이터 삭제

@WebServlet("/delete.ct")
public class CartDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CartDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String delList = request.getParameter("delList");
		
		Gson gson  = new Gson();
		CashService cService = new CashService();
				
		// ArrayList 로 받아 올 경우 ArrayList 전용 제네릭을 별도로 선언 하셔야 합니다.
		// 가져 오는 값은 무조건 1개 이상일 테니 객체 배열로 가져와 봅시다.
		//ArrayList<Cart> cart = gson.fromJson(delList, ArrayList.class);
		 
		Cart[] cartList = gson.fromJson(delList, Cart[].class);
		
		response.setContentType("text/html; charset=UTF-8");
		
		if(cartList.length > 0){			// 도서 정보 삭제

			int result = cService.deleteBasket(cartList);
						
			if (result == cartList.length) {	// 성공적으로 도서 정보가 삭제 되었을 경우
				
				response.getWriter().print(1);
				
			} else {		// 도서 정보 삭제 실패할 경우
				
				response.getWriter().print(0);
				
			}
			
		} else {			// 잘못 된 경로로 접근할 경우 (삭제할 도서 정보가 없을 경우)
			
			response.getWriter().print(0);
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
