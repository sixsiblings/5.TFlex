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


<!-- <nav class="navbar navbar-light bg-light"></nav>
 -->
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
	  <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
    	<img id="logo" src="${pageContext.request.contextPath}/resources/img/logo.png" style="width: 80px; height: 30px; float: left; margin-bottom: 0px;"/>
    	</a>
    	<p class="b1" style="margin-top: 10px;">
            <p>
               <a class="nav-link" style="margin-right: 30px; margin-right: 50px; font-size: 20px; width: 70px; height: 50px;" 
                     href="${ pageContext.request.contextPath }/views/board/KBOboard.jsp">
                  KBO
                    </a>
            </p>
            <p>
               <a class="nav-link" style="margin-right: 30px; font-size: 20px; width: 70px; height: 50px;" 
                     href="${ pageContext.request.contextPath }/views/board/MLBboard.jsp">
                  MLB
                    </a>
            </p>
            <p>
               <a class="nav-link" style="margin-right: 50px; font-size: 20px; width: 70px; height: 50px;" 
                     href="${ pageContext.request.contextPath }/views/Tboard/boardListTicket.jsp">
                  Ticket
                    </a>
            </p>
            <p>
               <a class="nav-link" style="margin-right: 50px;  font-size: 20px; width: 70px; height: 50px;" 
               				href="${ pageContext.request.contextPath }/views/Gboard/GoodsBoard.jsp">
                  Goods
                    </a>
            </p>
		</p>
	</p>
	</nav>


</header>
	
	
</body>
</html>