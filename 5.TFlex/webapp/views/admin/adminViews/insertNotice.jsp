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
<link href="${ pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
<link href="${ pageContext.request.contextPath }/resources/css/summernote.css" rel="stylesheet">

<script src="${ pageContext.request.contextPath }/resources/js/jquery.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/summernote.js"></script>

<script>
$(document).ready(function(){
	$('#summernote').summernote({
		height: 300,
		minHeight: null,
		maxHeight: null,
		focus: true
	});
});
</script>
</head>
<body>
<c:import url="adminCommon/header.jsp" />

<textarea id="summernote" ></textarea>

<c:import url="adminCommon/footer.jsp" />
</body>
</html>