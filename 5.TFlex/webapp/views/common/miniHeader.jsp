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
<nav class="navbar navbar-light" >
   <div class="container-fluid" style="width: 100%; height: auto;">
      <div class="col-md-2">
         <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp" style="margin-bottom: 20px;"> 
            <img id="logo" src="${pageContext.request.contextPath}/resources/img/logo.png" 
            style="width: 160px; height: 50px; float: left; margin-bottom: 0px;"/>
         </a>   
      </div>
      <br /><br />
    	<p class="b1" style="margin-top: 10px;">
            <p>
                <a class="nav-link"  href="${ pageContext.request.contextPath }/views/board/KBOboard.jsp">
                  <button type="button" id="KBOBtn" class="btn btn-outline-primary"
                     style="margin-right: 50px; margin-right: 50px; font-size: 30px; width:120px; height: 50px;" >
                        <strong>KBO</strong>
                  </button>
                </a>
            </p>
            <p>
              <a class="nav-link"  href="${ pageContext.request.contextPath }/mselectList.bo">
                  <button type="button" id="MLBBtn" class="btn btn-outline-primary"
                     style="margin-right: 50px; margin-right: 50px; font-size: 30px; width:120px; height: 50px;" >
                        <strong>MLB</strong>
                  </button>
                </a>
            </p>
            <p>
              <a class="nav-link"  href="${ pageContext.request.contextPath }/views/Tboard/boardListTicket.jsp">
                  <button type="button" id="TicketBtn" class="btn btn-outline-primary"
                     style="margin-right: 50px; margin-right: 50px; font-size: 30px; width:120px; height: 50px;" >
                        <strong>Ticket</strong>
                  </button>
                </a>
            </p>
            <p>
                <a class="nav-link"  href="${ pageContext.request.contextPath }/views/Gboard/GoodsBoard.jsp">
                  <button type="button" id="GoodsBtn" class="btn btn-outline-primary"
                     style="margin-right: 50px; margin-right: 50px; font-size: 30px; width:120px; height: 50px;" >
                        <strong>Goods</strong>
                  </button>
                </a>
            </p>
       </div>
	</nav>


</header>
	
	
</body>
</html>