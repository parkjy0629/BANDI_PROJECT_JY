<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8?">
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
            <div class="d-flex align-items-center" style="padding-top:5%;">
                <i class="fas fa-shopping-basket fa-2x"></i><h3><b>&nbsp;&nbsp;장바구니</b></h3>
            </div>

            <!-- 장바구니 목록 테이블 -->
            <div class="row" style="padding-top:5%;">
                <table class="table table-bordered"> <!-- bootstrap.min.css 에서 table-bordered 안에 text-align:center 추가해줌 -->
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
                        <tr>
                            <td id="tdChk"><input type="checkbox" class="chk" id="chk1"><input type="hidden" value="10000123"></td> <!-- bootstrap.min.css 에서 .table td,.table th 안에 vertical-align:middle로 변경 -->
                            <td class="text-left" id="tdBook"><img name="bookImg" id="bookImg" class="bookImg" src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample2.PNG" alt="퍼즈" style="padding-right:5%;"><span id="bookTitle" name="bookTitle">퍼즈</span></td>
                            <td class="tdPrice" name="sale" id="sale1">15,500 원</td>
                            <td id="tdQuan"><input type="number" class="quan" min="0" value="1"></td>
                            <td class="tdPrice" name="quan" id="quan1">15,500 원</td>
                            <td id="tdBtn"><input type="button" class="btn1 pickBtn" value="바로구매" onClick="location.href='paymentPage.jsp'">&nbsp;&nbsp;&nbsp;<input type="button" class="btn2 delBtn" value="삭제"></td>
                        </tr>
                        <tr>
                        	<td id="tdChk"><input type="checkbox" class="chk" id="chk2"><input type="hidden" value="20000123"></td>
                            <td class="text-left" id="tdBook"><img name="bookImg" id="bookImg" class="bookImg" src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample1.PNG" alt="신경끄기의기술" style="padding-right:5%;"><span id="bookTitle" name="bookTitle">신경끄기의기술</span></td>
                            <td class="tdPrice" name="sale" id="sale2">21,000 원</td>
                            <td id="tdQuan"><input type="number" class="quan" min="0" value="1"></td>
                            <td class="tdPrice" name="quan" id="quan2">21,000 원</td>
                            <td id="tdBtn"><input type="button" class="btn1 pickBtn" value="바로구매" onClick="location.href='paymentPage.jsp'">&nbsp;&nbsp;&nbsp;<input type="button" class="btn2 delBtn" value="삭제"></td>
                        </tr>
                        <tr>
                        	<td id="tdChk"><input type="checkbox" class="chk" id="chk3"><input type="hidden" value="30000123"></td>
                            <td class="text-left" id="tdBook"><img name="bookImg" id="bookImg" class="bookImg" src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample3.PNG" alt="미움받을용기" style="padding-right:5%;"><span id="bookTitle" name="bookTitle">미움받을용기</span></td>
                            <td class="tdPrice" name="sale" id="sale3">17,000 원</td>
                            <td id="tdQuan"><input type="number" class="quan" min="0" value="2"></td>
                            <td class="tdPrice" name="quan" id="quan3">34,000 원</td>
                            <td id="tdBtn"><input type="button" class="btn1 pickBtn" value="바로구매" onClick="location.href='paymentPage.jsp'">&nbsp;&nbsp;&nbsp;<input type="button" class="btn2 delBtn" value="삭제"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <!-- 삭제 버튼 -->
            <div class="row">
            	<input type="button" class="btn9" id="selectDelBtn" value="선택 삭제">&nbsp;&nbsp;&nbsp;
                <input type="button" class="btn1" id="allDelBtn" value="전체 삭제">
            </div>

            <!-- 금액 테이블 -->
            <div class="row" style="padding-top:5%;">
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
                            <td id="total">36,500 원</td>
                            <td id="delivery">0 원</td>
                            <td id="orderPrice">36,500 원</td>
                            <td id="point">2,000 원</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- 구매 버튼 -->
            <div class="row justify-content-end" style="padding-top:5%; padding-bottom:5%;">
                <input type="button" class="btn3" id="shopBtn" name="shopBtn" value="쇼핑 계속하기">&nbsp;&nbsp;&nbsp;
                <input type="button" class="btn4" id="orderBtn" name="orderBtn" value="선택상품 주문하기" onClick="location.href='paymentPage.jsp'">&nbsp;&nbsp;&nbsp;
                <input type="button" class="btn5" id="allBtn" name="allBtn" value="전체상품 주문하기" onClick="location.href='paymentPage.jsp'">
            </div>
            
        </div>
    </body>

</html>