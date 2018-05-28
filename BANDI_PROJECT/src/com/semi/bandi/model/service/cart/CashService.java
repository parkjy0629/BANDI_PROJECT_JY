package com.semi.bandi.model.service.cart;

import java.util.ArrayList;

import com.semi.bandi.model.dao.cart.CashDao;
import com.semi.bandi.model.vo.Cart;
import com.semi.bandi.model.vo.User;

import static com.semi.bandi.template.JDBCTemplate.*;

public class CashService {
	
	private CashDao cDao = null;
	
	public CashService() {
		
		cDao = new CashDao();
		
	}
	
	public ArrayList<Cart> selectBasket() {
		
		return null;
		
	}
	
	public User selectUser() {
		
		return null;
	}
	
	public int deleteBasket() {
		
		return 0;
		
	}
	
	public int insertOrder() {
		
		return 0;
		
	}
	
	public ArrayList<Cart> selectOrder() {
		
		return null;
		
	}
	
	public int deleteOrder() {
		
		return 0;
		
	}

}