<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<c:import url="../common/commonUtil.jsp"/>
<style>
.outer{
      width:800px;
      /*height:500px;*/
      background:rgba(50, 50, 50, 0.7);
      color:white;
      margin-left:auto;
      margin-right:auto;
      margin-top:50px;
   }
   
   td {
      border:1px solid white;
   }

   .tableArea {
      border:1px solid white;
      width:800px;
      /*height:360px;*/
      margin-left:auto;
      margin-right:auto;
   }
   .tableArea table {
      width : 600px;
   }
   #content {
      height:230px;
   }
</style>
</head>
<body>
<c:import url="../common/header.jsp"/>

	<section class="outer">
      <br>
      <h2 align="center">게시글 수정</h2>
      <div class="tableArea">
         <form method="post" enctype="multipart/form-data" id="updateForm">
            <table>
               <tr>
                  <td>제목 </td>
                  <td colspan="3">
                  <input type="text" size="51" 
                  name="title" value="${board.btitle}">
                  <input type="hidden" name="bno" value="${board.bno }"/>
                  </td>
               </tr>
               <tr>
                  <td>작성자 </td>
                  <td colspan="3">${board.writer}</td>
               </tr>
               <tr>
                  <td>첨부된 파일 </td>
                  <td colspan="3">
                  <a href="${pageContext.request.contextPath }/resources/bUpFiles/${board.bfile}" download/>
                  </td>
               </tr>
               <tr>
                 <tr>
                  <td>첨부파일 </td>
                  <td colspan="3">
                 <input type="file" name="bfile"/>
                  </td>
               </tr>
               <tr>
                  <td>내용 </td>
                  <td colspan="3">
                     <textarea name="content" cols="52" rows="15" style="resize:none;">${board.bcontent}</textarea>
                  </td>
               </tr>
            </table>
            <br>
            <div align="center">
               <button onclick="completeUpdate();">수정완료</button>
               <button onclick="deleteBoard();">삭제하기</button>
            </div>
            <script>
            
           	function completeUpdate(){
           		$('#updateForm').attr("action","${pageContext.request.contextPath}/update.bo");
           		
           	}
           	function deleteBoard(){
           		$('#updateForm').attr("action", "${pageContext.request.contextPath}/delete.bo");
           	}
           	
            </script>
         </form>
      </div>
   </section>
	 <br><br><br><br>
	
<c:import url="../common/footer.jsp"/>
</body>
</html>