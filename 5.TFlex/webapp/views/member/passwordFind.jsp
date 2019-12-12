<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<c:import url="../common/commonUtil.jsp"/>
<style>
	.outer{
		padding: 20px;
		width:600px;
		height:500px;
		background:rgba(50,50,50,0.7);
		color:white;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	span {
		font-size:21pt;
		background: white;
		color: navy;
	}
</style>
</head>
<body>
<c:import url="../common/joinHeader.jsp"/>

	
	<section class="outer">
		<h1>
			서비스 준비중!
		</h1>
	
		<!-- 첫글자 강조, 나머지 글자 표현 -->
		
		<h4><span>${fn:substring(msg,0,1)}</span>${fn:substring(msg,1,-1)}<br><br>
			일정이 빠듯해 아직 준비중입니다.<br /><br />
			빠른시일내에 찾아뵙겠습니다. <br /><br />
			준비기간내에 비밀번호를 잊으신 사용자께서는 기다려주세용~<br /><br />
			감사합니다.^-^
		</h4>
	</section>
	

</body>
</html>
