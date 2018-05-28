<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Page</title>
<script src="<%=request.getContextPath()%>/resources/js/member/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/member/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member/bootstrap.min.css">
<style>      
.sidebar {
	    position: absolute;
    /* top: 400px; */
    /* bottom: 0; */
    height: 800px;
    left: 0;
    display: block;
    padding: 20px;
    overflow-x: hidden;
    overflow-y: auto;
    background-color: #773376;
    opacity : 0.8;
    color:snow;
    border-right: 1px solid #eee;
}

#tel{
	width:50px;
    height:23;
}

</style>
</head>
<body>

<header>
	<%@include file ="../common/Header.jsp" %>
</header>
<div class="container-fluid">
            <div class="row">
            	<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sidebar">
            		<ul>
            			<li class="active">123</li>
            			<li>456</li>
            			<li>789</li>
            		</ul>
            	</div>
                <div role="main" class="col-xs-8 col-xs-offset-2 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-10 col-lg-offset-2"
                style ="padding-left: 50px;">
                    <div>
                        <h1 class="h2">회원 정보 수정</h1>       
                    </div>
                    <hr style="width:100%; height:3px;">
                    <div class="table-responsive">
                        <h5><strong>필수정보</strong></h5>
                        <table class="table table-bordered">
                            <tr>
                                <td class="col-sm-2">회원번호</td>
                                <td class="col-sm-8"></td>
                            </tr>
                            <tr>
                                <td class="col-sm-2">아이디</td>
                                <td class="col-sm-8">4</td>
                            </tr>
                            <tr>
                                <td class="col-sm-2">이름</td>
                                <!-- <td class="col-sm-8">
                                    <button type="button" class="btn btn-primary btn-xs">변경</button>
                                    <span class="infoGray">* 개명하신 경우 본인인중 후 이름변경이 가능합니다.</span>
                                </td> -->
                            </tr>
                            <tr>
                                <td class="col-sm-2">닉네임</td>
                                <td class="col-sm-8 form-group">
                                    <input type="text" style="width:100px; height:23px;">
                                    <button type="button" class="btn btn-primary btn-xs">변경</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-sm-2">성별</td>
                                <td class="col-sm-8 radio">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">여자&nbsp;&nbsp;&nbsp;
                                    </label> 
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">남자
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-sm-2">생년월일</td>
                                <td class="col-sm-8 form-group radio">
                                    <input type="text" style="width:50px; height:23px">년
                                    <input type="text" style="width:50px; height:23px">월
                                    <input type="text" style="width:50px; height:23px">일
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">음력
                                    </label> 
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">양력
                                    </label>
                                </td>
                            </tr>
                            <!-- <tr>
                                <td class="col-sm-2">이메일</td>
                                <td class="col-sm-8 form-group">
                                    <input type="email" style="width:300px; height:23px">
                                </td>
                            </tr> -->
                        </table>
                    </div>
                    <hr style="width:100%; height:3px;">
                    <div class="table-responsive">
                        <h5>기본 배송 정보</h5>
                        <table class="table table-bordered">
                            <tr>
                                <td class="col-sm-2">휴대폰</td>
                                <td class="col-sm-8">
                                    <input type="text" maxlength="3" name="tel1" size="2" id="tel">-
                                    <input type="text" maxlength="4" name="tel2" size="2" id="tel">-
                                    <input type="text" maxlength="4" name="tel3" size="2" id="tel">
                                </td>
                            </tr>
                            <tr>
                                <td class="col-sm-2">주소</td>
                                <td class="col-sm-8 radio">
                                    
                                </td>
                            </tr>
                        </table>
                    </div>
                    <hr style="width:100%; height:3px;">
                    <div class="table-responsive">
                        <h5>선택정보</h5>
                        <table class="table table-bordered">
                            <tr>
                                <td class="col-sm-2">직업</td>
                                <td class="col-sm-8 form-group">
                                    <input type="text" style="width:150px; height:22px">
                                </td>
                            </tr>
                            <tr>
                                <!-- <td class="col-sm-2">결혼여부</td>
                                <td class="col-sm-8 radio">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">기혼&nbsp;&nbsp;&nbsp;
                                    </label> 
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">미혼
                                    </label> 
                                </td>
                            </tr>
                            <tr>
                                <td class="col-sm-2">결혼기념일</td>
                                <td class="col-sm-8 form-group">
                                    <input type="text" style="width:50px; height:23px">년
                                    <input type="text" style="width:50px; height:23px">월
                                    <input type="text" style="width:50px; height:23px">일   
                                </td>
                            </tr>
                            <tr>
                                <td class="col-sm-2">자녀유무</td>
                                <td class="col-sm-8 radio">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">유&nbsp;&nbsp;&nbsp;
                                    </label> 
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">무
                                    </label> 
                                </td>
                            </tr> -->
                            <tr>
                                <td class="col-sm-2">관심종목</td>
                                <td class="col-sm-8">
                                    <label class="checkbox-inline"> 
                                        <input type="checkbox" id="inlineCheckbox1" value="option1"> 자바 
                                    </label> 
                                    <label class="checkbox-inline"> 
                                        <input type="checkbox" id="inlineCheckbox2" value="option2"> 오라클
                                    </label> 
                                    <label class="checkbox-inline"> 
                                        <input type="checkbox" id="inlineCheckbox3" value="option3"> HTML
                                    </label>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-sm-11 text-center">
                        <button class="btn btn-sm btn-primary" type="submit">나의 정보 변경</button>
                    </div>
                    <br /><br /><br /><br /><br />
                </div>
            </div>
        </div>
</body>
</html>