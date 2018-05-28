<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8?">
        <title>주문취소</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <script src="<%=request.getContextPath()%>/resources/js/cart/jquery-3.3.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/cart/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/cart/canclePage.js"></script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cart/bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cart/shopping.css">
        <link href="<%=request.getContextPath()%>/resources/css/cart/fontawesome-all.min.css" rel="stylesheet">
    </head>

    <body>
    
    	<header>
    		<%@include file ="../common/Header.jsp" %>
    	</header>
    	
        <div class="container">

            <!-- 주문취소 목록 표시 글 -->
            <div class="d-flex align-items-center" style="padding-top:5%;">
                <i class="fas fa-shopping-basket fa-lg"></i><h3><b>&nbsp;&nbsp;주문 취소</b></h3>
            </div>

            <!-- 취소 상품 확인 테이블 -->
            <div class="row" style="padding-top:5%;">
                <p><b>- 취소하실 상품 내역</b></p>
            </div>
            <div class="row">
                <table class="table table-bordered"> <!-- bootstrap.min.css 에서 table-bordered 안에 text-align:center 추가해줌 -->
                    <thead>
                        <tr>
                            <th scope="col">상품정보</th>
                            <th scope="col">배송 / 판매자</th>
                            <th scope="col">수량</th>
                            <th scope="col">판매가 합계</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-left" style="padding-left:3%;"><img src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample2.PNG" alt="퍼즈" style="padding-right:5%;">퍼즈</td>
                            <td>반딧불이 책방</td>
                            <td>1</td>
                            <td class="text-right" style="padding-right:3%;">15,500 원</td>
                        </tr>
                        <tr>
                            <td class="text-left" style="padding-left:3%;"><img src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample1.PNG" alt="신경끄기의기술" style="padding-right:5%;">신경끄기의기술</td>
                            <td>반딧불이 책방</td>
                            <td>1</td>
                            <td class="text-right" style="padding-right:3%;">21,000 원</td>
                        </tr>
                        <tr>
                            <td class="text-left" style="padding-left:3%;"><img src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample3.PNG" alt="미움받을용기" style="padding-right:5%;">미움받을용기</td>
                            <td>반딧불이 책방</td>
                            <td>2</td>
                            <td class="text-right" style="padding-right:3%;">34,000 원</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- 주문 취소 사유 -->
            <div class="row" style="padding-top:5%;">
                <p><b>- 주문 취소 사유</b></p>
            </div>
            <div class="row">
                <select name="cancle" id="cancle">
                    <option value="base">주문 취소 사유를 선택해주세요.</option>
                    <option value="other">기타</option>
                </select>
                &nbsp;&nbsp;&nbsp;
                <input type="text" id="writeText" placeholder="내용을 입력해주세요." size="50" disabled>
            </div>

            <!-- 환불 금액 -->
            <div class="row justify-content-end" style="padding-top:5%;">
                <div class="col-2" style="border-bottom-style:solid; border-bottom-color:rgb(210, 115, 143);">
                    <h5 style="color:rgb(210, 115, 143);"><b>환불 금액</b></h5>
                </div>
            </div>
            <div class="row justify-content-end" style="padding-top:1%;">
                <p><b>36,500 원</b></p>
            </div>

            <!-- 쇼핑 계속 버튼 -->
            <div class="row justify-content-end" style="padding-top:5%; padding-bottom:5%;">
                <input type="button" class="btn3" value="주문 상세 가기" onClick="location.href='checkPage.jsp'">&nbsp;&nbsp;&nbsp;<input type="button" class="btn5" value="주문 취소 하기" onClick="location.href='cancleComplete.jsp'">
            </div>

        </div>
    </body>

</html>