package com.semi.bandi.model.dao.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.semi.bandi.model.vo.Book;
import com.semi.bandi.model.vo.Writer;
import static com.semi.bandi.template.JDBCTemplate.*;

public class AdminDao 
{
	public AdminDao(){};
	
	public ArrayList<Writer>  getWriterArray(Connection con, String writerName)
	{
		if(con == null) return null;
		
		PreparedStatement pstmt = null;
		ResultSet rSet = null;
		ArrayList<Writer> writerArray = new ArrayList<Writer>();
		
		String query = "SELECT * FROM WRITER WHERE WRITER_NAME LIKE ?";
		
		try{
			pstmt = con.prepareStatement(query);
			
		    pstmt.setString(1, "%"+writerName + "%");
		    
		    rSet = pstmt.executeQuery();
		    
		    while(rSet.next())
		    {
		    	String mWriterCode = rSet.getString(1);
		    	String mWriterName  = rSet.getString(2);
		    	String mWriterIntroduce = rSet.getString(3);
		    	Writer  write = new Writer(mWriterCode, mWriterName, mWriterIntroduce);
		    	writerArray.add(write);
		    }
			
		}catch(Exception e)
		{
			writerArray = null;
		}finally
		{
			close(rSet);
			close(pstmt);
		}
		
		return writerArray;
	}
	
	public boolean getImageName(Connection con, String imgName)
	{
		if(con == null) return false;
		
		PreparedStatement pstmt = null;
		ResultSet rSet = null;
		boolean key = false;
		
		String query = "SELECT * FROM BANDI_BOOK WHERE IMAGE = ?";
		
		try{
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, imgName);
			
			rSet = pstmt.executeQuery();
			
			while(rSet.next()) // This Code only one Execute, Because img is unique in DataBase
				key = true;
					
		}catch(SQLException e){ e.printStackTrace();}
		finally
		{
			close(rSet);
			close(pstmt);
		}
		
		return key;
	}
	
	public Writer getWriterCode(Connection con, String code)
	{
		if(con == null) return null;
		
		PreparedStatement pstmt = null;
		ResultSet rSet = null;
		Writer writer =  null;
		
		String query = "SELECT * FROM WRITER WHERE WRITER_CODE = ?";
		
		try{
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, code);
			
			rSet = pstmt.executeQuery();
			
			while(rSet.next()) // This code only get one Writer, because of WriterCode[Unique Key]
				writer = new Writer(rSet.getString(1), rSet.getString(2),rSet.getString(3));
			
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			close(rSet);
			close(pstmt);
		}
		
		return  writer;
	}
	
	public boolean existISBN(Connection con,  String ISBN)
	{
		if(con == null) return false;
		
		boolean result = false;
		
		PreparedStatement pstmt = null;
		ResultSet rSet = null;
		
		String query = "SELECT * FROM BANDI_BOOK WHERE  ISBN = ?";
		
		try{
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, ISBN);
			
			rSet  =  pstmt.executeQuery();
			
			while(rSet.next()) // ISBN is Unique Key, so Must GET  1 rSet Size.
				result = true;
			
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	public boolean insertBook(Connection con, Book book, String date) {
		if(con == null) return false;
		boolean result = false;
		
		PreparedStatement pstmt = null;
		
		String query = "INSERT INTO BANDI_BOOK VALUES (BOOK_SEQUENCE.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
				+ "TO_DATE(?,'DD.MM.YYYY'))";
		
		try{
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, book.getmISBN()); // ISBN
			pstmt.setString(2, book.getmTitle()); // TITLE
			pstmt.setInt(3, book.getmPrice()); //PRICE
			pstmt.setString(4, book.getmWriterCode()); // Writer Code
			pstmt.setString(5, book.getmPublisher()); // Publisher
			pstmt.setInt(6, book.getmQuantity());  // Quantity
			pstmt.setString(7, book.getmGenreCode()); //Genre & Category
			pstmt.setString(8, book.getmOrigin()); //Origin
			pstmt.setString(9, book.getmIntroduceBook()); // Introduce & explain About book
			pstmt.setInt(10, book.getmPage()); // Page Count about book
			pstmt.setString(11, book.getmImagePath()); // Image Name. and This should have from server
			pstmt.setString(12, date); // date format dd.mm.yyyy
			
			int get = pstmt.executeUpdate();
			
			if(get > 0) result = true;
			else result = false;
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			close(pstmt);
		}
		
		return result;
	}

	public boolean insertWriter(Connection con, Writer writer) {
		if(con == null) return false;
		boolean result = false;
		
		PreparedStatement pstmt = null;
		
		String query = "INSERT INTO WRITER VALUES (?, ?, ?)";
		
		try{
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, writer.getmWriterCode());
			pstmt.setString(2, writer.getmWriterName());
			pstmt.setString(3, writer.getmWriterIntroduce());
			
			int succCount =	pstmt.executeUpdate();
			if(succCount > 0) result = true;
			else result = false;
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
}
