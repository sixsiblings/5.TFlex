<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


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
		<div class="col-md-1">
         <div class="text-right">
            <a href="" class="btn btn-danger  btn-rounded mb-4"
               data-toggle="modal" data-target="#modalSubscriptionForm"
               style=" /* background: blue; */  color: snow; margin-top:35px; margin-right:15px;"><b>LOGIN</b></a>
         </div>
   </div>
</div>


	<!-- 	버튼
<button type="button" class="btn btn-success" id="memberJoinBtn" onclick="memberJoin()">Join</button>  
<button type="button" class="btn btn-info" id="loginBtn" onclick="memberLogin()">Login</button> -->






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



