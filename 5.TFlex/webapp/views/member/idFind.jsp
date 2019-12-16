<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    	아이디 찾기
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <c:import url="../common/myPageUtil.jsp"/>
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="blue" data-active-color="danger">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-mini">
          <div class="logo-image-big">
            <img src="${ pageContext.request.contextPath }/resources/test/img/baseball_logo.jpg">
          </div>
        </a>
        <a href="../../index.jsp" class="simple-text logo-normal">
          	Go to Main Page
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a id="idFind">
              <i class="fas fa-user-alt"></i>
              <p>ID 찾기</p>
            </a>
          </li>
          <li>
            <a id="passwordFind">
              <i class="fas fa-user-alt"></i>
              <p>PWD 찾기</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand">ID / PWD 찾기</a>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <!-- <div class="panel-header panel-header-lg">

  <canvas id="bigDashboardChart"></canvas>


</div> -->
	      <div class="content" id="ID_Find">
	        <div class="row">
	          <div class="col-md-6" style="margin: auto;">
	            <div class="col-md-12">
	            <div class="card card-user">
	              <div class="card-header">
	                <h5 class="card-title">ID 찾기</h5>
	              </div>
	              <div class="card-body">
	                <form>
	                 <div class="row" style="margin: auto;">
	                    <div class="col-md-5 pr-1">
	                      <div class="form-group">
	                        <label>회원가입시 입력한 이메일</label>
	                        <input type="text" id="checkEmail" class="form-control" placeholder="example@email.com">
	                      </div>
	                    </div>
	                    <div class="col-md-3 px-1">
	                      <div class="form-group">
	                      	<button type="button" id="checkEmailBtn" class="btn btn-success" style="font-size:8px; margin-right:10px; margin-top: 25px;">
								인증 번호 발송
							</button>
	                      </div>
	                    </div>
	                    <div class="col-md-5 pr-1">
	                      <div class="form-group">
	                        <label>인증번호 입력</label>
	                        <input type="text" id="checkNumber" class="form-control" placeholder="인증번호 입력">
	                      </div>
	                    </div>
	                    <div class="col-md-3 px-1">
	                      <div class="form-group">
	                      	<button type="button" id="checkNumberBtn" class="btn btn-primary" style="font-size:8px; margin-right:10px; margin-top: 25px;">
								인증번호 확인
							</button>
	                      </div>
	                    </div>
	                   </div>
	                </form>
	              </div>
	            </div>
	          </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
	<script>
	
		var $checkEmail = $('#checkEmail');
		var $checkEmailBtn = $('#checkEmailBtn');
		var $checkNumber = $('#checkNumber');
		var $checkNumberBtn = $('#checkNumberBtn');
		
		$checkEmailBtn.on("click", function(){
			$.ajax({
				url: "${pageContext.request.contextPath}/checkEmail.em",
				data: {
					email : $checkEmail.val()
				},
				type: "POST",
				success: function(data){
					if(data == "0"){
						console.log(data);
						alert("존재하지 않는 이메일입니다 확인부탁드립니다");
					} else if(data == "1"){
						$.ajax({
							url: "${pageContext.request.contextPath}/emailSend.em",
							data: {
								email: $checkEmail.val(),
							},
							type: "POST",
							success: function(data){
								
								alert("이메일 발송완료!");
								// 이메일 데이터 베이스 연결과 3분의 제한시간 설정하기
								// 오늘은 여기까지 ㅅㅂ
							}, error: function(){
								alert("이메일은 존재하지만 이메일 발송중 문제가 발생했습니다.");
							}
						});
					}
				}, error: function(){
					alert("이메일 발송중 문제가 발생했습니다. 다시 시도해주세요");
				}
			});
		});
		
	</script>
	
</body>

</html>

















