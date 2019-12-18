<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../common/commonUtil.jsp"/>
<style>
#yu{
  width:500px;
  height:200px;
  background-size: 400px;
  background-repeat:no-repeat;
}
</style>
</head>
<body>
<c:import url="../common/header.jsp"/>

	<div align="center" >
    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('${pageContext.request.contextPath}/resources/img/MLB.jpg;">
    </div>
	</div>
<c:if test="${ !empty member }">
	<section class="outer">
      <br>
      <h2 align="center">게시글 내용</h2>
      <div class="tableArea">
            <table align="center" width="800px">
               <tr>
                  <td>제목 </td>
                  <td colspan="5"><span>${Gboard.gTitle}</span></td>
               </tr>
               <tr>
                  <td>작성자 </td>
                  <td><span>${Gboard.guNo}</span></td>
                  <td>작성일</td>
                  <td><span>${Gboard.gEnrolldate}</span></td>
                  <td>조회수 </td>
                  <td><span>${Gboard.gCount}</span></td>
                   <td>가격 </td>
                  <td><span>${Gboard.gPrice}</span></td>
               </tr>
               <tr>
                  <td colspan="6">내용 </td>
               </tr>
               <tr>
                  <td colspan="6">
                     <p id="content">${Gboard.gContent}
                  </td>
               </tr>
            </table>
            <br>
      </div>
      <div align="center">
         <button onclick="location.href='${pageContext.request.contextPath }/gselectList.bo'">메뉴로 돌아가기</button>
         <c:if test="${!empty member and member.uNo eq Gboard.guNo}">
            <c:url var="boardUpdate" value="gbUpView.bo">
               <c:param name="gNo" value="${Gboard.gNo}" />
            </c:url>
            <button onclick="location.href='${boardUpdate}'">수정하기</button>
         </c:if>
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