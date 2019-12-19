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

textarea{
	resize:none;
}

table{
	width:90%;
	height:100%;
}
.contenttable{
	border: 1px solid lightgray;
	border-collapse: collapse;
	width:90%;
	height:100%;
	border-collapse: collapse;
}
.contenttable td{
	border: 1px solid lightgray;
	border-collapse: collapse;
}
.table1{
	border: 1px solid white;
}
th,td{
/* 전(상,하,좌,우) 방향  */
/*padding: 10px;*/
/* 12-6-3-9 */ /* 두 개의 결과는 같다. */
/*padding: 10px 20px;*/
padding: 8px;
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

<section class="outer">
	<div  class="tableArea" align="center" >
	<br /><br />
    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('${pageContext.request.contextPath}/resources/img/MLB.jpg;">
    </div>
<br /><br />

<c:if test="${ !empty member }">

      <br>
            <table class="contenttable" align="center">
               <tr>
                  <td>제목 </td>
                  <td colspan="5"><span>${board.btitle}</span></td>
               </tr>
               <tr>
                  <td>작성자 </td>
                  <td><span>${board.uno}</span></td>
                  <td>작성일</td>
                  <td><span>${board.bbenrolldate}</span></td>
                  <td>조회수 </td>
                  <td><span>${board.bcount}</span></td>
               </tr>
               <tr>
                  <td colspan="6">내용 </td>
               </tr>
               <tr>
                  <td colspan="6">
                     <p id="content">${board.bcontent}
                  </td>
               </tr>
            </table>
            <br><br /><br />
      
      <div align="center">
         <button class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath }/mselectList.bo?cgbno=1'">메뉴로 돌아가기</button>
         <c:if test="${!empty member and member.uNo eq board.uno}">
            <c:url var="boardUpdate" value="mbUpView.bo">
               <c:param name="bno" value="${board.bno}" />
            </c:url>
            <button class="btn btn-primary" onclick="location.href='${boardUpdate}'">수정하기</button>
         </c:if>
      </div>
      <br />
   <div class="replyArea" align = "center">
   	<div class="replyWriteArea">
         <form action="${pageContext.request.contextPath }/mInsert.co" method="post">
            <input type="hidden" name="uno" value="${ member.uNo }"/>
            <input type="hidden" name="bno" value="${board.bno }" />
            <input type="hidden" name="cgbno" value="1" />
            <input type="hidden" name="cno2" value="0" />
            <input type="hidden" name="clevel" value="1" />
            
            <table class="table1" align="center">
               <tr>
                  <td>댓글 작성</td>
                  <td><textArea rows="3" cols="80" id="replyContent" name="replyContent"></textArea></td>
                  <td><button class="btn btn-primary" type="submit" id="addReply">댓글 등록</button></td>
               </tr>
            </table>
         </form>
        </div>
  		 <div id="replySelectArea">
  		 <c:if test="${ !empty clist }">
               <c:forEach var="bco" items="${ clist }">
                  <table class="table1"   id="replySelectTable"
             style="margin-left : ${(bco.clevel -1) * 15}px;
                   width : ${800 - ((bco.clevel -1) * 15)}px;"
             class="replyList${bco.clevel}">
                    <tr>
                       <td rowspan="2"> </td>
                     <td><b>${bco.uno}</b></td>
                     <td>${bco.cdate}</td>
                     <td align="center">
                     <c:if test="${member.uNo eq bco.uno }">
                        <input type="hidden" name="cno" value="${bco.cno}"/>
                             
                        <button type="button" class="btn btn-primary" 
                           onclick="updateReply(this);">수정하기</button>
                           
                        <button type="button" class="btn btn-primary"
                           onclick="updateConfirm(this);"
                           style="display:none;" >수정완료</button> &nbsp;&nbsp;
                           
                        <button type="button" class="btn btn-primary"
                           onclick="deleteReply(this);">삭제하기</button>
                     </c:if>
			<form action="${pageContext.request.contextPath }/mInsert.co" method="post">
                     <c:if test="${ bco.clevel lt 3 }">
                        <input type="hidden" name="uno" value="${member.uNo}"/>
                        <input type="hidden" name="cno2" value="${bco.cno}" />
                        <input type="hidden" name="clevel" value="${bco.clevel}" />
                        <input type="hidden" name="cgbno" value="${board.cgbno}" />
                        <button type="button" class="btn btn-primary"
                            onclick="reComment(this);">댓글 달기</button>&nbsp;&nbsp;
                            
                        <button type="button" class="btn btn-primary"
                           onclick="reConfirm(this);"
                           style="display:none;" >댓글 추가 완료</button> 
                     </c:if>
            </form>
                     <c:if test="${bco.clevel ge 3}">
                        <span> 마지막 레벨입니다.</span>
                     </c:if>
                     </td>
                  </tr>
                  <tr class="comment replyList${bco.clevel}">
                     <td colspan="3" style="background : transparent; resize:none;">
                     <textarea class="reply-content" cols="80" rows="3"
                      readonly="readonly" >${bco.ccontent}</textarea>
                     </td>
                  </tr>
               </table>
               </c:forEach>
         </c:if>
  		 </div>
      </div>
   </div>
   </c:if>
   
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
	   
	   location.href="/tflex/mupdate.co?cno="+cno+"&bno="+bno
			   		+"&ccontent=" + content;
   }
   
   // 댓글 삭제 함수
   	function deleteReply(obj){
   		var cno = $(obj).siblings('input').val();
   		
   		location.href="/tflex/mdelete.co?cno="+cno+"&bno="+bno;
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
   	
   
   	var cno2 = $(obj).siblings('input[name=cno2]').val();
   	var cgbno = $(obj).siblings('input[name=cgbno]').val();
   	//참조한 댓글의 레벨 +1
   	var clevel = Number($(obj).siblings('input[name=clevel]').val()) + 1;
    
   	// console.log(refcno + " : " + clevel);
   	
   var parent = $(obj).parent();
   var grandParent = parent.parent();
   var siblingsTR = grandParent.siblings().last();
   
   var ccontent = siblingsTR.find("textarea").val();
   
   location.href='/tflex/mInsert.co?'
   				+ 'uno=${member.uNo}'
   				+ '&replyContent=' + ccontent
   				+ '&bno=' + bno
   				+ '&cgbno=' + cgbno
   				+ '&cno2=' + cno2
   				+ '&clevel=' + clevel; 
   }
 
   </script>
   </section>
   <br><br><br><br>
	<c:if test="${ empty member }">
		<c:url var="errorPage" value="views/common/errorPage.jsp">
		<c:set var="msg" value="회원만 가능한 서비스입니다." scope="session"/>
		</c:url>
		
		<c:redirect url="${errorPage }"/>
	</c:if>


<c:import url="../common/footer.jsp"/>
<c:import url="../common/loginUtil.jsp"/>
</body>
</html>