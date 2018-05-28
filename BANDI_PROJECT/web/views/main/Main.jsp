<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.semi.bandi.model.vo.Book" %>
<!DOCTYPE html>
<html>
<head>
<%
	String[] array = (String[])session.getAttribute("eventBanner");
	Book[] bookArray = (Book[])session.getAttribute("recommend");
	
	// Best Seeler Book
	Book[] bestSellerArray = (Book[])session.getAttribute("bestSeller");
	
	// 4 * 2 => Show 8 Books
	final int bestSellerHalfCount = 4;
	
	// Rating Area
	Book rateBook = (Book)session.getAttribute("ratedBook");
%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gugi">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gaegu">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gamja Flower">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href= "<%=request.getContextPath()%>/resources/css/main/Maincss.css">
<script src ="<%=request.getContextPath()%>/resources/js/main/jquery-3.3.1.min.js"></script>
<script src ="<%=request.getContextPath()%>/resources/js/main/owl.carousel.js"></script>
<script src ="<%=request.getContextPath()%>/resources/js/main/jquery.mousewheel.min.js"></script>
<script src ="<%=request.getContextPath()%>/resources/js/main/bootstrap.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href = "<%=request.getContextPath()%>/resources/css/main/owl.carousel.css" rel ="stylesheet">
<link href = "<%=request.getContextPath()%>/resources/css/main/owl.theme.default.css" rel = "stylesheet">
<script src ="<%=request.getContextPath()%>/resources/js/main/main.js"></script>
<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/images/ico/bandicon.ico">

<title>반딧불이 책방</title>
</head>
<body>
	 <header>
		<!-- Here is Need to Header Line -->
		<%@include file ="../common/Header.jsp" %>
	</header>
	
	<div class ="w3-wide" style ="background-image: url(<%=request.getContextPath()%>/resources/images/eventBanner/wood.jpg); padding-bottom:20px; padding-top:20px; border-bottom: 5px ridge #5F4B8B;">
<div class="w3-content" style="max-width:900px; margin-top:10px;margin-bottom:10px">
  
  <div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li class="item1 active"></li>
      <li class="item2"></li>
      <li class="item3"></li>
      <li class="item4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<%=request.getContextPath()%>/resources/images/eventBanner/<%=array[0]%>" name ="eventBanner">  
      </div>

      <div class="item">
        <img src="<%=request.getContextPath()%>/resources/images/eventBanner/<%=array[1]%>" name ="eventBanner">
      </div>
    
      <div class="item">
        <img src="<%=request.getContextPath()%>/resources/images/eventBanner/<%=array[2]%>" name ="eventBanner">
      </div>

      <div class="item">
        <img src="<%=request.getContextPath()%>/resources/images/eventBanner/<%=array[3]%>" name ="eventBanner">
      </div>
  
    </div>

    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" role="button">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	   
	    </a>
	    <a class="right carousel-control" href="#myCarousel" role="button">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      
	    </a>
	  </div>
	</div>
	</div>
	
	<!-- recommend by BANDI START -->
	<div class ="w3-row w3-container">
      <div class ="w3-center w3-padding-64">
              <div class="first-container share">
              <h1><span id="one">반</span><span>디</span><span>의</span> <span>추</span><span>천</span></h1>
              </div>
      </div>
  	</div>
  	  	
  	<div class="w3-content" style="max-width:1300px; margin-top:10px; margin-bottom:10px; border-top: 3px solid #5F4B8B;
  		border-bottom:3px solid #5F4B8B;">
    
	    <div class="loop owl-carousel owl-theme" id ="bandirecommend">
	    <% for(int i = 0; i < bookArray.length; i++) { %>
	        <div class="item">
	          <img src ="<%=request.getContextPath()%>/resources/bookimage/<%=bookArray[i].getmImagePath()%>?ver=1" class ="owl_carousel_img_sheet w3-hover-shadow" name ="recommendBooks" 
	          id="<%=bookArray[i].getmISBN()%>" onclick="imageEvent(this);">
	        </div>
	    <% } %>
      </div>
  	</div>
	<!-- recommend by BANDI END -->
	
	<!--  BEST SELLER START TITLE -->
	<div class ="w3-row w3-container">
      <div class ="w3-center w3-padding-64">
          <div class="first-container share">
              <h1><span id="one">베</span><span>스</span><span>트</span><span>셀</span><span>러</span></h1>
          </div>
      </div>
  	</div>
	<!--  BEST SELLER END TITLE -->
	
	<!-- CATEGORY BUTTON START [BESTSELLER] -->
	<div class="w3-content" style="max-width:1100px; margin-top:10px;margin-bottom:40px; text-align: center;">
	    <div class ="w3-row">
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick1 TAGbutton' 
	          id = "bsLiterary" name ="bsLiterary" value="문학"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">문학</b></button>
	      </div>
	
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick2 TAGbutton'
	           id = "bsEdu" name ="bsEdu" value ="교육"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">교육</b></button>
	      </div>
	
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick3 TAGbutton' 
	          id ="bsHobby" name = "bsHobby" value ="취미"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">취미</b></button>
	      </div>
	      
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick4 TAGbutton' 
	          id ="bsHuman" name ="bsHuman"  value ="인문"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">인문</b></button>
	      </div>
	
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick5 TAGbutton' 
	          id = "bsSociety" name ="bsSociety" value ="사회"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">사회</b></button>
	      </div>
	      
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick6 TAGbutton' id ="bsScience" name ="bsScience" value ="과학"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">과학</b></button>
	      </div>
	    </div>
  	</div>
	<!-- CATEGORY BUTTON END [BESTSELLER] -->
	
	<!--  Best Seller Book[VIEW] START -->
	<div class="w3-content" style="max-width:1100px; margin-top:10px;margin-bottom:10px">
		<div class="w3-row">
		  <% for(int i = 0; i < bestSellerArray.length/2; i++) { %>
			  <div class="w3-col l3 s6">
			  	<div class="w3-container" style = "margin-bottom: 50px;">
			  		<div class="w3-display-container">
			  			<img src="<%=request.getContextPath()%>/resources/bookimage/<%=bestSellerArray[i].getmImagePath()%>" style="width:100%" class = "w3-hover-opacity">
			  			<span class="w3-display-topleft Sparking_Grape rank_number"><%=i+1%></span>
			  			<div class="w3-display-hover w3-display-middle">      
                  			<a href="#" class="main_spec_view_a"><span>상세보기</span></a>
              			</div>
			  		</div>
			  			<span class = "TypeOf_Span"><% if(bestSellerArray[i].getmTitle().length() < 20){%><%=bestSellerArray[i].getmTitle()%>  <%}else{ %><%=bestSellerArray[i].getmTitle().substring(0, 9)+".."%><% } %></span><br>
            			<span class = "TAG_SPAN_PRICE_TEXT"><%=bestSellerArray[i].getmPrice()%>원</span>
            		
			  	</div>
			  		
            	<div class="w3-container">
		            <div class="w3-display-container">
		              <img src="<%=request.getContextPath()%>/resources/bookimage/<%=bestSellerArray[i+bestSellerHalfCount].getmImagePath()%>" style="width:100%" class = "w3-hover-opacity">
		              <span class="w3-display-topleft Sparking_Grape rank_number"><%=i+1+bestSellerHalfCount%></span>
		              	<div class="w3-display-middle w3-display-hover">
		                  	<a href="#" class="main_spec_view_a"><span>상세보기</span></a>
		              	</div>
		            </div>
		            <span class = "TypeOf_Span"><% if(bestSellerArray[i+bestSellerHalfCount].getmTitle().length() < 20){%><%=bestSellerArray[i+bestSellerHalfCount].getmTitle()%>  <%}else{ %><%=bestSellerArray[i+bestSellerHalfCount].getmTitle().substring(0, 9)+".."%><% } %></span><br>
            		<span class = "TAG_SPAN_PRICE_TEXT"><%=bestSellerArray[i+bestSellerHalfCount].getmPrice()%>원</span>
		          </div>
			  </div>
			  <%}%>
		</div>
	</div>
	<!--  Best Seller Book[VIEW] END -->
	
	<!-- USER RECOMMEND TITLE START -->
	<div class ="w3-row w3-container">
    	<div class ="w3-center w3-padding-64">
        	<div class="first-container share">
            	<h1><span id="one">유</span><span>저</span><span>의</span> <span>추</span><span>천</span></h1>
        	</div>
    	</div>
	</div>
	
	<div class="w3-content" style="max-width:1100px; margin-top:10px;margin-bottom:40px; text-align: center;">
	    <div class ="w3-row">
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick1 TAGbutton' 
	          id = "urLiterary" name ="urLiterary" value="문학"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">문학</b></button>
	      </div>
	
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick2 TAGbutton'
	           id = "urEdu" name ="urEdu" value ="교육"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">교육</b></button>
	      </div>
	
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick3 TAGbutton' 
	          id ="urHobby" name ="urHobby" value ="취미"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">취미</b></button>
	      </div>
	      
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick4 TAGbutton' 
	          id ="urHuman" name ="urHuman"  value ="인문"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">인문</b></button>
	      </div>
	
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick5 TAGbutton' 
	          id = "urSociety" name ="urSociety" value ="사회"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">사회</b></button>
	      </div>
	      
	      <div class ="w3-col l2 m4 s4" style ="padding:15px;">
	          <button class='thick6 TAGbutton' id ="urScience" name ="urScience" value ="과학"><b style ="font-family: 'Gaegu'; font-size: 1.5em;">과학</b></button>
	      </div>
	    </div>
  	</div>
	<!-- USER RECOMMEND TITLE END -->
	
	<!-- USER RECOMMEND DATA START -->
	<div class="w3-content" style="max-width:1100px; margin-top:10px; margin-bottom:10px; border:3px dashed #5F4B8B;">
		<div class ="w3-row">
			<div class ="w3-col l4 s12 m6 w3-center">
        		<img src ="<%=request.getContextPath()%>/resources/bookimage/junk/book101.jpg" class ="owl_carousel_img_sheet w3-hover-shadow">
      		</div>
      		
      		<div class ="w3-col l8 s12 m6" style ="text-align: center;">
      			<span style ="font-size: 4em; font-family: 'Gaegu'">JAVA 의 정석 </span>
      			<span style ="font-family :'Gaegu'; font-size:1.5em; color:darkslategray;">[남궁성 지음]</span> <br>
      			 
      			<span class="fa fa-star checked"></span>
          		<span class="fa fa-star checked"></span>
          		<span class="fa fa-star checked"></span>
          		<span class="fa fa-star checked"></span>	
          		<span class="fa fa-star checked"></span>
          		
          		<span style ="font-family: bold; font-size:1.5em; margin-left: 5px;"> <span style ="color:red"> 9.8</span> / 10 </span>
          		
          		<div class="button-container-2" style ="margin-right:20px;">
              		<span class="mas">39000원</span>
              		<button type="button" name="Hover">
                	Price
              	</button>
            </div> 
            
            <div style ="text-align: center; margin-bottom: 20px; font-family: Gugi; font-size: 2em; margin-top:10px;">반디들의
             <b style ="color:#A35776">소리</b></div>
	             <% for(int i = 0; i < 3; i++) { %>
		      		<div class = "w3-row  comment_box">
		              <div class = "w3-col l10 s10 m10">
		                ID1 : 영어해석좀 부탁드립니다만..
		              </div>
		              <div class ="w3-col l2 s2 m2">
		                2018-05-10
		              </div> 
		            </div>
	            <% } %>
      		</div>
		</div>
	</div>
	<!-- USER RECOMMEND DATA END -->
	<script>
		function imageEvent(e)
		{
			var f = $(e).attr('id');
			console.log(f);
			
		}
	</script>
	<!-- FOOTER START -->
	<footer>
		<%@include file ="../common/Footer.jsp" %>
	</footer>
	<!-- FOOTER END -->
</body>
</html>