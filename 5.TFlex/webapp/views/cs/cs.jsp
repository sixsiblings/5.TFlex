<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../common/commonUtil.jsp" />
<title>고객센터 메인화면</title>
</head>
<body>

<h3>고객센터 메인화면</h3>
<ul>
<li>
<a href="${pageContext.request.contextPath}/index.jsp;">
	<b>홈으로 이동</b>
</a>
</li>
<li>
<a href="${pageContext.request.contextPath}/views/notice/noticeList.jsp;">
	<b>공지사항</b>
</a>
</li>


<li>
<a href="${pageContext.request.contextPath}/views/QNA/QNAList.jsp;">
	<b>QNA</b>
</a>
</li>
</ul> 



<c:import url="../common/loginUtil.jsp"/>
</body>
</html>