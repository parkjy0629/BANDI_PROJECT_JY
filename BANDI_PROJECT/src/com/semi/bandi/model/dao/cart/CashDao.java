package com.semi.bandi.model.dao.cart;

import java.io.FileReader;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Properties;

import com.semi.bandi.model.vo.Cart;
import com.semi.bandi.model.vo.User;

import static com.semi.bandi.template.JDBCTemplate.*;

public class CashDao {
	
	private Properties prop = null;
	
	public CashDao() { 
		
		prop = new Properties();
		
		String fileName = CashDao.class.getResource("/config/cart/cart-query.properties").getPath();
		
		try {
			
			prop.load(new FileReader(fileName));
			
		} catch (Exception e) {

			e.printStackTrace();
			
		}
		
	}
	
	public ArrayList<Cart> selectBasket(Connection con, int user_UID) {
		
		return null;
		
	}
	
	public User selectUser(Connection con, int user_UID) {
		
		return null;
		
	}
	
	public int deleteBasket(Connection con, int user_UID, int book_UID) {
		
		return 0;
		
	}
	
	public int insertOrder(Connection con, ArrayList<Cart> cart) {
		
		return 0;
		
	}
	
	public ArrayList<Cart> selectOrder(Connection con, int user_UID) {
		
		return null;
		
	}
	
	public int deleteOrder(Connection con, String order_UID, String book_UID) {
		
		return 0;
		
	}

}