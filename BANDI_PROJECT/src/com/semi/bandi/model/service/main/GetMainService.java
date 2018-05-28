package com.semi.bandi.model.service.main;

import com.semi.bandi.junk.main.DefaultData;
import com.semi.bandi.model.dao.main.MainDao;
import com.semi.bandi.model.vo.Book;
import com.semi.bandi.template.PropertiesTemplate;
import static com.semi.bandi.template.JDBCTemplate.*;

import java.sql.Connection;

public class GetMainService 
{
	
	public GetMainService(){}
	
	// Return String Array for Event Banner.
	public String[] getEventBanner()
	{
		return new PropertiesTemplate().getEventString();
	}
	
	public Book[] getRecommendBandi()
	{
		MainDao  mDao = new MainDao();
		Connection con = getInstance();
		Book[] bookArray  = mDao.getRecommendBook(con);
		
		if(bookArray == null || con == null)
		{ 
			DefaultData defaultBook = new DefaultData();
			bookArray = defaultBook.returnBookData();
			rollback(con);
		}
		else{commit(con);}
		
		close(con);
		
		return bookArray;
	}
	
	public Book[] getbestSeller()
	{
		Book[] bookArray = null;
		MainDao mDao = new MainDao();
		Connection con = getInstance();
		
		bookArray = mDao.getBestSeller(con, "A1");
		
		if(bookArray == null || con == null)
		{
			DefaultData defaultBook = new DefaultData();
			bookArray = defaultBook.returnBestSeller();
			rollback(con);
		}
		else
		{
			commit(con);
		}
		
		close(con);
		return bookArray;
	}
	
	public Book[] getbestSeller(String typeCode)
	{
		Book[] bookArray = null;
		MainDao mDao = new MainDao();
		Connection con = getInstance();
		
		bookArray = mDao.getBestSeller(con, typeCode);
		
		if(bookArray == null || con == null)
		{
			DefaultData defaultBook = new DefaultData();
			bookArray = defaultBook.returnBestSeller();
			rollback(con);
		}
		else
		{
			commit(con);
		}
		
		close(con);
		return bookArray;
	}
	
	
	
}
