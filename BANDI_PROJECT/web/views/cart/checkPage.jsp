<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8?">
        <title>주문 / 배송조회</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <script src="<%=request.getContextPath()%>/resources/js/cart/jquery-3.3.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/cart/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/cart/checkPage.js"></script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cart/bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cart/shopping.css">
        <link href="<%=request.getContextPath()%>/resources/css/cart/fontawesome-all.min.css" rel="stylesheet">
    </head>

    <body>
    
    	<header>
    		<%@include file ="../common/Header.jsp" %>
    	</header>
    	
        <div class="container">

            <!-- 주문/배송조회 목록 표시 글 -->
            <div class="d-flex align-items-center" style="padding-top:5%;">
                <i class="fas fa-search fa-lg"></i><h3><b>&nbsp;&nbsp;주문 / 배송 조회</b></h3>
            </div>

            <!-- 주문자 정보 확인 테이블 -->
            <div class="row justify-content-between" style="padding-top:5%;">
                <div class="col-3">
                    <p><b>- 주문자 정보</b></p>
                </div>
                <div class="col-2">
                    <input type="button" class="btn6" value="주문 전체 취소" onClick="location.href='canclePage.jsp'">
                </div>
            </div>
            <div class="row">
                <table class="table table-bordered"> <!-- bootstrap.min.css 에서 table-bordered 안에 text-align:center 추가해줌 -->
                    <tr>
                        <th scope="col">주문하신 분</th>
                        <td colspan="3" class="text-left" style="padding-left:3%;">홍길동</td>
                    </tr>
                    <tr>
                        <th>휴대폰 번호</th>
                        <td class="text-left" style="padding-left:3%;">010-1234-5678</td>
                        <th>이메일</th>
                        <td class="text-left" style="padding-left:3%;">test1234@test.com</td>
                    </tr>
                </table>
            </div>

            <!-- 배송 정보 -->
            <div class="row" style="padding-top:5%;">
                <p><b>- 배송 정보</b></p>
            </div>
            <div class="row justify-content-between">
                <div class="col-4">
                    <p>XXX 시 XXX 구 XXX 동 XXX- XX 번지 XXXX호</p>
                </div>
                <div class="col-2">
                    <input type="button" class="btn6" value="주문 선택 취소" onClick="location.href='canclePage.jsp'">
                </div>
            </div>

            
            <!-- 배송 정보 테이블 -->
            <div class="row">
                <table class="table table-bordered"> <!-- bootstrap.min.css 에서 table-bordered 안에 text-align:center 추가해줌 -->
                    <thead>
                        <tr>
                            <th scope="col">주문번호</th>
                            <th scope="col">상품정보</th>
                            <th scope="col">배송 / 판매자</th>
                            <th scope="col">수량</th>
                            <th scope="col">판매가 합계</th>
                            <th scope="col">주문상태</th>
                            <th scope="col"><input type="checkbox" name="chkAll" id="chkAll"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td rowspan="3">201805070001<br>(2018-05-02)</td>
                            <td class="text-left" style="padding-left:3%;"><img src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample2.PNG" alt="퍼즈" style="padding-right:5%;">퍼즈</td>
                            <td>반딧불이 책방</td>
                            <td>1</td>
                            <td class="text-right" style="padding-right:3%;">15,500 원</td>
                            <td>주문 접수</td>
                            <td><input type="checkbox" name="chk1" id="chk1"></td> <!-- bootstrap.min.css 에서 .table td,.table th 안에 vertical-align:middle로 변경 -->
                        </tr>
                        <tr>
                            <td class="text-left" style="padding-left:3%;"><img src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample1.PNG" alt="신경끄기의기술" style="padding-right:5%;">신경끄기의기술</td>
                            <td>반딧불이 책방</td>
                            <td>1</td>
                            <td class="text-right" style="padding-right:3%;">21,000 원</td>
                            <td>주문 접수</td>
                            <td><input type="checkbox" name="chk1" id="chk1"></td> <!-- bootstrap.min.css 에서 .table td,.table th 안에 vertical-align:middle로 변경 -->
                        </tr>
                        <tr>
                            <td class="text-left" style="padding-left:3%;"><img src="<%=request.getContextPath()%>/resources/images/cart/BOOK/sample3.PNG" alt="미움받을용기" style="padding-right:5%;">미움받을용기</td>
                            <td>반딧불이 책방</td>
                            <td>2</td>
                            <td class="text-right" style="padding-right:3%;">34,000 원</td>
                            <td>주문 접수</td>
                            <td><input type="checkbox" name="chk1" id="chk1"></td> <!-- bootstrap.min.css 에서 .table td,.table th 안에 vertical-align:middle로 변경 -->
                        </tr>
                    </tbody>
                </table>
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

            <!-- 결제 정보 -->
            <div class="row justify-content-between" style="padding-top:5%;">
                <p><b>- 결제 정보</b></p>
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

            <!-- 구매 버튼 -->
            <div class="row justify-content-end" style="padding-top:5%; padding-bottom:5%;">
                <input type="button" class="btn3" value="쇼핑 계속하기">
            </div>

        </div>
    </body>

</html>