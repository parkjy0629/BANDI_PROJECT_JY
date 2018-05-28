<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href= "<%=request.getContextPath()%>/resources/css/admin/bootstrap.min.css?ver=1">
    <link rel="stylesheet" href= "<%=request.getContextPath()%>/resources/css/admin/sb-admin-2.min.css?ver=1">
    <link rel="stylesheet" href= "<%=request.getContextPath()%>/resources/css/admin/morris.css?ver=1">
    <link rel="stylesheet" href= "<%=request.getContextPath()%>/resources/css/admin/font-awesome.min.css?ver=1" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script src ="<%=request.getContextPath()%>/resources/js/admin/jquery.min.js"></script>
	<script src ="<%=request.getContextPath()%>/resources/js/admin/bootstrap.min.js?ver=1"></script>
	<script src ="<%=request.getContextPath()%>/resources/js/admin/metisMenu.min.js?ver=1"></script>
	<script src ="<%=request.getContextPath()%>/resources/js/admin/sb-admin-2.min.js?ver=1"></script>
	
<title>BANDI By Admin</title>
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="AdminMain.jsp">반디불이 책방</a>
                    </div>
                    <!-- /.navbar-header -->
        
                    <ul class="nav navbar-top-links navbar-right">       
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="<%=request.getContextPath()%>/index.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                                </li>
                            </ul>
                            <!-- /.dropdown-user -->
                        </li>
                        <!-- /.dropdown -->
                    </ul>
                    <!-- /.navbar-top-links -->
        
                    <div class="navbar-default sidebar" role="navigation">
                        <div class="sidebar-nav navbar-collapse">
                            <ul class="nav" id="side-menu">
                                <li><img src ="<%=request.getContextPath()%>/resources/images/common/bandi.png" style ="width:100%; height:auto;"></li>
                                
                                <li>
                                    <a href="AdminMain.jsp"><i class="fa fa-dashboard fa-fw"></i>Home</a>
                                </li>
        
                                <li>
                                        <a href="#"><i class="fa fa-edit fa-fw"></i>BANDI INFO<span class="fa arrow"></span></a>
                                        <ul class="nav nav-second-level">
                                            <li>
                                                <a href="insertBook.jsp">책정보</a>
                                            </li>
                                            <li>
                                                <a href="insertWriter.jsp">작가 정보</a>
                                            </li>
                                        </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- /.sidebar-collapse -->
                    </div>
                    <!-- /.navbar-static-side -->
                </nav>
                
          <div id="page-wrapper">
          		<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">반디불이 책넣기</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" style ="background-color:#5F4B8B; color:snow;">
                            BANDI BOOK INPUT
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" onsubmit="">
                                        <div class="form-group">
                                                <label>ISBN : </label>
                                                <input type="text" placeholder="ISBN Test" id = "ISBNtext">
                                                <button type ="button" id ="checkDupISBN">중복확인</button>
                                                <span id ="dupResult"></span><br>    
                                        </div>

                                        <div class="form-group">
                                            <label>작가코드</label>
                                            <input type ="text" placeholder="작가 코드를 오른쪽 창에서 선택해주세요" disabled="disabled" id ="wcode">
                                        </div>

                                        <div class="form-group">
                                            <label>Title</label>
                                            <input class="form-control" placeholder="책제목을 입력해주세요" id = "btitle">
                                        </div>

                                        <div class="form-group">
                                                <label>Price</label>
                                                <input class="form-control" placeholder="가격을 입력해주세요" id ="bprice" onkeydown="return onlyNumberKey(event)">
                                        </div>

                                        <div class="form-group">
                                                <label>Publisher</label>
                                                <input class="form-control" placeholder="출판사를 입력해주세요" id ="bpubli" size ="5">
                                        </div>

                                        <div class="form-group">
                                                <label>Page</label>
                                                <input class="form-control" placeholder="페이지수를 입력해주세요" id = "bpage" onkeydown="return onlyNumberKey(event)">
                                        </div>

                                        <div class="form-group">
                                                <label>책 출판지 : </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="국내" checked>국내
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="국외">국외
                                                </label>
                                        </div>
                            
                                        <div class="form-group">
                                            <label>Get Image</label>
                                            <input type="file" id ="bimg">
                                           <button type ="button" id ="dupimg" style ="margin-top:10px;">image 중복확인</button>
                                           <span id ="dupimgtext" style ="margin-left:5px;"></span>
                                        </div>
                                        
                                         
								
                                        <div class="form-group">
                                            <label>책소개</label>
                                            <textarea class="form-control" rows="3" id ="bintro"></textarea>
                                        </div>
                                       
                                        <div class="form-group">
                                            <label>장르코드</label>
                                            <select class="form-control" id ="genre">
                                                <option value ="A1">문학/소설</option>
                                                <option value ="A2">문학/시</option>
                                                <option value ="A3">문학/에세이(자서전)</option>
                                                <option value ="B1">인문/역사/문화</option>
                                                <option value ="B2">인문/종교</option>
                                                <option value ="B3">인문/심리</option>
                                                <option value ="C1">과학/기술/공학</option>
                                                <option value ="C2">과학/컴퓨터/IT</option>
                                                <option value ="D1">취미/가정(요리)</option>
                                                <option value ="D2">취미/운동(건강)</option>
                                                <option value ="D3">취미/여행</option>
                                                <option value ="D4">취미/음악(대중문화)</option>
                                                <option value ="D5">취미/스포츠</option>
                                                <option value ="E1">교육/어린이/청소년</option>
                                                <option value ="E2">교육/참고서(초/중/고)</option>
                                                <option value ="F1">사회/정치/사회</option>
                                                <option value ="F2">사회/경제/경영</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                                <label>발간일 : </label>
                                                <input type="number" placeholder="년" id ="year" onkeydown="return onlyNumberKey(event)">
                                                <input type="number" placeholder="월" id = "month" onkeydown="return onlyNumberKey(event)">
                                                <input type="number" placeholder="일" id ="day" onkeydown="return onlyNumberKey(event)">
                                        </div>

                                        <div class="form-group">
                                                <label>수량</label>
                                                <input class="form-control" placeholder="재고량을 입력해주세요." id ="quant" onkeydown="return onlyNumberKey(event)">
                                        </div>
                                       
                                        <button type="button" class="btn btn-default" id ="bsubmit">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6" style ="padding-left:50px;">
                                    <h1>작가 정보 검색</h1>
									<form onsubmit="return false">
                                            <div class="form-group">
                                                    <label>작가이름 : </label>
                                                    <input type="text" placeholder="작가이름 검색" id ="writerName" name = "writerName">
                                                    <button onclick ="return findWriter();">검색</button>    
                                            </div>
                                            
                                            <select id ="selectWcode" style ="width:100%; display:none;"  >
                                            	
                                            </select>
                                            <br><br>
                                            <h2>작가 선택 결과 및 소개</h2>
                                            <textarea id ="selectWtext" disabled="disabled" style="width:100%; height:200px; resize: none;">
                                            	
                                            </textarea>
                                            
                                    </form> 
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->    
          </div>
	</div>
	
	<script>
		ISBN_CHECK = false;
		IMG_CHECK = false;
	
		// Find Writers by Name
		function findWriter()
		{
			var writerName = $('#writerName').val();
			if(writerName == null || writerName == "")
			{
				alert("작가이름 넣으세요");
				return false;
			}
			else
			{
				$.ajax({
					url : "/BANDI/WriterSearch.do",
					type : "GET",
					data : "writerName="+writerName,
					datatype: "text" ,
					success :
						function(data){
						
						var $select = $('#selectWcode');
						if(data.length != 0)
						{
							
							$select.css('display', 'block');
							$select.find('option').remove();
							
							for(var idx in data)
							{
								$select.append('<option value ='+ data[idx].writerCode + '>'+ idx + " : " + data[idx].writerName + '</option>');
							}
							$('#selectWtext').text(data[0].writerIntroduce);
							$('#wcode').val(data[0].writerCode);
							
						}else
						{
							$select.css('display', 'none');
							$('#selectWtext').text("검색 결과가 없어요!\n 작가코드를 생성해주세요");
							$('#wcode').val("");
						}
					},
					error  : 
						function(data)
						{
							alert(data +  "ajax error!");
						}
				});
				return true;
			}
		}
		
		// When you Select Writer, then Show Information and set Writer Code
		$('#selectWcode').on('change', function(){
			var writerCode = $('#selectWcode option:selected').val();
			$.ajax({
				url : "/BANDI/WriterCode.do",
				type : "GET",
				data : "writerCode="+writerCode,
				datatype: "text" ,
				success: function(data){
					$('#selectWtext').text(data.writerIntroduce);
					$('#wcode').val(data.writerCode);
				},
				error: function(data)
				{
					alert(data + "ajax error!");
				}
			});
		});
		
		// Check Duplicate ISBN in DataBase.
		$('#checkDupISBN').on('click',function(){
			var isbn = $('#ISBNtext').val();
			if(isbn.length == 13)
			{ 
				$.ajax({
					url : "/BANDI/DuplicateISBN.do",
					type  : "GET",
					data : "ISBN="+isbn,
					datatype : "text",
					success : function(data){
						if(data.exist == false)
						{
							$('#dupResult').text("사용가능합니다.").css('color','green');
							ISBN_CHECK = true;
						}
						else
						{
							$('#dupResult').text("중복됩니다.").css('color', 'red');
							ISBN_CHECK = false;
						}
						
						var regexp = /^[0-9]*$/;
						if(!regexp.test($('#ISBNtext').val()))
						{
							$('#dupResult').text("숫자만 입력해넣으세요").css('color', 'red');
							ISBN_CHECK = false;
						}
						
					},
					error  : function(data){
						alert('중복 검사중 에러 발생 :' + data);
					}
				});
			}else
			{
				alert('ISBN 13자리로 입력해주세요');
			}
		});
		
		$('#bsubmit').on('click', function(){
			if(checkValidate())
			{
				$.ajax({
					url : "/BANDI/submitBook.do",
					type : "GET",
					data : {
							"ISBN" : $('#ISBNtext').val(),
							"title" : $('#btitle').val(),
							"writerCode" : $('#wcode').val(),
							"price" : $('#bprice').val(),
							"publisher" : $('#bpubli').val(),
							"page" : $('#bpage').val(),
							"img" : $('#bimg').val(),
							"introduce" : $('#bintro').val(),
							"year" : $('#year').val(),
							"month" : $('#month').val(),
							"day" : $('#day').val(),
							"origin" : $(':radio[name="optionsRadiosInline"]:checked').val(),
							"genre" : $('#genre option:selected').val(),
							"quantity" : $('#quant').val()
						},
					
					success: function() {
						alert('성공 했습니다.');
					},
					error : function() {
						alert('error 코드 발생');
					}
				});
			}
		});

		function checkValidate()
		{
			var key = true;

			if($('#ISBNtext').val().length != 13)
			{
				alert("ISBN이 13자리숫여야 합니다.");
				key = false;
				
			}else if($('#wcode').val() == "")
			{
				alert('작가  코드를 선택해 주세요.');
				key = false;
			}else if($('#btitle').val() == "")
			{
				alert('제목을 입력해 주세요');
				key = false;
			}
			else if($('#bprice').val() == "")
			{
				alert('가격을 입력해 주세요');
				key =  false;
			}else if($('#bpubli').val().length == "")
			{
				alert('출판사를 입력해주세요');
				key = false;
			}else if($('#bpage').val().length == "")
			{
				alert('페이지 수를 입력해주세요');
				key = false;
			}else if($('#bimg').val()== "")
			{
				alert('이미지좀 넣으세요');
				key = false;
			}else if($('#bintro').val()=="")
			{
				alert('책 소개를 좀 넣으세요');
				key = false;
			}else if(($('#year').val() == "") || ($('#month').val() == "") || ($('#day').val() == ""))
			{
				alert("년 월 일을 입력하세요");
				key = false;
			}else if(!IMG_CHECK)
			{
			    key = false;
			    alert('이미지 중복 체크 확인 바랍니다.');
			}else if(!ISBN_CHECK)
			{
				key = false;
				alert('ISBN 중복 체크 확인 바랍니다.');
			}

			return key;
		}

		function onlyNumberKey(event)
		{
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			/* 48~57:일반 숫자키 코드, 96~105:숫자키패드 숫자키 코드 */
			if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105) 
					|| keyID ==8 || keyID == 9 || keyID == 37 || keyID == 39)		 
			{
				return;
			}
			else
			{
				return false;
			}
		}

		$('#dupimg').on('click',function(){

			if($('#bimg').val() != "")
			{
				$.ajax({
					url : "/BANDI/CheckImage.do",
					type : "GET",
					data : {
						"img" : $('#bimg').val(),
					},    
					success: function(data){
						if(data.exist)
						{
							$('#dupimgtext').text("이미 있습니다.").css('color', 'red');
							IMG_CHECK = false;
						}
						else
						{
							$('#dupimgtext').text("사용이 가능해요").css('color', 'green');
							IMG_CHECK = true;
						}
					},
					error : function(data){
						alert("에러 발생");
					}
				});
			}else
			{
				alert('이미지를 넣어주세요');	
			}
			
		});
	</script>
</body>
</html>