package com.semi.bandi.model.dao.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.semi.bandi.model.vo.Book;
import com.semi.bandi.template.PropertiesTemplate;

import static com.semi.bandi.template.JDBCTemplate.*;

public class MainDao 
{
	public MainDao(){}
	
	/*****************************************************************************
	 *  Description : BANDI Recommend Book [12]
	 *  Date : 2018/05/15
	 *  Author : PYS
	 * ****************************************************************************/
	public Book[] getRecommendBook(Connection con)
	{
		if(con == null) return null;
		
		int mBandiCount = 10;
		PreparedStatement pstmt = null;
		ResultSet rSet = null;
		PropertiesTemplate prop = new PropertiesTemplate();
		Book[] bookArray = new Book[mBandiCount];
		
		String query = "SELECT * FROM BANDI_BOOK WHERE ISBN IN (? , ? , ? , ? , ? , ? ,? , ?, ?, ?)";
		
		try {
			pstmt = con.prepareStatement(query);
			
			String[] arrayofISBN = prop.getRecommendBook();
			
			for(int i = 1; i <= mBandiCount ; i++)
				pstmt.setString(i, arrayofISBN[i-1]);
			
			rSet = pstmt.executeQuery();
			
			int j = 0;
			while(rSet.next())
			{
				Book book = new Book();
				book.setmBook_UID(rSet.getInt(1));
				book.setmISBN(rSet.getString(2));
				book.setmTitle(rSet.getString(3));
				book.setmPrice(rSet.getInt(4));
				book.setmWriterCode(rSet.getString(5));
				book.setmPublisher(rSet.getString(6));
				book.setmQuantity(rSet.getInt(7));
				book.setmGenreCode(rSet.getString(8));
				book.setmOrigin(rSet.getString(9));
				book.setmIntroduceBook(rSet.getString(10));
				book.setmPage(rSet.getInt(11));
				book.setmImagePath(rSet.getString(12)); // Book Image Path;
				book.setmIssueDate(rSet.getDate(13));
				bookArray[j] = book;
				j++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			bookArray = null;
		}finally
		{
			close(rSet);
			close(pstmt);
		}
		
		return bookArray;
	}
	
	public Book[] getBestSeller(Connection con, String typeCode)
	{
		int mBandiCount = 8;
		Book[] bookArray = new Book[mBandiCount];
		
		// Temper
		bookArray = null;
		return bookArray;
	}
}
