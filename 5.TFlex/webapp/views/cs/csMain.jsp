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
    Customer Service
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
    <div class="sidebar" data-color="blue" data-active-color="danger">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-mini">
          <div class="logo-image-big">
            <img src="${ pageContext.request.contextPath }/resources/test/img/baseball_logo.jpg">
          </div>
        </a>
        <a href="../../index.jsp" class="simple-text logo-normal">
          	T.Flex
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav" id="bhy-nav-font">       
          <li class="active ">
            <a href="csMain.jsp">
              <i class="fas fa-gem">FAQ</i>
            </a>
          </li>
          <br /><br />
          <li>
          	 <a href="QNAList.jsp">
				<i class="fas fa-pencil-alt"></i>Q&A
            </a>
          </li>
        	<br />
          <li>
          	 <a href="noticeList.jsp">
				<i class="fas fa-bullhorn"></i>Notice
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
			<i class="fas fa-gem" id="bhy-text" > FAQ</i>
		</a>
		</div>
	</div>
</nav>
<!-- End Navbar -->

<!--  본문 내용 영역 -->
<div class="content" id="Notice">
	<div class="row">
		<div class="col-md-12">
          
<!--  카드영역 분리가능한 시작  -->
	<div class="col-md-8" style="margin: auto;" >
		<div class="card-header"  id="bhy-card-shadow" 
				style="background:white; height: 100px; font-size:40px;">                
			<i class="fas fa-gem" id="bhy-text" > 자주 찾는 질문 FAQ</i>
		</div>
	</div><br /><!--  카드영역 분리가능한 끝 -->
          

<!-- 본문 테이블 영역 -->
<div class="col-md-8" style="margin: auto;">
	<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">                
		<br /><br />

<!-- ------------------------------------------------------------------- -->					
					
<div class="accordion" id="accordionExample">
 <!--  <div class="card"> -->
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          자주찾는질문 제목1
        </button>
      </h2>
    </div>
    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
        자주찾는질문입니다. 이것은 첫번째입니다.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          자주찾는질문 제목2
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
 		자주찾는 질문입니다2
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          자주찾는질문제목3
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
       자주찾는질문입니다3.
      </div>
    </div>
  </div>
</div>
</div>
</div>							  
<!--  본문 영역 끝  -->


				</div>
			</div>
		</div>
	</div>

<!--   </div> -->


<!--  기능구현 영역 -->
<script>

$('').click(function(){
	$('#alamdiv').hide();
	$('#collapseOne').show();
	
	
	$('#alamBtn').removeClass('active');
	$('#chatBtn').addClass('active');
	




$(document).ready(function() {
	
	$(".content").hide();
<!-- 	content 클래스를 가진 div를 표시/숨김(토글)
-->	
	$(".heading").click(function(){
	
$(this).next(".content").slideToggle(500);
});
});

	

	
</script>

     

</body>
</html>
