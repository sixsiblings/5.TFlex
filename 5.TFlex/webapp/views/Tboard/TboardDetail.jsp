<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티겟 게시글</title>
<c:import url="../common/commonUtil.jsp"/>
<style> 
body{
	background-color:rgb(229, 229, 220);
}
#yu{
  width:700px;
  height:200px;
  background-size: 400px;
  background-repeat:no-repeat;
}
#detailarea{
align:center;
}
</style>
</head>
<body>
<c:import url="../common/header.jsp"/>

	<div id="detailarea">
    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('${pageContext.request.contextPath}/resources/img/ticket4.jpg;">
    </div>
	
<c:if test="${ !empty member }">
	<section class="outer">
      <br>
      <h2 align="center">게시글 내용</h2>
      <div class="tableArea" style="background-color:white; padding:20px;">
            <table width="800px" align="center"  >
               <tr>
                  <td>제목 </td>
                  <td colspan="5"><span>${Tboard.tTitle}</span></td>
               </tr>
               <tr>
                  <td>가격</td>
                  <td><span>${Tboard.tPrice}</span></td>
              	  <td>경기일자</td>
                  <td><span>${Tboard.tDate}</span></td>
                  <td>조회수 </td>
                  <td><span>${Tboard.tCount}</span></td>
                  </tr>
               <tr>
                  <td>작성자</td>
                  <td><span>${Tboard.tuNo}</span></td>
                  <td>작성일</td>
                  <td><span>${Tboard.tEnrolldate}</span></td>
                  <td>티켓 일련번호</td>
                  <td>
  					<input type="hidden" value="${Tboard.ticketNo}"/>
  					관리자에게만 보여집니다
  				  </td>
               </tr>
               <tr>
                  <td colspan="6">내용 </td>
               </tr>
               <tr>
                  <td colspan="6">
                     <p id="content">${Tboard.tContent}
                  </td>
               </tr>
            </table>
            <br>
      </div>
      <div align="center">
         <button onclick="location.href='${pageContext.request.contextPath }/tselectList.bo'">메뉴로 돌아가기</button>
         <c:if test="${!empty member and member.uNo eq Tboard.tuNo}">
            <c:url var="TboardUpdate" value="tbUpView.bo">
               <c:param name="tNo" value="${Tboard.tNo}" />
            </c:url>
            <button onclick="location.href='${TboardUpdate}'">수정하기</button>
         </c:if>
      </div>
      </div>
      <br />
   
   <script>
   
   </script>
   </section>
   <br><br><br><br>
	</c:if><c:if test="${ empty member }">
		<c:url var="errorPage" value="views/common/errorPage.jsp">
		<c:set var="msg" value="회원만 가능한 서비스입니다." scope="session"/>
		</c:url>
		
		<c:redirect url="${errorPage }"/>
	</c:if>


<c:import url="../common/footer.jsp"/>
<c:import url="../common/loginUtil.jsp"/>
</body>
</html>