<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>공지사항 글 상세보기</title>
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
                   
         #bhy-Btn{
         	margin-left : 80px;
         }
	</style>
	
</head>
<body>


<body class="">
  <div class="wrapper ">
  <!-- 사이드바 시작 -->
    <div class="sidebar" data-color="blue" data-active-color="danger">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="${pageContext.request.contextPath }/index.jsp" class="simple-text logo-mini">
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
              <i class="fas fa-user"></i>FAQ
            </a>
          </li>
          <br />
          <li>
          	 <a href="${pageContext.request.contextPath}/views/cs/QNAList.jsp">
				<i class="fas fa-pencil-alt"></i>Q&A
            </a>
          </li>
        <br />
          <li class="active ">
          	 <a href="${ pageContext.request.contextPath }/noticelist.do">
				<i class="fas fa-bullhorn">Notice</i>
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
			            <a class="navbar-brand" href="#pablo">Notice</a>
			          </div>
			        </div>
			      </nav>
			      <!-- End Navbar -->
			      <!-- <div class="panel-header panel-header-lg">
			  <canvas id="bigDashboardChart"></canvas>
			</div> -->

	<!--  본문 내용 영역 -->
      <div class="content" id="Notice">
        <div class="row">
          <div class="col-md-12">
          
          <!--  카드영역 분리가능한 시작  -->
			<div class="col-md-8" style="margin: auto;" >
			   <div class="card-header"  id="bhy-card-shadow" style="background:white; height: 100px; font-size:40px;">                
                	<i class="fas fa-bullhorn" id="bhy-text" > 공지사항</i>
              </div>
          </div><br />           
      <!--  카드영역 분리가능한 끝 -->
          


		<!-- 본문 테이블 영역 -->
			<div class="col-md-8" style="margin: auto;">
			   <div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">
				<table id="tablePreview" class="table table-hover">				  
				  <thead  id="bhy-table-header">
				    <tr>
				      <th scope="col-md-2">#</th>
				      <th scope="col-md-2">제목</th>
				      <th scope="col-md-8">내용</th>
				      <th scope="col-md-2">작성자</th>
				    </tr>
				  </thead>
				  <tbody id="bhy-table">
				    <tr>
				    <tr>
				    		  <td>${notice.ntNo}</td>
							  <td>${notice.ntTitle}</td>
							  <td>${notice.ntContent}</td>
							  <td>${notice.gm}</td>
					</tr>
				    </tr>
			  	</tbody>
			</table>
			</div>
          </div>
   
        </div>
      </div>
     </div>
   </div>
</div>

</body>
</html>