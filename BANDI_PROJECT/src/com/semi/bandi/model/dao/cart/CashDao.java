package com.semi.bandi.model.dao.cart;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Cart> result = null;
				
		try {
			
			pstmt = con.prepareStatement(prop.getProperty("selectCart"));
			
			pstmt.setInt(1, user_UID);
			
			rset = pstmt.executeQuery();

			result = new ArrayList<Cart>();
			
			while (rset.next()) {
				
				Cart cart = new Cart();
				
				cart.setUserUID(rset.getInt("USER_UID"));
				cart.setBookUID(rset.getInt("BOOK_UID"));
				cart.setBookQuantity(rset.getInt("CART_QUANTITY"));
				cart.setImage(rset.getString("IMAGE"));
				cart.setPrice(rset.getInt("PRICE"));
				cart.setTitle(rset.getString("TITLE"));
				
				result.add(cart);
				
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
						
		}
		
		return result;
		
	}
	
	public User selectUser(Connection con, int user_UID, String query) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User user = null;
		
		try {
			
			pstmt = con.prepareStatement(query + prop.getProperty("selectUser"));
			
			pstmt.setInt(1, user_UID);
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				
				user = new User();
				
				user.setmGrade(rset.getString("GRADE_CODE"));
				
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
			
		}
		
		return user;
		
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