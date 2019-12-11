<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
	
</style>
<header>
    <div class="bg-dark p-4" style="height:150px;">
 	<div class="d-inline-block" style="width:100%">
      <h2 class="text-white h2" style="cursor:pointer; float: left;"  onclick="goAdminHome();">관리자 페이지</h2>    
      <p style="color:white; font-size:1rem; cursor:pointer; float: right;" onclick="goTflex();"><b>TFLEX 바로가기</b></p>
     </div>
     <br /><br />
      <ul class="nav"  style="float:left;">
  <li class="nav-item">
    <a class="nav-link active" onclick="goTradeManager();" style="cursor:pointer;">거래 관리</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" onclick="goNoticeManager();" style="cursor:pointer;">공지사항 관리</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" onclick="goReportManager();" style="cursor:pointer;">신고 관리</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" onclick="goQNAManager();" style="cursor:pointer;">Q&A 관리</a>
  </li>
</ul>
    
</div>
</header>

<script>
	function goAdminHome(){
		location.href="${ pageContext.request.contextPath }/views/admin/adminIndex.jsp";
	}
	function goTflex(){
		location.href="${ pageContext.request.contextPath }/index.jsp";
	}
	function goTradeManager(){
		location.href="${ pageContext.request.contextPath }/views/admin/adminViews/tradeManagerView.jsp";
	}
	function goNoticeManager(){
		location.href="${ pageContext.request.contextPath }/views/admin/adminViews/noticeManagerView.jsp";
	}
	function goReportManager(){
		location.href="${ pageContext.request.contextPath }/views/admin/adminViews/reportManagerView.jsp";
	}
	function goQNAManager(){
		location.href="${ pageContext.request.contextPath }/views/admin/adminViews/QNAManagerView.jsp";
	}
	
</script>