<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 문의 목록</title>
<c:import url="../common/commonUtil.jsp" />
</head>
<body>
<br /><br /><br />

<a href="${pageContext.request.contextPath}/index.jsp;">
	<b>홈으로 이동</b>
</a>
<br />
<a href="${pageContext.request.contextPath}/views/csMain/csMain.jsp;">
	<b>고객센터 메인으로 이동</b>
</a>


<div class="card" style="border:3px solid #96F5DD; ">
  <div class="card-body" style=" width:auto; height:80px; text-align:center; 
  				margin-top: 0px;  margin-bottom:20px; font-size:60px;">
    <i class="far fa-edit">   1:1 문의 내역</i>
  </div>
</div>

<br /><br />

<!-- 1:1문의 등록 버튼 -->
<div class="card" style="border:3px solid #96F5DD; ">
  <div class="card-body" style=" width:auto; height:70px; text-align:left; font-size:20px;">
     	<i class="fas fa-bullhorn">   상담가능 시간(평일 09:00 ~ 18:00)내 답변드릴수 있도록 노력하겠습니다. </i>
    <button type=""  class="btn" id="QNABtn"  onclick="" 
    		style="background:#C2FAEB;  margin-left:450px; font-size:20px; ">
    	1:1문의 등록하기</button>
  </div>
</div>

<br /><br />

<div class="card" style="border:3px solid #96F5DD; ">
  <div class="card-body" style="width:auto; height:300px; text-align:center; ">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">제목</th>
      <th scope="col">답변 여부</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
    </tr>
  </tbody>
</table>
 
    
  </div>
</div>


<c:import url="../common/loginUtil.jsp"/>
</body>
</html>