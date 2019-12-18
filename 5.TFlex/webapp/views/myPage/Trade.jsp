<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    My Page
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <c:import url="../common/myPageUtil.jsp"/>

	<style>
		  #bhy-card-shadow{
            border-style : hidden;
            box-shadow : 5px 5px 3px gray;
        }
        
           #bhy-nav-font{
        	font-size : 15px;
        } 
        
        #bhy-table, #bhy-table-header{
        	text-align : center;
        	
        }

        #bhy-text{
        	margin-top : 20px;
        	margin-left : 20px;
        }
        
	</style>
</head>

<body class="">
  <div class="wrapper ">
  
  <!-- 사이드바 시작 -->
    <div class="sidebar" data-color="blue" data-active-color="danger">

      <div class="logo">
        <a href="${pageContext.request.contextPath }/index.jsp" class="simple-text logo-mini">
          <div class="logo-image-big">
            <img src="${ pageContext.request.contextPath }/resources/test/img/baseball_logo.jpg">
          </div>
        </a>
        <a href="../../index.jsp" class="simple-text logo-normal">T.Flex</a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav" id="bhy-nav-font">  
             
          <li>
            <a href="myPage.jsp">
              <i class="fas fa-gem"></i>정보수정
            </a>
          </li>
          <br>
          <li>
          	 <a href="${pageContext.request.contextPath }/views/myPage/favorite.jsp">
				<i class="fas fa-pencil-alt"></i>찜 목록
            </a>
          </li>
        	<br>
          <li>
          	 <a href="${pageContext.request.contextPath }/views/myPage/memberDeleteForm.jsp">
				<i class="fas fa-bullhorn"></i>회원탈퇴
            </a>
          </li>
          <br>   
          <li  class="active ">
          	 <a href="${pageContext.request.contextPath }/views/myPage/Trade.jsp">
				<i class="fas fa-bullhorn"></i>거래내역
            </a>
          </li>                         
        </ul>
      </div>
    </div>
    <!-- 사이드바 끝 !!  -->
    
      <!-- 본문내용영역 헤더 -->
	<div class="main-panel">
			 <!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
		<div class="container-fluid">
			<div class="navbar-wrapper">
				<div class="navbar-toggle">
					<button type="button" class="navbar-toggler">
						<span class="navbar-toggler-bar bar1"></span>
						<span class="navbar-toggler-bar bar2"></span>
						<span class="navbar-toggler-bar bar3"></span>
					</button>
				</div>
			<a class="navbar-brand" href="#pablo">              
				<i class="fas fa-gem" id="bhy-text" >거래내역</i>
			</a>
			</div>
		</div>
	</nav>
<!-- End Navbar -->


<!--  본문 영역 시작 -->
<div class="content" id="Trade">
	<div class="row">
		<div class="col-md-12">
          
          
<!--  카드영역 분리가능한 시작  -->
	<div class="col-md-8" style="margin: auto;" >
		<div class="card-header"  id="bhy-card-shadow" 
				style="background:white; height: 100px; font-size:30px;">                
			<i class="fas fa-gem" id="bhy-text" >거래 내역</i>
		</div>
	</div><br />
<!--  카드영역 분리가능한 끝 -->
          
          

<!-- 내용 테이블 영역 -->
<div class="col-md-8" style="margin: auto;">
	<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">                
		<br /><br />

<!-- 내용테이블  시작점  -->					



<!-- ------------------------------ -->
				</div>
			</div>
	<!--  내용 테이블 영역 끝  -->	
		
		</div>
	</div>
</div>
<!-- 본문 영역 끝  -->

		</div>
	</div>
</body>
</html>
