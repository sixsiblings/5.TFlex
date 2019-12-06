<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<header>
	<h1 align="center">Welcome JSP World!</h1>

	<div class="loginArea">
	<c:if test="${ empty member }">
		<form action="${ pageContext.request.contextPath }/login.me"
			method="post" id="loginArea">
			<table>
				<tr>
					<td><label class="text">ID : </label></td>
					<td><input type="text" name="userId"></td>
				</tr>
				<tr>
					<td><label class="text">PWD : </label></td>
					<td><input type="password" name="password"></td>
				</tr>
			</table>
			<div class="btns" align="center">
				<div id="memberJoinBtn" onclick="memberJoin()">회원가입</div>
				<div id="loginBtn" onclick='login()'>로그인</div>
			</div>
		</form>
		</c:if><c:if test="${ !empty member }">
		<div id="userInfo">
			<label>${ member.userName }님의 방문을 환영합니다.</label>
			<div class="btns" align="right">
				<div id="changeInfo" onclick="changeInfo()">정보수정</div>
				<div id="logoutBtn" onclick='logout()'>로그아웃</div> 
			</div>
		</div>
		</c:if>
	</div>
	<script>
		function login() {
			$('#loginArea').submit();
		}

		function memberJoin() {
			location.href = "${ pageContext.request.contextPath }/views/member/memberJoinForm.jsp";
		}
		
		function logout(){
			location.href= "${ pageContext.request.contextPath }/logout.me";
		}
		
		function changeInfo(){
			location.href="${pageContext.request.contextPath}/views/member/memberUpdateForm.jsp";
		}
	</script>
	
	<br clear="all">
	<br>

	<div class="wrap">
		<nav class="nav">
			<div class="menu" onclick="goHome();">HOME</div>
			<div class="menu" onclick="goBoard();">일반 게시판</div>
			<div class="menu" onclick="goThumb();">사진 게시판</div>
		</nav>
	</div>
	<script>
		function goHome() {
			location.href = "${pageContext.request.contextPath}/index.jsp";
		}
		function goBoard() {
			location.href = "${pageContext.request.contextPath}/selectList.bo";
		}
		function goThumb() {
			location.href = "${pageContext.request.contextPath}/selectList.tn";
		}
	</script>
</header>