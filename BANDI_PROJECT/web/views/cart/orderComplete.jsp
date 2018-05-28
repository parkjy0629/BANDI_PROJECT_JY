<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8?">
        <title>주문완료</title>

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

            <!-- 주문완료 목록 표시 글 -->
            <div class="d-flex align-items-center" style="padding-top:5%;">
                <i class="fas fa-shopping-cart fa-lg"></i><h3><b>&nbsp;&nbsp;주문 완료</b></h3>
            </div>

            <!-- 주문 완료 문구 -->
            <div class="row justify-content-center" style="padding-top:5%;">
                <h2><b>주문이 성공적으로 접수 되었습니다.</b></h2>
            </div>
            <div class="row justify-content-center" style="padding-bottom:5%;">
                <p>주문번호 (201805070001) | 홍길동 고객님, 감사합니다.</p>&nbsp;&nbsp;&nbsp;<input type="button" class="btn7" value="주문내역 상세보기" onClick="location.href='checkPage.jsp'">
            </div>
            <hr>
            

            <!-- 결제정보 목록 표시 글 -->
            <div class="d-flex align-items-center" style="padding-top:5%; padding-bottom:2%;">
                <i class="fas fa-credit-card fa-lg"></i><h3><b>&nbsp;&nbsp;결제 정보</b></h3>
            </div>
            <div class="row">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>상품 금액</th>
                            <th>할인 금액</th>
                            <th>결제 예정 금액</th>
                            <th>적립 예정</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>36,500 원</td>
                            <td>0 원</td>
                            <td>36,500 원</td>
                            <td>2,000 원</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="row" style="padding-top:1%; padding-bottom:1%;">
                <p>적립 예정 2,000 P = 기본적립 2,000P + 회원혜택 0P</p>
            </div>
            <div class="row">
                <table class="table table-bordered">
                    <tr>
                        <th>상품 금액</th>
                        <td class="text-left" style="padding-left:3%;"><p>※ 주문하신 상품을 배송하기 위해서는 결제금액을 입금해 주셔야 합니다.</p>
                            <p>- 입금하실 금액 |  36,500 원.</p>
                            <p>- 계좌번호   |  입금은행 : 국민은행   계좌번호 : xxxxxx-xxxx-xxxxxx (주)반딧불이 책방.</p>
                            <p>온라인(무통장)입금으로 주문완료시 안내되는 계좌번호는 고객님 전용 계좌입니다.</p>
                            <p>해당 계좌로 입금시에만 입금확인이 되며, 주문이 진행됩니다.</p>
                    </tr>
                </table>
            </div>

             <!-- 배송정보 목록 표시 글 -->
             <div class="d-flex align-items-center" style="padding-top:5%; padding-bottom:2%;">
                <i class="fas fa-truck fa-lg"></i><h3><b>&nbsp;&nbsp;배송 정보</b></h3>
            </div>
            <div class="row">
                <table class="table table-bordered">
                    <tr>
                        <th>받으실 분</th>
                        <td class="text-left" style="padding-left:3%;">홍길동</td>
                    </tr>
                    <tr>
                        <th>주소</th>
                        <td class="text-left" style="padding-left:3%;">XXX 시 XXX 구 XXX 동 XXX- XX 번지 XXXX호</td>
                    </tr>
                    <tr>
                        <th>휴대폰 번호</th>
                        <td class="text-left" style="padding-left:3%;">010-1234-5678</td>
                    </tr>
                </table>
            </div>

            <!-- 쇼핑 계속 버튼 -->
            <div class="row justify-content-end" style="padding-top:5%; padding-bottom:5%;">
                <input type="button" class="btn3" value="쇼핑 계속하기">&nbsp;&nbsp;&nbsp;<input type="button" class="btn4" value="장바구니" onClick="location.href='shoppingBasket.jsp'">&nbsp;&nbsp;&nbsp;<input type="button" class="btn5" value="주문내역 상세보기" onClick="location.href='checkPage.jsp'">
            </div>

        </div>
    </body>

</html>