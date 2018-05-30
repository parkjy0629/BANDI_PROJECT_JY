package com.semi.bandi.controller.cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.semi.bandi.model.service.cart.CashService;
import com.semi.bandi.model.vo.Cart;
import com.semi.bandi.model.vo.User;

// ��ٱ���

@WebServlet("/cart.ct")
public class ShppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ShppingCartServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		User user = (User)session.getAttribute("user");
		
		CashService cService = new CashService();
		
		ArrayList<Cart> result = null;
		
		String page = "";
		
		if (user == null) {		// �α��� ���� Ȯ�� (�α��� �Ǿ����� ������ ��ٱ��Ͽ� ������ �� ����.)
			
			page = "/views/main/Main.jsp";
			
		} else {
			
			result = cService.selectBasket(user.getmUser_UID());
			page = "views/cart/shoppingCart.jsp";
			request.setAttribute("cartList", result);
			
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
