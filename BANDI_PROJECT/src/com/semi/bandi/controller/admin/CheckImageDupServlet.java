package com.semi.bandi.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.semi.bandi.model.service.admin.AdminDQLService;

/**
 * Servlet implementation class CheckImageDupServlet
 */
@WebServlet("/CheckImage.do")
public class CheckImageDupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckImageDupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String img = request.getParameter("img");
		
		String[] getImgeName = img.split("\\\\");
		
		img = getImgeName[getImgeName.length-1];
		
		AdminDQLService ads = new AdminDQLService();
		
		boolean exist;
		
		if(ads.getImageByName(img))
			exist = true; 	// if have exist
		else
			exist = false; // no have, so can use

		
		JSONObject obj = new JSONObject();
		
		obj.put("exist", exist);
		
		response.setContentType("application/json; charset=UTF-8;"); 
		
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
