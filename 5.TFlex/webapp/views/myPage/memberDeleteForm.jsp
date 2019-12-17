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
        
		/* 아코디언 부분 CSS */
		.accordion {
		    font-family:Arial, Helvetica, sans-serif; 
		    margin:0 auto;
		    font-size:14px;
		    width:900px;
		    padding:5px;
		    background:white;
		}
		.accordion ul {
		    list-style:none;
		    margin:0;
		    padding:0;    
		}
		.accordion li {
		    margin:0;
		    padding:0;
		}
		.accordion [type=radio], .accordion [type=checkbox] {
		    display:none;
		}
		.accordion label {
		    display:block;
		    font-size:15px;
		    line-height:16px;
		    background:#E5E5E8;
			color:black;
		    text-shadow:1px 1px 1px rgba(255,255,255,0.3);
		    font-weight:700;
		    cursor:pointer;
		    text-transform:uppercase;
		    -webkit-transition: all .2s ease-out;
		    -moz-transition: all .2s ease-out;
		}
		.accordion ul li label:hover, .accordion [type=radio]:checked ~ label, .accordion [type=checkbox]:checked ~ label {
		    background:#4E4A48;
		    color: #F89A60;
  		    text-shadow:1px 1px 1px rgba(0,0,0,0.5) 
	}
		.accordion .content {
		    padding:0 10px;
		    overflow:hidden;
		    -webkit-transition: all .5s ease-out;
		    -moz-transition: all .5s ease-out;
		}
		.accordion p {
		    color:#333;
		    margin:0 0 30px;
		}

		
		/* Vertical */
		.vertical ul li {
		    overflow:hidden;
		    margin:0 0 1px;
		}
		.vertical ul li label {
		    padding:10px;
		}
		.vertical [type=radio]:checked ~ label, .vertical [type=checkbox]:checked ~ label {
		    border-bottom:0;
		}

		.vertical ul li .content {
		    height:0px;
		    border-top:0;
		}
		.vertical [type=radio]:checked ~ label ~ .content, .vertical [type=checkbox]:checked ~ label ~ .content {
		    height:auto;
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
          <li class="active ">
            <a href="myPage.jsp">
              <i class="fas fa-gem"></i>정보수정
            </a>
          </li>
          <br>
          <li>
          	 <a href="memberCart.jsp">
				<i class="fas fa-pencil-alt"></i>장바구니
            </a>
          </li>
        	<br>
          <li>
          	 <a href="memberDeleteForm.jsp">
				<i class="fas fa-bullhorn"></i>회원탈퇴
            </a>
          </li>
          <br>   
          <li>
          	 <a href="Trade.jsp">
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
				<i class="fas fa-gem" id="bhy-text" >회원 정보 수정</i>
			</a>
			</div>
		</div>
	</nav>
<!-- End Navbar -->


<!--  본문 영역 시작 -->
<div class="content" id="userInfo">
	<div class="row">
		<div class="col-md-12">
          
          
<!--  카드영역 분리가능한 시작  -->
	<div class="col-md-8" style="margin: auto;" >
		<div class="card-header"  id="bhy-card-shadow" 
				style="background:white; height: 100px; font-size:30px;">                
			<i class="fas fa-gem" id="bhy-text" >  회원 정보 수정</i>
		</div>
	</div><br />
<!--  카드영역 분리가능한 끝 -->
          
          

<!-- 내용 테이블 영역 -->
<div class="col-md-8" style="margin: auto;">
	<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">                
		<br /><br />

<!-- 내용테이블  시작점  -->		

	
		<div class="content" id="Edit_Profile">
        <div class="row">
          <div class="col-md-12">
            <div class="col-md-8" style="margin: auto;">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">회원탈퇴</h5>
              </div>
              <div class="card-body">
                <form action="${ pageContext.request.contextPath }/delete.me">
                <div class="btns" align="center">
                <input type="password"  id="password" name="password"/>
                <div class="row">
                    <div class="update ml-auto mr-auto">
                      <button type="submit" class="btn btn-primary btn-round">회원 탈퇴</button>
                    </div>
                  </div>
                </div>
                 
                  
                </form>
              </div>
            </div>
          </div>
          
            
          </div>
        </div>
      </div>
      
  

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
	</div>
</body>
</html>
