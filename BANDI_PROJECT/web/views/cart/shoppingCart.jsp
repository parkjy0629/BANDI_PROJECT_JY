<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.semi.bandi.model.vo.*, java.util.*, java.text.*" %>
<%
	ArrayList<Cart> cartList = (ArrayList<Cart>)request.getAttribute("cartList");
	DecimalFormat df = new DecimalFormat("###,###");
	int bookTotal = 0;
	double point = (Double)request.getAttribute("point");
%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>장바구니</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <script src="<%=request.getContextPath()%>/resources/js/cart/jquery-3.3.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/cart/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/cart/shoppingBasket.js"></script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cart/bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cart/shopping.css">
        <link href="<%=request.getContextPath()%>/resources/css/cart/fontawesome-all.min.css" rel="stylesheet">
    </head>

    <body>
    
    	<header>
    		<%@include file ="../common/Header.jsp" %>
    	</header>
    	
        <div class="container">

            <!-- 장바구니 목록 표시 글 -->
            <div class="d-flex align-items-center" style="margin-top:5%;">
                <i class="fas fa-shopping-basket fa-2x"></i><h3><b>&nbsp;&nbsp;장바구니</b></h3>
            </div>

            <!-- 장바구니 목록 테이블 -->
            <div class="row" style="margin-top:5%;">
                <table class="table table-bordered" id="bookTb"> <!-- bootstrap.min.css 에서 table-bordered 안에 text-align:center 추가해줌 -->
                    <thead>
                        <tr>
                            <th scope="col"><input type="checkbox" id="chkAll"></th>
                            <th scope="col">상품정보</th>
                            <th scope="col">판매가</th>
                            <th scope="col">수량</th>
                            <th scope="col">합계</th>
                            <th scope="col">선택</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<!-- 조회 한 장바구니 데이터 수만큼 tr태그 생성 -->
                    	<% if (cartList != null) {
                    			for (int i = 1; i <= cartList.size(); i++) { 
                    			bookTotal += cartList.get(i-1).getPrice() * cartList.get(i-1).getBookQuantity(); %>
	                    	<tr>
	                            <td class="tdChk">
	                            	<input type="checkbox" class="chk" id="chk<%= i %>"><input type="hidden" id="bookUID" value="<%= cartList.get(i-1).getBookUID() %>">
	                            </td> <!-- bootstrap.min.css 에서 .table td,.table th 안에 vertical-align:middle로 변경 -->
	                            <td class="text-left tdBook">
	                            	<img id="bookImg<%= i %>" class="bookImg" src="<%=request.getContextPath()%>/resources/images/cart/BOOK/<%= cartList.get(i-1).getImage() %>" alt="<%= cartList.get(i-1).getTitle() %>" style="margin-right:5%; margin-left:5%;"><%= cartList.get(i-1).getTitle() %>
	                            </td>
	                            <td class="tdPrice" id="sale<%= i %>">
	                            	<span class="onePrice"><%= df.format(cartList.get(i-1).getPrice())%></span> 원
	                            </td>
	                            <td class="tdQuan">
	                            	<input type="number" class="quan" id="quan<%= i %>" min="0" max="100" value="<%= cartList.get(i-1).getBookQuantity() %>">
	                            </td>
	                            <td class="tdPrice tdTotal" id="quan<%= i %>">
	                            	<span class="bookPrice"><%= df.format(cartList.get(i-1).getPrice() * cartList.get(i-1).getBookQuantity()) %></span> 원
	                            </td>
	                            <td class="tdBtn">
	                            	<input type="button" class="btn1 pickBtn" value="바로구매">&nbsp;&nbsp;&nbsp;<input type="button" class="btn2 delBtn" value="삭제">
	                            </td>
	                        </tr>
                    	<% 	}
                    		} else {%>
                    			<tr>
                    				<td colspan=6><h3>장바구니에 담긴 상품이 없습니다.</h3></td>
                    			</tr>                    			
                    	<% } %>
                    </tbody>
                </table>
            </div>
            
            <!-- 삭제 버튼 -->
            <div class="row">
            	<input type="button" class="btn9" id="selectDelBtn" value="선택 삭제">&nbsp;&nbsp;&nbsp;
                <input type="button" class="btn1" id="allDelBtn" value="전체 삭제">
            </div>

            <!-- 금액 테이블 -->
            <div class="row" style="margin-top:5%;">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">상품 금액</th>
                            <th scope="col">배송비</th>
                            <th scope="col">결제 예정 금액</th>
                            <th scope="col">적립 예정</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td id="total"><%= df.format(bookTotal) %> 원</td>
                            <td id="delivery">
                            	<% if (bookTotal > 30000 || cartList == null) { %>
                            		0 원
                            	<% } else {%>
                            		2,500 원
                            	<% } %>
                            </td>
                            <td id="orderPrice">
                            	<% if (bookTotal > 30000 || cartList == null) { %>
                            		<%= df.format(bookTotal) %> 원
                            	<% } else { %>
                            		<%= df.format((bookTotal + 2500)) %> 원
                            	<% } %>                       
                            </td>
                            <td id="point">
                            	<% if (bookTotal > 30000 || cartList == null) { %>
                            		<%= df.format(bookTotal * point) %> P
                            	<% } else { %>
                            		<%= df.format((bookTotal + 2500) * point) %> P
                            	<% } %> 
                           	</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- 구매 버튼 -->
            <div class="row justify-content-end" style="margin-top:5%; margin-bottom:5%;">
                <input type="button" class="btn3" id="shopBtn" name="shopBtn" value="쇼핑 계속하기">&nbsp;&nbsp;&nbsp;
                <input type="button" class="btn4" id="orderBtn" name="orderBtn" value="선택상품 주문하기">&nbsp;&nbsp;&nbsp;
                <input type="button" class="btn5" id="allBtn" name="allBtn" value="전체상품 주문하기">
            </div>
            
        </div>
        
        <script>
        	var bookTotal ="<%=bookTotal%>";
        	var user_uid = "<%= user.getmUser_UID() %>";
        	var point = "<%=point%>";
        </script>
    </body>

</html>