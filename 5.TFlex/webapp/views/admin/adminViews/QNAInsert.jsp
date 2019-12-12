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
<c:import url="../../common/commonUtil.jsp" />
<style>
	.form1{
		display:inline;
	}
	.QNAarea{
		display:inline-block;
	}
</style>
</head>
<body>
<c:import url="adminCommon/header.jsp" />

<div align="center" style="margin:10px; width:auto; height:auto;">
<div class="QNAarea" style="width:550px; height:600px; margin:5px; background-color:#EAE1D0; padding:10px;">
  
    <label>문의 제목</label>
    <input type="text" class="form-control" id="exampleFormControlInput1" disabled>
    
 	<br />
 	
    <label>문의 회원</label>&nbsp;&nbsp;
    <input type="text" class="form-control form1" id="exampleFormControlInput1" style="width:140px;" disabled>
  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	
    <label>문의 항목</label>
    <input type="text" class="form-control form1" id="exampleFormControlInput1" style="width:190px; float:right;" disabled>
  	
  	<br /><br />
  	
    <label>문의 내용</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"  style="resize:none; height:410px;"></textarea>
 
  </div>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <div class="QNAarea" style="width:550px; height:600px; margin:5px; background-color:#6F9478; padding:10px;">
  
    <label>답변 제목</label>
    <input type="text" class="form-control" id="exampleFormControlInput1">
    
 	<br />
 	
    <label>문의 회원</label>&nbsp;&nbsp;
    <input type="text" class="form-control form1" id="exampleFormControlInput1" style="width:140px;" disabled>
  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	
    <label>문의 항목</label>
    <input type="text" class="form-control form1" id="exampleFormControlInput1" style="width:190px; float:right;" disabled>
  	<br /><br />
  	
    <label>답변 내용</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"  style="resize:none; height:410px;"></textarea>
 
  </div>
 	<br /><br />
 
  <div>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
 
  <button type="button" class="btn btn-secondary" >답변 완료</button>
  <button type="button" class="btn btn-secondary" >취소</button>
  </div>
  
 
</div>


<c:import url="adminCommon/footer.jsp" />
</body>
</html>