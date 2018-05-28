package com.semi.bandi.model.service.admin;

import java.sql.Connection;
import java.util.ArrayList;

import com.semi.bandi.model.dao.admin.AdminDao;
import com.semi.bandi.model.vo.Writer;
import static com.semi.bandi.template.JDBCTemplate.*;

public class AdminDQLService 
{
	public AdminDQLService(){}
	// ALL DQL - No need to COMMIT AND ROLLBACK.
	public ArrayList<Writer> getWriterArray(String name)
	{
		AdminDao adDao = new AdminDao();
		Connection con =  getInstance();
		ArrayList<Writer> getWriter = adDao.getWriterArray(con, name);
		
		close(con);
		return getWriter;
	}
	
	public Writer getWriterbyCode(String code)
	{
		AdminDao adDao = new AdminDao();
		Connection con = getInstance();
		Writer  writer = adDao.getWriterCode(con, code);
		close(con);	
		return writer;
	}
	
	public boolean getImageByName(String imgName)
	{
		AdminDao adDao = new AdminDao();
		Connection con = getInstance();
		boolean key = adDao.getImageName(con, imgName);
		close(con);
		
		return key;
	}

	public boolean getExistByISBN(String ISBN) {
		AdminDao adDao = new AdminDao();
		Connection con =  getInstance();
		return adDao.existISBN(con, ISBN);
	}
}
