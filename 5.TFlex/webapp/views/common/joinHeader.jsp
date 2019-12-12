<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 헤더</title>
</head>
<body>
	
<header>
<nav class="navbar navbar-expand-lg navbar-white bg-white fixed-top" style="margin-bottom: 0px;">
	<div class="container-fluid" style=" width: 100%; height: auto;">
		<div class="col-md-12">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp" style="margin-bottom: 20px;"> 
				<img id="logo" src="${pageContext.request.contextPath}/resources/img/logo.png" 
				style="width: 80px; height: 30px; float: left; margin-bottom: 0px;"/>
			</a>	
		</div>
	</div>
  </nav>
</header>
	
	
</body>
</html>