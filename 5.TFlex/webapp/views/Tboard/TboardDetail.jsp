<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<c:import url="../common/commonUtil.jsp"/>
<style>
   .outer{
      width:800px;
      background:rgba(50, 50, 50, 0.5);
      color:white;
      margin-left:auto;
      margin-right:auto;
      margin-top:50px;
   }
   td {
      border:1px solid black;
      background : lemon;
      color: black;
   }

   .tableArea {
      border:1px solid black;
      background : white;
      color: black;
      width:800px;
      height:350px;
      margin-left:auto;
      margin-right:auto;
   }
   #content {
      height:230px;
   }
      .replyArea {
      width:800px;
      color:black;
      background:ivory;
      margin-left:auto;
      margin-right:auto;
      padding-bottom : 5px;
   }
   .replyArea textArea {
      border-radius: 10px;
      resize: none;
   }
   a:link {
       color: yellow;
   }
   a:active {
      color: aqua;
   }
   table[class*="replyList"] * {
      color: black;
      
   }
   .replyList1 td{   background : lavenderblush; }
   .replyList2 td{   background : honeydew; }
   .replyList3 td{ background : aliceblue; }
   
</style>
</head>
<body>
	<c:import url="../common/header.jsp"/>
	
	<c:if test="${ !empty member }">
	<section class="outer">
      <br>
      <h2 align="center">게시글 내용</h2>
      <div class="tableArea">
            <table align="center" width="800px">
               <tr>
                  <td>제목 </td>
                  <td colspan="5"><span>${TBoard.Ttitle}</span></td>
               </tr>
               <tr>
                  <td>작성자 </td>
                  <td><span>${TBoard.tuno}</span></td>
                  <td>작성일</td>
                  <td><span>${TBoard.Tdate}</span></td>
                  <td>조회수 </td>
                  <td><span>${TBoard.Tcount}</span></td>
               </tr>
               
               <tr>
                  <td colspan="6">내용 </td>
               </tr>
               <tr>
                  <td colspan="6">
                     <p id="content">${TBoard.Tcontent}
                  </td>
               </tr>
            </table>
            <br>
      </div>
      <div align="center">
         <button onclick="location.href='${pageContext.request.contextPath }/tboardList.to'">메뉴로 돌아가기</button>
         <c:if test="${ !empty member and member.userId eq Board.Uno }">
            <c:url var="boardUpdate" value="">
               <c:param name="tno" value="${Tboard.tno }" />
            </c:url>
            <button onclick="location.href='${TboardUpdate}'">수정하기</button>
         </c:if>
      </div>
   
              
	</section>
         </c:if>
  	

   <br><br><br><br>
	<c:if test="${ empty member }">
		<c:url var="errorPage" value="views/common/errorPage.jsp">
		<c:set var="msg" value="회원만 가능한 서비스입니다." scope="session"/>
		</c:url>
		
		<c:redirect url="${errorPage }"/>
	</c:if>
	<br />
	<br />
	<br />
	<br />
	<br />
	<c:import url="../common/footer.jsp"/>
	

</body>
</html>