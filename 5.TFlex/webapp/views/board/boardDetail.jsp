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
                  <td colspan="5"><span>${board.btitle}</span></td>
               </tr>
               <tr>
                  <td>작성자 </td>
                  <td><span>${board.writer}</span></td>
                  <td>작성일</td>
                  <td><span>${board.bdate}</span></td>
                  <td>조회수 </td>
                  <td><span>${board.bcount}</span></td>
               </tr>
               <c:if test="${ !empty board.bfile }">
                  <tr>
                  <td>첨부파일 </td>
                  <td colspan="5">
                  	<a href="resources/bUpFiles/${board.bfile }"download>${board.bfile }</a>
                  </td>
               </tr>
               </c:if>
               <tr>
                  <td colspan="6">내용 </td>
               </tr>
               <tr>
                  <td colspan="6">
                     <p id="content">${board.bcontent}
                  </td>
               </tr>
            </table>
            <br>
      </div>
      <div align="center">
         <button onclick="location.href='${pageContext.request.contextPath }/selectList.bo'">메뉴로 돌아가기</button>
         <c:if test="${ !empty member and member.userId eq board.writer }">
            <c:url var="boardUpdate" value="bUpView.bo">
               <c:param name="bno" value="${board.bno }" />
            </c:url>
            <button onclick="location.href='${boardUpdate}'">수정하기</button>
         </c:if>
      </div>
   <div class="replyArea">
   	<div class="replyWriteArea">
         <form action="${pageContext.request.contextPath }/insert.co" method="post">
            <input type="hidden" name="writer" value="${ member.userId }"/>
            <input type="hidden" name="bno" value="${board.bno }" />
            <input type="hidden" name="refcno" value="0" />
            <input type="hidden" name="clevel" value="1" />
            
            <table align="center">
               <tr>
                  <td>댓글 작성</td>
                  <td><textArea rows="3" cols="80" id="replyContent" name="replyContent"></textArea></td>
                  <td><button type="submit" id="addReply">댓글 등록</button></td>
               </tr>
            </table>
         </form>
  		 <div id="replySelectArea">
  		 <c:if test="${ !empty clist }">
               <c:forEach var="bco" items="${ clist }">
                  <table id="replySelectTable"
             style="margin-left : ${(bco.clevel -1) * 15}px;
                   width : ${800 - ((bco.clevel -1) * 15)}px;"
             class="replyList${bco.clevel}">
                    <tr>
                       <td rowspan="2"> </td>
                     <td><b>${bco.cwriter}</b></td>
                     <td>${bco.cdate}</td>
                     <td align="center">
                     <c:if test="${member.userId eq bco.cwriter }">
                        <input type="hidden" name="cno" value="${bco.cno}"/>
                             
                        <button type="button" class="updateBtn" 
                           onclick="updateReply(this);">수정하기</button>
                           
                        <button type="button" class="updateConfirm"
                           onclick="updateConfirm(this);"
                           style="display:none;" >수정완료</button> &nbsp;&nbsp;
                           
                        <button type="button" class="deleteBtn"
                           onclick="deleteReply(this);">삭제하기</button>
                           
                     </c:if><c:if test="${ bco.clevel lt 3 }">
                        <input type="hidden" name="writer" value="${member.userId}"/>
                        <input type="hidden" name="refcno" value="${bco.cno}" />
                        <input type="hidden" name="clevel" value="${bco.clevel}" />
                        <button type="button" class="insertBtn" 
                            onclick="reComment(this);">댓글 달기</button>&nbsp;&nbsp;
                            
                        <button type="button" class="insertConfirm"
                           onclick="reConfirm(this);"
                           style="display:none;" >댓글 추가 완료</button> 
                           
                     </c:if><c:if test="${bco.clevel ge 3}">
                        <span> 마지막 레벨입니다.</span>
                     </c:if>
                     </td>
                  </tr>
                  <tr class="comment replyList${bco.clevel}">
                     <td colspan="3" style="background : transparent;">
                     <textarea class="reply-content" cols="105" rows="3"
                      readonly="readonly">${bco.ccontent}</textarea>
                     </td>
                  </tr>
               </table>
               </c:forEach>
         </c:if>
  		 </div>
      </div>
   </div>
   <script>
   // 게시글 번호를 전달할 전역 변수 생성
   var bno = ${board.bno};
   
   // 댓글 수정 함수
   function updateReply(obj){
	   // 현재 위치와 가장 가까운 textarea 가져오기
	   $(obj).parent().parent().next().find('textarea')
	   .removeAttr('readonly');
	   
	   // 수정 완료 버튼 보여주기
	   $(obj).siblings('.updateConfirm').css('display','inline');
	   
	   // 수정 하기는 숨기기
	   $(obj).css('display','none');
   }
   
   // 수정 완료 기능 구현 함수
   function updateConfirm(obj){
	   // 댓글 내용 가져오기
	   
	   var content 
	   = $(obj).parent().parent().
	   next().find('textarea').val();
	   
	   
	   // 댓글 번호 가져오기
	   var cno = $(obj).siblings('input').val();
	   
	   location.href="/myWeb/update.co?cno="+cno+"&bno="+bno
			   		+"&ccontent=" + content;
   }
   
   // 댓글 삭제 함수
   	function deleteReply(obj){
   		var cno = $(obj).siblings('input').val();
   		
   		location.href="/myWeb/delete.co?cno="+cno+"&bno="+bno;
   	}
   // 대댓글 기능 구현 함수
   function reComment(obj){
	   
	   // 추가 완료 기능 버튼 보이게 하기
	   $(obj).siblings('.insertConfirm').css('display','inline');
	   
	   // 현재 버튼은 숨기기
	   $(obj).css('display','none');
	   
	   // 내용 입력 공간 만들기
	   // $(obj).parent('table').append(htmlCode);
	   var htmlCode = 
            '<tr class="comment"> <td></td>'
           + '<td colspan="3" style="background: transparent;">'
           + '<textarea class="reply-content" style="background:#ffc;"'
           + '  cols="100" rows="3"></textarea>'
           + '</td></tr>';
           
           $(obj).parents('table').append(htmlCode);
   }
   	// 대댓글 작성 완료 시 동작 할 함수
   	function reConfirm(obj){
   	// 참조한 댓글의 정보 가져오기
   	// 참조한 댓글의 번호
   	
   
   	var refcno = $(obj).siblings('input[name=refcno]').val();
   	
   	//참조한 댓글의 레벨 +1
   	var clevel = Number($(obj).siblings('input[name=clevel]').val()) + 1;
    
   	// console.log(refcno + " : " + clevel);
   	
   var parent = $(obj).parent();
   var grandParent = parent.parent();
   var siblingsTR = grandParent.siblings().last();
   
   var content = siblingsTR.find("textarea").val();
   
   location.href='/myWeb/insert.co?'
   				+ 'writer=${member.userId}'
   				+ '&replyContent=' + content
   				+ '&bno=' + bno
   				+ '&refcno=' + refcno
   				+ '&clevel=' + clevel; 
   }
 
   </script>
   </section>
   <br><br><br><br>
	</c:if><c:if test="${ empty member }">
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