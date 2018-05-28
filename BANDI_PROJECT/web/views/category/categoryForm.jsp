<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>category form</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/admin/js/jquery-3.3.1.min.js"></script>
        <script src="js/holder.js"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
	    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/category.js"></script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<%=request.getContextPath()%>/resources/css/category/category.css" rel="stylesheet">
        <style type="text/css">
        </style>
</head>
<body>
	<%@include file ="../common/Header.jsp" %>
       
        <div class="container">
            <nav class="w3-sidebar w3-bar-block w3-Deep-Purple w3-collapse w3-top" style="z-index:3;width:250px;" id="mySidebar">
                <div class="w3-container w3-display-container w3-padding-16">
                    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
                    <h3 class="w3-wide"><b>LOGO</b></h3>
                </div>
                
            <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
                <!-- 메뉴1 -->
                <a onclick="myAccFunc1()" href="javascript:void(0)" class="w3-button w3-block w3-Deep-Purple w3-left-align" id="myBtn">
                            문학 <i class="fa fa-caret-down"></i></a>
                  <div id="demoAcc1" class="w3-bar-block w3-hide w3-padding-large w3-medium w3-Deep-Purple">
                    <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>소설 </a>
                    <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>시</a>
                    <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>에세이(자서전)</a>
                  </div>    
                <!-- 메뉴2 -->
                <a onclick="myAccFunc2()" href="javascript:void(0)" class="w3-button w3-block w3-Deep-Purple w3-left-align" id="myBtn">
                        교육 <i class="fa fa-caret-down"></i></a>
                  <div id="demoAcc2" class="w3-bar-block w3-hide w3-padding-large w3-medium w3-Deep-Purple">
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>어린이/청소년 </a>
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>참고서(초/중/고)</a>
                      </div>
                <!-- 메뉴3 -->
                <a onclick="myAccFunc3()" href="javascript:void(0)" class="w3-button w3-block w3-Deep-Purple w3-left-align" id="myBtn">
                        취미 <i class="fa fa-caret-down"></i></a>
                      <div id="demoAcc3" class="w3-bar-block w3-hide w3-padding-large w3-medium w3-Deep-Purple">
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>가정 (요리)</a>
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>운동 (건강)</a>
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>여행</a>
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>음악 (대중문화)</a>
              </div>
                <!-- 메뉴4 -->
                <a onclick="myAccFunc4()" href="javascript:void(0)" class="w3-button w3-block w3-Deep-Purple w3-left-align" id="myBtn">
                        인문 <i class="fa fa-caret-down"></i></a>
                  <div id="demoAcc4" class="w3-bar-block w3-hide w3-padding-large w3-medium w3-Deep-Purple">
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>역사/문화 </a>
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>종교</a>
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>심리</a>
                      </div>
                <!-- 메뉴5 -->    
                <a onclick="myAccFunc5()" href="javascript:void(0)" class="w3-button w3-block w3-Deep-Purple w3-left-align" id="myBtn">
                        사회 <i class="fa fa-caret-down"></i></a>
                  <div id="demoAcc5" class="w3-bar-block w3-hide w3-padding-large w3-medium w3-Deep-Purple" >
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>정치/사회 </a>
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>경제/경영</a>
                      </div>
                <!-- 메뉴6 -->    
                <a onclick="myAccFunc6()" href="javascript:void(0)" class="w3-button w3-block w3-Deep-Purple w3-left-align" id="myBtn">
                        과학 <i class="fa fa-caret-down"></i></a>
                  <div id="demoAcc6" class="w3-bar-block w3-hide w3-padding-large w3-medium w3-Deep-Purple">
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>기술/공학 </a>
                        <a href="#" class="w3-bar-item w3-button w3-Deep-Purple"><i class="fa fa-caret-right w3-margin-right"></i>컴퓨터/IT</a>
                      </div>
              
            </div>
          </nav>
          <!-- Top menu on small screens -->
            <header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
                <div class="w3-bar-item w3-padding-24 w3-wide">LOGO</div>
                <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
            </header>
            <!-- Overlay effect when opening sidebar on small screens -->
            <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

            <!-- !PAGE CONTENT! -->
            <div class="w3-main" style="margin-left:250px">
                

           <!-- 메인 타이틀 -->
           <header class="w3-container w3-xlarge"><br><br><br></header>
              
    
            <!-- 페이지네이션 -->
            <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
	
                    <!--페이지-->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!--페이지-->
                
                    <div class="carousel-inner w3-pale-red"><h3>신규도서</h3>
                        <!--슬라이드1-->
                        <div class="item active"> 
                            <img src="images/book.jpg" style="width:40%; height: 400px; padding: 48px" alt="First slide">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>이책을 소개하자면 이야기가 길어질수도 있습니다</h1> <!-- -->
                                    <p>김한결</p> 
                                </div>
                            </div>
                        </div>
                        <!--슬라이드1-->
                
                        <!--슬라이드2-->
                        <div class="item"> 
                            <img src="images/book.jpg" style="width:40%; height: 400px; padding: 48px" data-src="" alt="Second slide">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>이책을 소개하자면 이야기가 길어질수도 있습니다</h1>
                                    <p>김한결</p>
                                </div>
                            </div>
                        </div>
                        <!--슬라이드2-->
                        
                        <!--슬라이드3-->
                        <div class="item"> 
                            <img src="images/book.jpg" style="width:40%; height: 400px; padding: 48px" data-src="" alt="Third slide">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>이책을 소개하자면 이야기가 길어질수도 있습니다</h1>
                                    <p>김한결</p>
                                </div>
                            </div>
                        </div>
                        <!--슬라이드3-->
                    </div>
                    
                    <!--이전, 다음 버튼-->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
                    <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
                </div>
            <!-- 이미지 항목 -->
            <div class="w3-container w3-center w3-xxxlarge" id="gall">
                    <p>인기 도서</p>
                  </div>
                  <div class="w3-row ">
                        <div class="w3-col l3 s6">
                          <div class="w3-container">
                            <img src="images/book.jpg" style="width:100%">
                            <p>제목은 뭐로하지?<br><b>김한결</b><br><b>6000원</b></p>
                          </div>
                          <div class="w3-container">
                            <img src="images/book.jpg" style="width:100%">
                            <p>제목은 뭐로하지?<br><b>김한결</b><br><b>7000원</b></p>
                          </div>
                        </div>
                    
                        <div class="w3-col l3 s6">
                          <div class="w3-container">
                            <div class="w3-display-container">
                              <img src="images/book.jpg" style="width:100%">
                            </div>
                            <p>제목은 뭐로하지?<br><b>김한결</b><br><b>8000원</b></p>
                          </div>
                          <div class="w3-container">
                            <img src="images/book.jpg" style="width:100%">
                            <p>제목은 뭐로하지?<br><b>김한결</b><br><b>9000원</b></p>
                          </div>
                        </div>
                    
                        <div class="w3-col l3 s6">
                          <div class="w3-container">
                            <img src="images/book.jpg" style="width:100%">
                            <p>제목은 뭐로하지?<br><b>김한결</b><br><b>10000원</b></p>
                          </div>
                          <div class="w3-container">
                            <div class="w3-display-container">
                              <img src="images/book.jpg" style="width:100%">
                            </div>
                            <p>제목은 뭐로하지?<br><b>김한결</b><br><b>11000원</b></p>
                          </div>
                        </div>
                    
                        <div class="w3-col l3 s6">
                          <div class="w3-container">
                            <img src="images/book.jpg" style="width:100%">
                            <p>제목은 뭐로하지?<br><b>김한결</b><br><b>$24.99</b></p>
                          </div>
                          <div class="w3-container">
                            <img src="images/book.jpg" style="width:100%">
                            <p>제목은 뭐로하지?<br><b>김한결</b><br><b>$24.99</b></p>
                          </div>
                        </div>
                      </div>
                      <div class="w3-container w3-center w3-xxxlarge" id="gall">
                            <p>최고 판매 도서</p>
                          </div>
                          <div class="w3-row ">
                                <div class="w3-col l3 s6">
                                  <div class="w3-container">
                                    <img src="images/book.jpg" style="width:100%">
                                    <p>제목은 뭐로하지?<br><b>김한결</b><br><b>6000원</b></p>
                                  </div>
                                  <div class="w3-container">
                                    <img src="images/book.jpg" style="width:100%">
                                    <p>제목은 뭐로하지?<br><b>김한결</b><br><b>7000원</b></p>
                                  </div>
                                </div>
                            
                                <div class="w3-col l3 s6">
                                  <div class="w3-container">
                                    <div class="w3-display-container">
                                      <img src="images/book.jpg" style="width:100%">
                                    </div>
                                    <p>제목은 뭐로하지?<br><b>김한결</b><br><b>8000원</b></p>
                                  </div>
                                  <div class="w3-container">
                                    <img src="images/book.jpg" style="width:100%">
                                    <p>제목은 뭐로하지?<br><b>김한결</b><br><b>9000원</b></p>
                                  </div>
                                </div>
                            
                                <div class="w3-col l3 s6">
                                  <div class="w3-container">
                                    <img src="images/book.jpg" style="width:100%">
                                    <p>제목은 뭐로하지?<br><b>김한결</b><br><b>10000원</b></p>
                                  </div>
                                  <div class="w3-container">
                                    <div class="w3-display-container">
                                      <img src="images/book.jpg" style="width:100%">
                                    </div>
                                    <p>제목은 뭐로하지?<br><b>김한결</b><br><b>11000원</b></p>
                                  </div>
                                </div>
                            
                                <div class="w3-col l3 s6">
                                  <div class="w3-container">
                                    <img src="images/book.jpg" style="width:100%">
                                    <p>제목은 뭐로하지?<br><b>김한결</b><br><b>$24.99</b></p>
                                  </div>
                                  <div class="w3-container">
                                    <img src="images/book.jpg" style="width:100%">
                                    <p>제목은 뭐로하지?<br><b>김한결</b><br><b>$24.99</b></p>
                                  </div>
                                </div>
                              </div>
   			 </div>
        </div>
        
</body>
</html>