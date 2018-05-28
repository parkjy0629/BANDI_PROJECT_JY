<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>회원가입</title>
    <link href="<%=request.getContextPath()%>/resources/css/admin/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css" media="screen" charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="<%=request.getContextPath()%>/resources/js/admin/bootstrap.min.js"></script> 
  </head>
  
  <body>
  <header>
  	<%@include file ="../common/Header.jsp" %>
  </header>
      <article class="container">
        <div class="page-header">
          <h1>회원가입</h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
        <form role="form">
          <div class="form-group">
            <label for="email">이메일 인증</label>
              <div class="input-group">
              <input type="email" class="form-control" id="email" placeholder="이메일 입력해 주세요">
              <span class="input-group-btn">
                <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
              </span>
            </div>
          </div>
          <div class="form-group">
            <label for="num">인증번호 입력</label>
              <div class="input-group">
                <input type="text" class="form-control" id="num" placeholder="인증번호">
                  <span class="input-group-btn">
                    <button class="btn btn-success">인증번호 입력<i class="fa fa-edit spaceLeft"></i></button>
                  </span>
              </div>
          </div>
          <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" id="InputPassword2" placeholder="비밀번호 재확인">
          </div>
          <div class="form-group">
            <label for="userName">이름</label>
            <input type="text" class="form-control" id="userName" placeholder="이름을 입력해 주세요">
          </div>
          <div class="form-group">
              <label for="userGender">성별</label>
                <div class="input-group">
                <span class="input-group-btn">
                  <button class="btn btn-info">남자</button>
                  <button class="btn btn-warning">여자</button>
                </span>
                </div>
          </div>
          <div class="form-group">
            <label for="addr1">주소</label>
            <div class="input-group">
            <input type="text" class="form-control" id="addr1">
              <span class="input-group-btn">
              <button class="btn btn-success">우편번호<i class="fa fa-mail-forward spaceLeft"></i></button>
              </span>
          </div>
          <div>
            <label for="addr2">상세주소</label>
              <input type="text" class="form-control" id="addr2" placeholder="상세주소를 입력해 주세요">
          </div>
          <div>
            <label for="phone">휴대폰 번호</label>
              <input type="tel" class="form-control" id="phone" placeholder="-없이 입력해 주세요">
          </div>
            <div class="form-group">
                <label>약관 동의</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="#">이용약관</a>에 동의합니다.
              </div>
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
          </form>
        </div>
      </article>
  </body>
</html>