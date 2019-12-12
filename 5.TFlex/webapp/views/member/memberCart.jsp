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

	<h1>나의 장바구니</h1>
	
	<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">상품명</th>
      <th scope="col">가격</th>
      <th scope="col">거래 현황</th>
      <th scope="col">판매자 명</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">두산 vs LG</th>
      <td>23,000원</td>
      <td>거래 완료</td>
      <td>송승훈</td>
    </tr>
    <tr>
      <th scope="row">기아 vs 롯데</th>
      <td>23,000원</td>
      <td>거래중</td>
      <td>백혜영</td>
    </tr>
    <tr>
      <th scope="row">KT vs SK</th>
      <td>23,000원</td>
      <td>거래 완료</td>
      <td>유정현</td>
    </tr>
  </tbody>
</table>

<br><br><br><br><br>

<div id="btn" class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
  <div class="btn-group mr-2" role="group" aria-label="First group">
    <button type="button" class="btn btn-secondary">1</button>
    <button type="button" class="btn btn-secondary">2</button>
    <button type="button" class="btn btn-secondary">3</button>
    <button type="button" class="btn btn-secondary">4</button>
  </div>
  
  <br><br><br><br><br>
  <br><br><br><br><br>

<c:import url="../common/footer.jsp"/>
</body>
</html>