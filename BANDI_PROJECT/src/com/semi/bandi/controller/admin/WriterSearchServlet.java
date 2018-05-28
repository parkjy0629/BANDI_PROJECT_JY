package com.semi.bandi.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.semi.bandi.model.service.admin.AdminDQLService;
import com.semi.bandi.model.vo.Writer;

import jdk.nashorn.api.scripting.JSObject;

/**
 * Servlet implementation class WriterSearchServlet
 */
@WebServlet("/WriterSearch.do")
public class WriterSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriterSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  getName = request.getParameter("writerName");
		AdminDQLService ads = new AdminDQLService();
		ArrayList<Writer> writer = ads.getWriterArray(getName);
		JSONArray writerArray = new JSONArray();
		response.setContentType("application/json; charset=UTF-8");
		
		if(writer.size() == 0){
			//Not Exist writer!!!}
			response.getWriter().print(writerArray);
		}
		else
		{
			for(Writer w : writer)
			{
				JSONObject obj = new JSONObject();
				obj.put("writerCode", w.getmWriterCode());
				obj.put("writerName", w.getmWriterName());
				obj.put("writerIntroduce", w.getmWriterIntroduce());
				writerArray.add(obj);
			}
			
			response.getWriter().print(writerArray);
		}
		
		
		response.getWriter().flush();
		response.getWriter().close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
