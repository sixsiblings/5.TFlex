<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시글 목록</title>
<c:import url="../common/commonUtil.jsp" />
</head>
<body>

<c:import url="../common/header.jsp" />

<br /><br /><br />

<h1>공지사항 게시글 목록</h1>

<a href="${pageContext.request.contextPath}/index.jsp;">
	<b>홈으로 이동</b>
</a>
<br />
<a href="${pageContext.request.contextPath}/views/csMain/csMain.jsp;">
	<b>고객센터 메인으로 이동</b>
</a>

<!-- 	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
		<button ></button>
	</nav>
 -->

<br /><br /><br />


<div class="card">
  <div class="card-body" style=" border:2px solid #FAF9EA; width:auto; height:100px; text-align:center; font-size:30px;">
    T.Flex 공지사항
  </div>
</div>

<br /><br />


<div class="card">
  <div class="card-body" style=" border:2px solid #FAF9EA; width:auto; height:300px; text-align:center; ">
    공지사항
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
 
    
  </div>
</div>



<c:import url="../common/loginUtil.jsp"/>
</body>
</html>