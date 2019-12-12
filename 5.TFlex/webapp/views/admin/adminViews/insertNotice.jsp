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
<style>
	
</style>
<c:import url="../../common/commonUtil.jsp" />

<!-- 썸머노트 css, js 설정 -->

<script src="${ pageContext.request.contextPath }/resources/js/summernote.js"></script>

<!-- include summernote css/js -->
<link href="${ pageContext.request.contextPath }/resources/css/summernote.css" rel="stylesheet">


</head>
<body>
<c:import url="adminCommon/header.jsp" />
<br />
<br />


<div align="center">
<div class="input-group mb-3" style="width:900px;">
<div align="left">
<select style="border-color:lightgray; border-radius:2px;" >
                            <option>-- 선택 --</option>
                            <option value="1">공지사항</option>
                            <option value="2">티켓게시판</option>
                            <option value="3">굿즈게시판</option>
                            <option value="4">KBO</option>
                            <option value="5">MLB</option>
                        </select>
</div>
<br />

  <input type="text" class="form-control" aria-label="Text input with dropdown button" placeholder="제목을 입력하세요.">
</div>


<div class="editorArea"  style="margin-top:20px;">
<form method="post">
  <textarea id="summernote" name="editordata" ></textarea>
</form>
</div>
</div>


<c:import url="adminCommon/footer.jsp" />

<script>
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

 // $('.dropdown-toggle').dropdown()
 
 function sendFile(file, el) {
    
 var form_data = new FormData();
  form_data.append('file', file);
  // console.log(form_data.file);
  
  $.ajax({
       data: form_data,
       type: "post",
       url: '/facehair/insert.tn',
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
 
</script>
</body>
</html>