<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.semi.bandi.model.vo.*" %>
<!DOCTYPE html>
<html>
<%
	User user = (User)session.getAttribute("user");

	if(user != null)
		session.invalidate();
	
	response.sendRedirect("GetFromData.do");
%>
<head>

</head>
<body>
	
</body>
</html>