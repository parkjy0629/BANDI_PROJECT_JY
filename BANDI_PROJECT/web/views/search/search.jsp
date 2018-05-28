<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<% 
	String searchOption = (String)request.getAttribute("option"); 
	String searchText = (String)request.getAttribute("getText");
%>
<script src ="<%=request.getContextPath()%>/resources/js/main/jquery-3.3.1.min.js"></script>
</head>
<body>

<header>
		<!-- Here is Need to Header Line -->
		<%@include file ="../common/Header.jsp" %>
</header>

 옵션 : <%=searchOption%> <br>
 검색데이타 : <%= searchText %>
 
 <script>
    
 </script>
</body>
</html>