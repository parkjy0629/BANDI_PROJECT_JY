package com.semi.bandi.model.service.cart;

import java.sql.Connection;
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
	
	// 장바구니 페이지 이동 시 장바구니에 담긴 데이터를 읽어오는 서비스
	public ArrayList<Cart> selectBasket(int user_UID) {

		Connection con = getInstance();
		
		ArrayList<Cart> result = cDao.selectBasket(con, user_UID);
		
		close(con);
		
		return result;
		
	}
	
	// 필요한 유저 정보를 읽어오는 서비스 (각각의 서블릿에서 필요한 데이터를 조회하는 select 부분을 구현한 query문을 넘겨줘야함)
	public User selectUser(int user_UID, String query) {
		
		Connection con = getInstance();
		
		User user = cDao.selectUser(con, user_UID, query);
		
		close(con);
		
		return user;
	}
	
	// 장바구니 페이지에서 일어나는 삭제를 수행하는 서비스
	public int deleteBasket(Cart[] cart) {
		
		Connection con = getInstance();
		
		int result = cDao.deleteBasket(con, cart);
		
		if (result == cart.length) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
	}
	
	public ArrayList<Cart> selectCart(String bookList, int useruid) {
		
		Connection con = getInstance();
		
		ArrayList<Cart> result = cDao.seletCart(con, bookList, useruid);
		
		close(con);
		
		return result;
		
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