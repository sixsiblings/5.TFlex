<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MLB</title>
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
		margin: 0 20%; /*위 아래는 여백 없고, 좌우만 현재 화면의 15%로 !!*/
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
	<br /><br />
    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('${pageContext.request.contextPath}/resources/img/MLB.jpg;">
    </div>
	
    <br /><br /><br />
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
<button class="btn btn-primary pull-right" onclick="goMInsert();" style="margin-right:10px;">글쓰기</button>
</c:if>
<br /><br /><br />
	<table class="table table-hover" id="listArea" align="center">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">글제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <c:forEach var="board" items="${list}">
	  <tr>
		  <td>
		  <input type="hidden" value="${board.bno}"/>
		  				${board.bno} 
		  </td>
		  <td>${board.btitle}</td>
		  <td>${board.uno}</td>
		  <td>${board.bbenrolldate}</td>
		  <td>${board.bcount}</td>
	  </tr>
  </c:forEach>
</table>

<br /><br /><br />


  <%-- 페이지 처리 구현하기 --%>
		<div class="pagingArea" align="center" aria-label="Page navigation example">
			  <c:url var="mselectList" value="mselectList.bo"/>
			
			<!-- 처음 페이지 버튼 -->
			<button onclick="location.href='${mselectList}?currentPage=1'">
				&lt;&lt;
			</button>
			
			<!-- 이전 페이지 버튼 -->
			<c:if test="${ pi.currentPage le 1 }">
				<button disabled>&lt;</button>
			</c:if>
			<c:if test="${ pi.currentPage gt 1 }">
				<button onclick="location.href='${mselectList}?currentPage=${pi.currentPage - 1}'">
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
					<button onclick="location.href='${mselectList}?currentPage=${p}'">
						${p}
					</button>
				</c:if>
			</c:forEach>
			
			
			<!-- 다음 페이지 버튼 -->
			<c:if test="${ pi.currentPage ge pi.maxPage }">
				<button disabled>&gt;</button>
			</c:if>
			<c:if test="${ pi.currentPage lt pi.maxPage }">
				<button onclick="location.href='${mselectList}?currentPage=${pi.currentPage + 1}'">
					&gt;
				</button>
			</c:if>
			
			<!-- 마지막 페이지 버튼 -->
			<button onclick="location.href='${mselectList}?currentPage=${pi.maxPage}'">
				&gt;&gt;
			</button>
		</div>
		<br /><br />
		</div>
		
		<script>
		/*$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"lightblue", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"rgba(70,70,70,0.5)"});
			})*/
			$(function(){
				$("#listArea td").click(function(){
				var bno = $(this).parent().find("input").val();
				location.href="${pageContext.request.contextPath}/mselectOne.bo?bno=" + bno;
			});
		});
		
		function goMInsert(){
			location.href = "${pageContext.request.contextPath}/views/board/MLBboardInsertForm.jsp";
		}
		
		/* function goBoardDetail(){
			var bno = $(this).parent().find("input").val();
			location.href="${pageContext.request.contextPath}/mselectOne.bo?bno=" + bno;
		} */
		</script>

	</section>
	<br><br>
	<br>
	<br>
	
	
	
	
	<c:import url="../common/footer.jsp"/>
	<c:import url="../common/loginUtil.jsp"/>
</body>
</html>







