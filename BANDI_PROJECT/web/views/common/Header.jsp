<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.semi.bandi.model.vo.Book" %>
<%@ page import="com.semi.bandi.model.vo.*" %>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href= "<%=request.getContextPath()%>/resources/css/common/header.css?ver=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gugi">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gaegu">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gamja Flower">
	
	<%
		String typeByHeader = "ThrowType";
		String typeHanStartJSP = "HanStar.jsp";
		
		String searchJSP = "hk.jsp";
	%>
	
	<% 
		User user = (User)session.getAttribute("user");
	%>
	
	<%
		boolean key = true;
	
		//TEMP
		if(key)
		{
			user = new User();
			user.setmJob("ADM");
			user.setmGender('M');
			
			// [START] USER LOGIN TEST 
			user.setmUser_UID(4);
			session.setAttribute("user", user);
			// [END] USER LOGIN TEST
		}
	%>

<style>
  #bandiLogo:HOVER
  {
  	cursor: pointer;
  }
   
</style>

<div class ="w3-wide" style ="padding-bottom:20px; padding-top:20px; padding-left: 20px; padding-right:20px;">
	<div class = "w3-container">
		<div class ="w3-row">
			 <div class = "w3-col l3 m12 s12 w3-center">
			 	<img src ="<%=request.getContextPath()%>/resources/images/common/bandi.png"  style ="max-height: 80px;"
			 	onclick="location='<%=request.getContextPath()%>/views/main/Main.jsp'" id ="bandiLogo">
			 </div>
			<form action ="/BANDI/Search.do" method ="GET" onsubmit="return checkBlank(this);" name ="searchSubmit">
				 <div class = "w3-col l5 m12 s12 w3-center" style ="padding-top: 30px;">
				 	<select name="searchBy" id="searchBy">
	                         <option value="totalSearch" selected>통합검색</option>
	                         <option value="bookSearch">도서명</option>
	                         <option value="authorSearch">저자명</option>
	                         <option value="publisherSearch">출판사명</option>
	                </select>
	                
	                <input type="search" placeholder="반디불이 세상!" aria-label="Search" class = "searchbar" id = "searchBar" name ="searchText">
	                
	                <button class="bubbly-button">검색</button>
				 </div>
			 </form>
			 
			 <% if(user != null && user.getmJob().equals("ADM")){ %>
				 <div class = "w3-col l4 m12 s12" style ="padding-top:30px;">
				 	<button class="button w3-right" id ="adminBtn" onclick="location='<%=request.getContextPath()%>/views/admin/AdminMain.jsp'">
				 		<img src="<%=request.getContextPath()%>/resources/images/common/admin.png" style ="width:40px; margin:10px;height:auto;">
				 		<div class="button__horizontal"></div>
	                    <div class="button__vertical"></div>
				 	</button>
			 <%}%>
			 
			 <form action ="/BANDI/cart.ct" method ="POST" onsubmit="return loginCheck(this);" name ="cartSubmit">
			 	<button class="button w3-right">
			 		<img src="<%=request.getContextPath()%>/resources/images/common/cart.jpg" style ="width:60px; height:auto;">
			 		<div class="button__horizontal"></div>
                    <div class="button__vertical"></div>
			 	</button>
			</form>
			
			 	<button class="button1 type3 w3-right" style ="margin-left: 15px; font-family: 'Gamja Flower'" onclick="location='<%=request.getContextPath()%>/views/join/Sign_up.jsp'"> 
                    	회원가입
                </button>
               
               <% if(user == null) { %>
                	<button class="button1 type3 w3-right" style ="margin-left: 15px;  font-family: 'Gamja Flower'" 
               	 	onclick="location='<%=request.getContextPath()%>/views/member/jlogin.jsp'">
                    	로그인	
                	</button>
                	
               <% }else { %>
                <form action ="/BANDI/logout.do" method ="post"> 
               	<button class="button1 type3 w3-right" style ="margin-left: 15px;  font-family: 'Gamja Flower'" 
               	onclick ="location='logout.jsp'">
                    	로그아웃	
                </button>
                 </form>
                 
                <button class="button1 type3 w3-right" style ="margin-left: 15px;  font-family: 'Gamja Flower'" 
               	onclick ="location='<%=request.getContextPath()%>/views/member/jmypage.jsp'">
                    	마이페이지	
                </button>
               <% } %>
               
			 </div>       
		</div>
	</div>
</div>

<div class ="w3-wide" style ="background:#5F4B8B; padding-bottom:5px; padding-top:5px; padding-left: 20px; padding-right:20px;
">
	<div class ="w3-row">
	<ul id="menu" style ="padding-left: 15%;">
    <li class="parent"  style ="border-right: none">
      <div class="header-container" onclick="touchBarBtn();">
          <div class="bar1"></div>
          <div class="bar2"></div>
          <div class="bar3"></div>
      </div>

      <ul class="child">
          <li class="parent"><a href="/BANDI/category.do?code=A">문학</a>
            <ul class="child">
              <li><a href="/BANDI/category.do?code=A1">소설</a></li>
              <li><a href="/BANDI/category.do?code=A2">시</a></li>
              <li><a href="/BANDI/category.do?code=A3">에세이(자서전)</a></li>
            </ul>
          </li>

          <li class="parent"><a href="/BANDI/category.do?code=E">교육</a>
            <ul class="child">
              <li><a href="/BANDI/category.do?code=E1">어린이/청소년</a></li>
              <li><a href="/BANDI/category.do?code=E2">참고서(초/중/고)</a></li>
            </ul>
          </li>

          <li class="parent"><a href="/BANDI/category.do?code=D">취미</a>
            <ul class="child">
              <li><a href="/BANDI/category.do?code=D1">가정(요리)</a></li>
              <li><a href="/BANDI/category.do?code=D2">운동(건강)</a></li>
              <li><a href="/BANDI/category.do?code=D3">여행</a></li>
              <li><a href="/BANDI/category.do?code=D4">음악(대중문화)</a></li>
              <li><a href="/BANDI/category.do?code=D5">스포츠</a></li>
            </ul>
          </li>

          <li class="parent"><a href="/BANDI/category.do?code=B">인문</a>
            <ul class="child">
              <li><a href="/BANDI/category.do?code=B1">역사/문화</a></li>
              <li><a href="/BANDI/category.do?code=B2">종교</a></li>
              <li><a href="/BANDI/category.do?code=B3">심리</a></li>
            </ul>
          </li>

          <li class="parent"><a href="/BANDI/category.do?code=F">사회</a>
            <ul class="child">
              <li><a href="/BANDI/category.do?code=F1">정치/사회</a></li>
              <li><a href="/BANDI/category.do?code=F2">경제/경영</a></li>
            </ul>
          </li>

          <li class="parent"><a href="/BANDI/category.do?code=C">과학</a>
            <ul class="child">
              <li><a href="/BANDI/category.do?code=C1">기술/공학</a></li>
              <li><a href="/BANDI/category.do?code=C2">컴퓨터/IT</a></li>
            </ul>
          </li>
      </ul>
    </li>
</ul>
</div>
</div>



<script>
  
	function checkBlank()
	{
		var checkBlank = $('#searchBar').val();

		if(checkBlank == ""){
			alert("검색어를 입력하세요");	
			return false;
		}else
		{return true;}
	}
	
	function loginCheck()
	{
		var user = <%=user%>;
		
		if(user == null)
		{
			alert("로그인이 필요합니다.");
			location.href = "<%=request.getContextPath()%>/views/member/jlogin.jsp";
			return false;
		}
		else
		{
			return true;
		}
	}

	var animateButton = function(e) {
		
		e.preventDefault;
		//reset animation
		e.target.classList.remove('animate');

		e.target.classList.add('animate');
		setTimeout(function(){
		  e.target.classList.remove('animate');
		},700);
	};

		var bubblyButtons = document.getElementsByClassName("bubbly-button");

		for (var i = 0; i < bubblyButtons.length; i++) {
		bubblyButtons[i].addEventListener('mouseenter', animateButton, false);
		}

	
</script>

