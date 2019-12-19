<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓 게시글 수정</title>
<style>
body{
	background-color:rgb(229, 229, 220);
}
   .mb-3{
      display:inline-block;
   }
#yu{
  width:500px;
  height:200px;
  background-size: 500px;
  background-repeat:no-repeat;
  margin:auto;
}
</style>


<!-- 썸머노트 css, js 설정 -->

<c:import url="../common/commonUtil.jsp" />
<script src="${ pageContext.request.contextPath }/resources/js/summernote.js"></script>

<!-- include summernote css/js -->
<link href="${ pageContext.request.contextPath }/resources/css/summernote.css" rel="stylesheet">


</head>
<body>
<c:import url="../common/header.jsp" />
<br />
<section>
 <div align="center" >
   <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('../../resources/img/ticket4.jpg');">
    </div>
   </div>
<div class="mb-2" align="center">
<form id="updateForm" action="${ pageContext.request.contextPath }/tUpdate.bo"  method="post"  >
		<div class="input-group mb-3" style="width:900px;">

			<br />
  				<input type="text" class="form-control" aria-label="Text input with dropdown button" 
 				 name="ttitle" placeholder="제목을 입력하세요." value="${Tboard.tTitle}">
 				 <br />
				
 				<input type="text" class="form-control" aria-label="Text input with dropdown button" 
 				 name="tdate" placeholder="경기일자를 입력하세요." value="${Tboard.tDate}">
 				 <input type="text" class="form-control" aria-label="Text input with dropdown button" 
 				 name="tprice" placeholder="가격을 입력하세요." value="${Tboard.tPrice}">
 				 <input type="text" class="form-control" aria-label="Text input with dropdown button" 
 				 name="ticketno" placeholder="티켓 일련번호를 입력하세요." value="${Tboard.ticketNo}">
 				
		</div>

		<div class="editorArea"  style="margin-top:20px;">
  				<textarea id="summernote" name="editordata">${Tboard.tContent}</textarea>
		</div>
		<input type="hidden" name="uno"  value="${member.uNo}"/>
		<input type="hidden" name="tNo"  value="${Tboard.tNo}"/>

<div align="center">
               <button class="btn btn-primary" onclick="completeUpdate();">수정완료</button>
               <button class="btn btn-primary" onclick="deleteBoard();">삭제하기</button>
            </div>
            
</form>
				
</div>
</section>
<br ><br ><br ><br ><br >


<c:import url="../common/footer.jsp" />
<c:import url="../common/loginUtil.jsp"/>

<script>
$(document).ready(function(){
	
$('#summernote').summernote({
    placeholder: '내용을 입력하세요.',
    tabsize: 2,
    height: 500,
    width: 900,
    focus: true,
    callbacks: {
       onImageUpload: function(files, editor, welEditable) {
             for (var i = files.length - 1; i >= 0; i--) {
                sendFile(files[i], this);
             }
         }
    }
 });
});
	
  $('.dropdown-toggle').dropdown()
 
 function sendFile(file, el) {
    
 var form_data = new FormData();
  form_data.append('file', file);
  // console.log(form_data.file);

  
  $.ajax({
       data: form_data,
       type: "post",
       url: '/tflex/update.tn',
    cache : false,
    contentType : false,
       enctype: 'multipart/form-data',
    processData : false,
       success: function(url) {
          console.log('----------------------------');
          console.log(url);
          console.log('----------------------------');
          url.replace("\/","/");
         $(el).summernote('editor.insertImage', url);
       }, error: function(){
          console.log("실패실패");
       }
  });
}
 
  function completeUpdate(){
      if($('#ttitle').val() == ""){
         alert("제목을 입력하세요.");
         $('#ttitle').focus();
      } else if($('#tdate').val() == ""){
         alert("경기 일자를 입력해주세요");
         $('#tdate').focus();
      } else if($('#tprice').val() == ""){
          alert("가격을 입력해 주세요.");
          $('#tprice').focus();
      } else if($('#ticketno').val() == ""){
          alert("티켓 일련번호를 입력해 주세요.");
          $('#ticketno').focus();
      } else if($('#summernote').val() == ""){
          alert("내용을 입력해 주세요.");
          $('#summernote').focus();
      } else {
         $('#updateForm').submit();
      }
      event.preventDefault();   
      
   }
   
   function deleteBoard(){
      var answer = confirm("게시글을 삭제 하시겠습니까?");
      
      if(answer == true){
    	  $('#updateForm').attr("action", "${pageContext.request.contextPath}/tDelete.bo");
        } 
   }
  	
 
</script>

</body>
</html>