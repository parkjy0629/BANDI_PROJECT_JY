package com.semi.bandi.model.service.admin;

import java.sql.Connection;

import com.semi.bandi.model.dao.admin.AdminDao;
import com.semi.bandi.model.vo.Book;
import com.semi.bandi.model.vo.Writer;

import static com.semi.bandi.template.JDBCTemplate.*;

public class AdminDMLService 
{
	public AdminDMLService(){}
	
	public boolean succInBookforDB(Book book, String date)
	{
		boolean key = false;
		AdminDao dao = new AdminDao();
		Connection con = getInstance();
		
		key = dao.insertBook(con, book, date);
		
		if(key) commit(con);
		else rollback(con);
		
		close(con);
		
		return key;
	}
	
	public boolean succinWriterforDB(Writer writer)
	{
		boolean key = false;
		AdminDao dao = new AdminDao();
		Connection con = getInstance();
		
		key = dao.insertWriter(con, writer);
		
		if(key) commit(con);
		else rollback(con);
		
		close(con);
		
		return key;
	}
}
