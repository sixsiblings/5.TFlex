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

	<h1>My Page</h1>
	
	<br><br><br><br><br><br><br>

		
		<h4 align="center">비밀 번호 입력</h4>
		
		<input type="password"  id="password" name="password"/>
		<button onclick= "submit">확인</button>
		
		
		<br><br><br><br><br>
		<br><br><br><br><br>
<c:import url="../common/footer.jsp"/>


</body>
</html>