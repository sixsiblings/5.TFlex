<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%--   <c:import url="views/common/commonUtil.jsp"/> --%>

<!--  상단 네비바  -->
<!--  로고 이미지 -->
<header>
<nav class="navbar navbar-expand-lg navbar-white bg-white fixed-top" style="margin-bottom: 0px;">
	<div class="container-fluid" style="width: 100%; height: auto;">
		<div class="col-md-2">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp" style="margin-bottom: 20px;"> 
				<img id="logo" src="${pageContext.request.contextPath}/resources/img/logo.png" 
				style="width: 160px; height: 50px; float: left; margin-bottom: 0px;"/>
			</a>	
		</div>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link" style="margin-right: 50px; color: blue; font-size: 30px; width: 70px; height: 50px;" href="${ pageContext.request.contextPath }/">
						Home
              		</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" style="margin-right: 30px; font-size: 30px; width: 70px; height: 50px;" href="${ pageContext.request.contextPath }/">
						KBO
              		</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" style="margin-right: 30px; font-size: 30px; width: 70px; height: 50px;" href="${ pageContext.request.contextPath }/">
						MLB
              		</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" style="margin-right: 70px; font-size: 30px; width: 70px; height: 50px;" href="${ pageContext.request.contextPath }/">
						Ticket
              		</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" style=" font-size: 30px; width: 70px; height: 50px;" href="${ pageContext.request.contextPath }/">
						Goods
              		</a>
				</li>
			</ul>
		</div>
		<div class="col-md-2">

			<div class="text-right">
				<a href="" class="btn btn-default btn-rounded mb-4"
					data-toggle="modal" data-target="#modalSubscriptionForm"
					style="background: #A63340; color: snow; margin-top:35px; margin-right:15px;"><b>LOGIN</b></a>
			</div>
	</div>

	<!-- 	버튼
<button type="button" class="btn btn-success" id="memberJoinBtn" onclick="memberJoin()">Join</button>  
<button type="button" class="btn btn-info" id="loginBtn" onclick="memberLogin()">Login</button> -->


	<!--  로그인 팝업 버튼  -->

<c:if test="${ empty member }">
<form action="${ pageContext.request.contextPath }/login.me"  method="post" id="loginPop">

	<div class="modal fade" id="modalSubscriptionForm" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h4 class="modal-title w-100 font-weight-bold" style="color: #2B5C7A;">로그인</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span></button></div>
						
				<div class="modal-body mx-3">
					<div class="md-form mb-5">
						<i class="fas fa-user prefix grey-text"></i> 
						<input type="text" id="form3" class="form-control validate"> 
						<label data-error="wrong" data-success="right" for="form3">아이디</label>
					</div>

					<div class="md-form mb-4">
						<i class="fas fa-envelope prefix grey-text"></i> <input
							type="password" id="form2" class="form-control validate">
						<label data-error="wrong" data-success="right" for="form2">비밀번호</label>
					</div>
					<!--로그인 팝업 Footer-->
					<div class="modal-footer">
						<div class="options text-center text-md-right mt-1">
							<p>Not a member?
 							<a href="${ pageContext.request.contextPath }/views/member/memberJoinForm.jsp" class="blue-text" >
 									<strong>Join</strong>
 							</a>
							</p>
							<p>Forgot 
							<a href="${pageContext.request.contextPath}/views/member/memberFind.jsp" class="blue-text">
							<strong>Id? Password?</strong>
							</a>
							</p>
						</div>
					</div>
				</div>
				<div class="modal-footer d-flex justify-content-center">
					<button type="submit" class="btn btn-indigo" 
							style="background: red; color: #F7F3EF; " id="loginBtn" onclick="login()">
						Login<i class="fas fa-paper-plane-o ml-1"></i>
					</button>
				</div> 
			</div>
		</div>
	</div>
</form>

</c:if> 
<c:if test="${ !empty member }">
			<div id="userInfo">
				
			<label>${ member.nName }님의 방문을 환영합니다.</label>
         	<div class="btns" align="right">
            <div id="changeInfo" onclick="changeInfo()">MyPage</div>
            <div id="logoutBtn" onclick='logout()'>Logout</div> 
         	</div>
			</div>
	</c:if>
	
<!-- 	<div class="text-right">
		<a href="" class="btn btn-default btn-rounded mb-4"
			data-toggle="modal" data-target="#modalSubscriptionForm"
			style="background: #A63340; color: snow; margin-top:35px; margin-right:25px;"><b>LOGIN</b></a>
	</div> -->

</nav>
</header>

		<script>

			function login(){
				$('#loginPop').submit();
			}

			function memberJoin(){
				location.href = "${pageContext.request.contextPath}/views/member/memberJoinForm.jsp";
			}
			
			function logout(){
				location.href = "${pageContext.request.contextPath}/logout.me";
			}
			
			function changeInfo(){
				location.href = "${pageContext.request.contextPath}/views/member/memberUpdateForm.jsp";
			}
		</script>



