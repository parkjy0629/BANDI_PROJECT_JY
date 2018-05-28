<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8?">
        <title>주문취소완료</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <script src="<%=request.getContextPath()%>/resources/js/cart/jquery-3.3.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/cart/bootstrap.min.js"></script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cart/bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cart/shopping.css">
        <link href="<%=request.getContextPath()%>/resources/css/cart/fontawesome-all.min.css" rel="stylesheet">
    </head>

    <body>
    
    	<header>
    		<%@include file ="../common/Header.jsp" %>
    	</header>
    	
        <div class="container">

            <!-- 주문취소완료 목록 표시 글 -->
            <div class="d-flex align-items-center" style="padding-top:5%;">
                <i class="fas fa-shopping-basket fa-lg"></i><h3><b>&nbsp;&nbsp;주문 취소 완료</b></h3>
            </div>

            <!-- 주문 취소 문구 -->
            <div class="row justify-content-center" style="padding-top:5%;">
                <h2><b>주문번호 (201805070001)가 취소 접수 되었습니다.</b></h2>
            </div>
            <div class="row justify-content-center" style="padding-bottom:5%;">
                <p>홍길동 고객님, 감사합니다.</p>
            </div>
            <hr>

            <!-- 쇼핑 계속 버튼 -->
            <div class="row justify-content-end" style="padding-bottom:5%;">
                <input type="button" class="btn3" value="쇼핑 계속하기">
            </div>

        </div>
    </body>

</html>