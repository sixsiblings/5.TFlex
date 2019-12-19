<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Goods</title>
<c:import url="../common/commonUtil.jsp"/>
<style>
table,th,td{
	border: 1px solid white;
	border-collapse: collapse;
}

th,td{
/* 전(상,하,좌,우) 방향  */
/*padding: 10px;*/
/* 12-6-3-9 */ /* 두 개의 결과는 같다. */
/*padding: 10px 20px;*/
padding: 20px 30px 10px 20px;
}

body{
	background-color:rgb(229, 229, 220);
}

#yu{
  width:450px;
  height:200px;
  background-size: 450px;
  background-repeat:no-repeat;
  margin:auto;
}
.tableArea{
	
		width:auto;
		height:auto;
		color : navy;
		background:white;
		margin: 0 25%; /*위 아래는 여백 없고, 좌우만 현재 화면의 15%로 !!*/
		align:center;
}
.pagingArea{
	width:auto;
}
	</style>
</head>
<body>
<c:import url="../common/header.jsp"/>
	
	<section>
  <div class="tableArea" align="center">
    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('${pageContext.request.contextPath}/resources/img/ticket4.jpg;">
    </div>
	
    <br /><br />
    
	<div class="tableArea" align="center">
			<br>

<c:if test="${!empty member }">
<button class="btn btn-primary pull-right" onclick="goGInsert();">판매글 쓰기</button>
</c:if>
<br /><br /><br />
	<table class="table table-hover" id="listArea">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">판매상품</th>
      <th scope="col">가격</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
 <c:forEach var="Gboard" items="${list}">
  <tr>
  <td>
  <input type="hidden" value="${Gboard.gNo}"/>
  				${Gboard.gNo}
  </td>
  <td>${Gboard.gTitle}
  			
  </td>
  <td>${Gboard.gPrice}</td>
  <td>${Gboard.guNo}</td>
  <td>${Gboard.gEnrolldate}</td>
  <td>${Gboard.gCount}</td>
  </tr>
  </c:forEach>
</table>

<br /><br /><br /><br />

<%-- 페이지 처리 구현하기 --%>
		<div class="pagingArea" align="center" aria-label="Page navigation example">
			  <c:url var="tselectList" value="tselectList.bo"/>
			
			<!-- 처음 페이지 버튼 -->
			<button onclick="location.href='${gselectList}?currentPage=1'">
				&lt;&lt;
			</button>
			
			<!-- 이전 페이지 버튼 -->
			<c:if test="${ pi.currentPage le 1 }">
				<button disabled>&lt;</button>
			</c:if>
			<c:if test="${ pi.currentPage gt 1 }">
				<button onclick="location.href='${gselectList}?currentPage=${pi.currentPage - 1}'">
					&lt;
				</button>
			</c:if>
			
			<!-- 상세 페이지 구현을 위한 반복문 -->
			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage}">
				<c:if test="${p eq pi.currentPage }">
					<button disabled>
						<b>${p}</b>
					</button>
				</c:if>
				<c:if test="${ p ne pi.currentPage}">
					<button onclick="location.href='${gselectList}?currentPage=${p}'">
						${p}
					</button>
				</c:if>
			</c:forEach>
			
			
			<!-- 다음 페이지 버튼 -->
			<c:if test="${ pi.currentPage ge pi.maxPage }">
				<button disabled>&gt;</button>
			</c:if>
			<c:if test="${ pi.currentPage lt pi.maxPage }">
				<button onclick="location.href='${gselectList}?currentPage=${pi.currentPage + 1}'">
					&gt;
				</button>
			</c:if>
			
			<!-- 마지막 페이지 버튼 -->
			<button onclick="location.href='${gselectList}?currentPage=${pi.maxPage}'">
				&gt;&gt;
			</button>
<br /><br />
</div></div>
<script>

$(function(){
	$("#listArea td").click(function(){
	var gNo = $(this).parent().find("input").val();
	location.href="${pageContext.request.contextPath}/gselectOne.bo?gNo=" + gNo;
});
});

function goGInsert(){
	location.href = "${pageContext.request.contextPath}/views/Gboard/GboardInsertForm.jsp";
}

</script>

  <c:import url="../common/footer.jsp"/>

</body>
</html>