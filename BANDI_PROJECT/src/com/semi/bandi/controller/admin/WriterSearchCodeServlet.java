package com.semi.bandi.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.semi.bandi.model.service.admin.AdminDQLService;
import com.semi.bandi.model.vo.Writer;

/**
 * Servlet implementation class WriterSearchCodeServlet
 */
@WebServlet("/WriterCode.do")
public class WriterSearchCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriterSearchCodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String writerCode = request.getParameter("writerCode");
		AdminDQLService ads = new AdminDQLService();
		Writer writer  =  ads.getWriterbyCode(writerCode);
		response.setContentType("application/json; charset=UTF-8");
		JSONObject obj = new JSONObject();
		
		if(writer != null){
			obj.put("writerCode", writer.getmWriterCode());
			obj.put("writerName", writer.getmWriterName());
			obj.put("writerIntroduce", writer.getmWriterIntroduce());
		}
		else
		{ obj.put("no", "no"); }
		
		response.getWriter().print(obj.toJSONString());
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
