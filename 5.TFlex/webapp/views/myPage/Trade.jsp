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

        #bhy-text-bhy{
        	margin-top : 20px;
        	margin-left : 300px;
        	font-size : 20px; 
        }

		p{
			font-size : 20px;
		}

  table, th, td {
    border: 1px solid #EAECEE;
    align : center;
    
  }
  
  table {

    width: 100%;
    height: 400px;
  }
        #bhy-text{
        	margin-top : 20px;
        	margin-left : 20px;
        	font-size : 30px;
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
              <i class="fas fa-user-edit"></i>회원정보수정
            </a>
          </li>
          <br>
          <li>
          	 <a href="${pageContext.request.contextPath }/views/myPage/favorite.jsp">
				<i class="fas fa-heart"></i>찜 목록
            </a>
          </li>
        	<br>
          <li>
          	 <a href="${pageContext.request.contextPath }/views/myPage/memberDeleteForm.jsp">
				<i class="fas fa-user-slash"></i>회원탈퇴
            </a>
          </li>
          <br>   
          <li  class="active ">
          	 <a href="${pageContext.request.contextPath }/views/myPage/Trade.jsp">
				<i class="far fa-credit-card"></i>거래내역
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
				<i class="far fa-credit-card" id="bhy-text" >&nbsp;&nbsp;거래내역</i>
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
<!-- 	<div class="col-md-8" style="margin: auto;" >
		<div class="card-header"  id="bhy-card-shadow" 
				style="background:white; height: 100px; font-size:30px;">                
			<i class="fas fa-gem" id="bhy-text" >최근 구매/판매한 상품</i>
		</div>
	</div><br /> -->
<!--  카드영역 분리가능한 끝 -->
          
          

<!-- 내용 테이블 영역 -->
<!-- <div class="col-md-8" style="margin: auto;">
	<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">                
		<br /><br />
 -->
<!-- 내용테이블  시작점  -->					
<!-- 
	
<table class="table"  style="text-align : center;">
  <thead class="thead-light" >
    <tr>
      <th scope="col-md-1">#</th>
      <th scope="col-md-8">상품정보</th>
      <th scope="col-md-1">바로가기</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
    </tr>
  </tbody>
</table>
		 -->
		 


<!-- Grid row -->
<div class="row" style="align:center;" id="bhy-text-bhy">

  <!-- Grid column -->
  <div class="col-md-8 mb-6">

    <!--Card-->
    <div class="card default-color-dark">

      <!--Card image-->
      <div class="view">
        <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(125).jpg" class="card-img-top" alt="photo">
        <a href="#">
        </a>
      </div>

      <!--Card content-->
      <div class="card-body text-center">
        <!--Title-->
        <h4 class="card-title white-text">서비스 준비중이랍니다. \^0^/  Comming Soon!!</h4>
        <!--Text-->
        <p class="card-text white-text">
        	저희 T.Flex는 세미프로젝트에 많은 기능 구현을 도전하였습니다. <br />
        	짧은 시간 내에 여러 가지 기능을 구현하다 보니 시간이 부족한 관계로 <br />
        	거래내역은 보여드리지 못해 안타까운 마음 뿐입니다. <br />
        	저희 사이트를 구매해주시면 기능 구현을 마무리해 드리겠습니다. <br />
        	아래 버튼을 눌러 메인페이지로 이동부탁드립니다.         	
        </p>
        <a href="${pageContext.request.contextPath }/index.jsp" class="btn btn-danger btn-md waves-effect">메인으로 돌아가세요</a>
      </div>

    </div>
    <!--/.Card-->

  </div>
 
		  
			</div>
	<!--  내용 테이블 영역 끝  -->	
	</div>
	</div>
	
<!-- 본문 영역 끝  -->

		</div>
	</div>
	</div>
</body>
</html>
