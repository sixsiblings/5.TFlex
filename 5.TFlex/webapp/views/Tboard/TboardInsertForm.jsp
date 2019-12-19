<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓 판매글 작성</title>
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
<form id="insertForm" action="${ pageContext.request.contextPath }/tInsert.bo"  method="post"  >
		<div class="input-group mb-3" style="width:900px;">

	
			<br />
  				<input type="text" class="form-control" aria-label="Text input with dropdown button" 
 				 name="ttitle" placeholder="입력 예)두산 vs NC">
 				<input type="text" class="form-control" aria-label="Text input with dropdown button" 
 				 name="tdate" placeholder="경기일자를 입력하세요.">
 				 <input type="text" class="form-control" aria-label="Text input with dropdown button" 
 				 name="tprice" placeholder="가격을 입력하세요.">
 				 <input type="text" class="form-control" aria-label="Text input with dropdown button" 
 				 name="ticketno" placeholder="티켓 일련번호를 입력하세요.">
 				
 				<span>경기장 :   </span>
 				
 				<select name="stadium">
 				
 				<option value="선택">선택</option>

	 				<optgroup label="서울·경기">
		     			<option value="1">수원 KT위즈파크</option>
		     			<option value="2">잠실 야구장</option>
		     			<option value="3">고척 스카이 돔</option>
		     			<option value="4">인천 SK 행복드림구장</option>
	     			</optgroup>
	     			<optgroup label="남부지역">
	        			<option value="8">창원 NC 파크</option>
	        			<option value="9">마산 야구장</option>
	        			<option value="6">대구 삼성 라이온즈파크</option>
	        			<option value="5">부산 사직 종합 운동장</option>
	        			<option value="7">광주 기아 챔피언스 필드</option>
	     			</optgroup>
     				
				</select>
 				
		</div>

		<div class="editorArea"  style="margin-top:20px;">
  				<textarea id="summernote" name="editordata"></textarea>
		</div>
		<input type="hidden" name="uno"  value="${member.uNo}"/>

<div align="center">
<button type="reset" class="btn btn-primary" onclick="cancelbtn();">취소</button>
<button type="submit" class="btn btn-primary" onclick="insertbtn();">확인</button>
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
       url: '/tflex/insert.tn',
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
 
  function insertbtn(){
      if($('#ttitle').val() == ""){
         alert("제목을 입력하세요.");
         $('#ttitle').focus();
      } else if($('#summernote').val() == ""){
         alert("내용을 입력해 주세요.");
         $('#summernote').focus();
      } else {
         $('#insertForm').submit();
      }
      event.preventDefault();   
      
   }
   
   function cancelbtn(){
      var answer = confirm("게시글 작성을 취소하시겠습니까?");
      
      if(answer == true){
    	  location.href = "${pageContext.request.contextPath}/tboardList.to";
        } 
   }
   
 
</script>

</body>
</html>