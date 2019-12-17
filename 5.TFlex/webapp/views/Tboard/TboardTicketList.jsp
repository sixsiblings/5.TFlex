<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket</title>
<c:import url="../common/commonUtil.jsp"/>
<style>
#yu{
  width:500px;
  height:200px;
  background-size: 400px;
  background-repeat:no-repeat;
}
.tableArea{
	
	    width:750px;
		height:350px;
		color : navy;
		margin-left:auto;
		margin-right:auto;
}
#yuJ{
	
	box-sizing : border-box;
	color : rgb(85,91,97);
	display : block;
	font-size: 14px;
	font-weight: 400px;
	line-height: 21px;
	text-size-adjust : 100%;
	
}
	</style>
</head>
<body>
<c:import url="../common/header.jsp"/>
	
	<section>
   <div align="center" >
    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('${pageContext.request.contextPath}/resources/img/ticket4.jpg;">
    </div>
	</div>
    <br /><br />
    
	<div class="tableArea" align="center">
			<br>

	<div class="ed padding-horizontal-small@s" style="display : inline-block;">
		<div class="ed flex flex-wrap flex-middle margin-top-small margin-bottom-small">
			<div class="ed flex flex-wrap flex-left flex-middle">
				<a href="#" id="ed-search-toggle" class="ed button button-link">
					<svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg><!-- <i class="fas fa-search"></i> -->
				</a>
			</div>
		</div>	
	</div>
	
	<span class="badge badge-pill badge-dark">LA다저스</span>
	<span class="badge badge-pill badge">시카고컵스</span>
	<span class="badge badge-pill badge-light">뉴욕양키스</span>
	<span class="badge badge-pill badge-light">워싱턴</span>
			<br>
			<br>
<c:if test="${!empty member }">
<button class="btn btn-primary pull-right" onclick="goTInsert();">글쓰기</button>
</c:if>
<br /><br /><br />
	<table class="table table-hover" id="listArea">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">글제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
      <th scope="col">첨부파일</th>
    </tr>
  </thead>
 <c:forEach var="Tboard" items="${list}">
  <tr>
  <td>
  <input type="hidden" value="${Tboard.tno}"/>
  				${Tboard.tno}
  </td>
  <td>${TBoard.ttitle}</td>
  <td>${TBoard.tno}</td>
  <td>${TBoard.tdate}</td>
  <td>${TBoard.tcount}</td>
  <c:if test="${!empty Tboard.tfile}">
  			<td> o </td>
  </c:if><c:if test="${empty Tboard.tfile}">
  			<td> x </td>
  </c:if>
  </tr>
  </c:forEach>
</table>
</div>
<br /><br /><br /><br /><br /><br />
<br /><br /><br /><br />

<script>
function goTInsert(){
	location.href = "${pageContext.request.contextPath}/views/Tboard/TboardInsertForm.jsp";
}

</script>
  <c:import url="../common/footer.jsp"/>

</body>
</html>