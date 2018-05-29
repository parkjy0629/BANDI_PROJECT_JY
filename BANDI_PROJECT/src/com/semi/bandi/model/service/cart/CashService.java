package com.semi.bandi.model.service.cart;

import java.sql.Connection;
import java.util.ArrayList;

import com.semi.bandi.model.dao.cart.CashDao;
import com.semi.bandi.model.vo.Cart;
import com.semi.bandi.model.vo.User;

import static com.semi.bandi.template.JDBCTemplate.*;

public class CashService {

	private Connection con = null;
	private CashDao cDao = null;
	
	public CashService() {

		con = getInstance();
		cDao = new CashDao();
		
	}
	
	public ArrayList<Cart> selectBasket(int user_UID) {
		
		return null;
		
	}
	
	public User selectUser(int user_UID) {
		
		return null;
	}
	
	public int deleteBasket(int user_UID, int book_UID) {
		
		return 0;
		
	}
	
	public int insertOrder(ArrayList<Cart> cart) {
		
		return 0;
		
	}
	
	public ArrayList<Cart> selectOrder(int user_UID) {
		
		return null;
		
	}
	
	public int deleteOrder(String order_UID, String book_UID) {
		
		return 0;
		
	}

}