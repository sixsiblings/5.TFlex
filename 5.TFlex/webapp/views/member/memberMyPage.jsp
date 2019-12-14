<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../common/commonUtil.jsp"/>
</head>
<body>
<c:import url="../common/header.jsp"/>
	
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="#">회원정보수정</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">장바구니</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">프로필 변경</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="#">회원 탈퇴</a>
  </li>
</ul>
	

	<h1>My Page</h1>
	
	<br><br><br><br><br><br><br>

		
		<h4 align="center">비밀 번호 입력</h4>
		<div align="center">
		<input type="password"  id="password" name="password"/>
		<button type="password"  id="password" name="password" align="right"></button>
		
		</div>
		
		<script>
		
		</script>
		
		
		
		<br><br><br><br><br>
		<br><br><br><br><br>
<c:import url="../common/footer.jsp"/>
<c:import url="../common/loginUtil.jsp"/>   

</body>
</html>