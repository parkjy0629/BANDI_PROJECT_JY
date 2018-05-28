<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In</title>
<script src="<%=request.getContextPath()%>/resources/js/main/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member/bootstrap.min.css">
<style>
 .container{
                padding-right: 15px;
                padding-left: 15;
                margin-right: auto;
                margin-left: auto;
            }
  .form-signin{
                max-width: 370px;
                padding: 15px;
                margin: 0 auto;
            }
</style>
</head>
<body>
<div class="container">
	<div class="row">
    	<div class="col-ms">
        	<img src="<%=request.getContextPath()%>/resources/images/member/logo.jpg" class="img-responsive" style="margin:0 auto;">
        </div>
	</div>
	<form class="form-signin" id="LoginForm" method="post">
		<input type="text" id="inputId" name="inputId" class="form-control input-lg" placeholder="Id"><br />
		<input type="password" id="inputPassword" name="inputPassword" class="form-control input-lg" placeholder="Password"><br /><br />
		<!-- <div class="checkbox">
			<label>
				<input type="checkbox" value="remember-me"> Remember me
			</label>
		</div> -->
		<button class="btn btn-lg btn-primary btn-block" type="submit" onclick="LoginMember();">Sign in</button>
	</form>
	<script>
		function LoginMember(){
			$("#LoginForm").submit();
		}
		$("#LoginForm").submit(function(event){
			if(("#inputId").val() == "") alert("아이디를 입력해주세요.");
			else if(("#inputPassword").val() == "") alert("비밀번호를 입력해주세요.");
// %%디비 연결되면 아이디 값과 비밀번호 값 넣기
			<%-- else if(("#inputId").val() != <%%>) alter("아이디가 없습니다.")
			else if(("#inputPassword").val() != <%%>) alter("비밀번호를 확인해주세요.") --%>
			else return;
			event.preventDefault();
		});
	</script>
	<div class="row">
		<div class="col-ms" style=" text-align:center;">
			<a href="http://www.iei.or.kr/" target="black"><img src="<%=request.getContextPath()%>/resources/images/member/ot.jpg" class="img-responsive" style="margin:0 auto; max-width: 440px;"></a>
		</div>
	</div>
</div>
</body>
</html>



























