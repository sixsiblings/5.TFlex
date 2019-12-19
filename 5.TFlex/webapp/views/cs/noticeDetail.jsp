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
        <a href="${ pageContext.request.contextPath }/index.jsp" class="simple-text logo-mini">
          <div class="logo-image-big">
            <img src="${ pageContext.request.contextPath }/resources/test/img/baseball_logo.jpg">
          </div>
        </a>
        <a href="${pageContext.request.contextPath }/index.jsp" class="simple-text logo-normal">
          	T.Flex
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav" id="bhy-nav-font">       
          <li class="active ">
            <a href="${pageContext.request.contextPath }/views/cs/csMain.jsp">
              <i class="fas fa-user"></i>FAQ
            </a>
          </li>
          <br />
          <li>
          	 <a href="${pageContext.request.contextPath }/selectList.qna">
				<i class="fas fa-pencil-alt"></i>Q&A
            </a>
          </li>
        <br />
          <li>
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
          
         		<!-- 본문 카드 영역 -->
<div class="col-md-8" style="margin: auto;">
	<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">        
	
	<!-- 글쓰기부분 -->
	  <div class="h-tableArea" align="center"> 
	  <!-- 폼 부분 -->
		<form action="${pageContext.request.contextPath }/nupdate.do" method="post">    
		<div class="h-tableArea" >
		
		<input type="hidden" value="${notice.ntNo }" name="ntNo" />
		
            <table   style="width:600px; height:400px;">
               <tr id="bhy-tr">
                  <td>제목 </td>
                  <td colspan="3"><input type="text" size="51" name="ntTitle" value="${notice.ntTitle}" ></td>
               </tr>
               <tr>
                  <td>작성자 </td>
                  <td colspan="3">${notice.gm}
                     <input type="hidden" name="gm" value="${notice.gm}"  />
                  </td>
              </tr>
              <tr>
                  <td>내용 </td>
                  <td colspan="6" >
                     <textarea id="ntContent"  name="ntContent"  cols="52" rows="25" style="resize:none;" 
                     value="${notice.ntContent}">${notice.ntContent} </textarea>
                  </td>
               </tr> 
            </table>
            <br>
            <div align="center">
			<a href="${pageContext.request.contextPath }/noticelist.do" class="btn btn-info btn-rounded btn-sm pull-center">목록으로</a>    
			      
			<c:if test="${member.uGrade eq 'M'}"><button type="submit" class="btn btn-danger btn-rounded btn-sm pull-center">수정하기</button></c:if>
            </div>
            </div>
         </form> 
            <!-- 본문 카드 영역 끝 -->    
			</div>
          </div>
   
   
    <!-- 본문내용 끝  -->
        </div>
      </div>
     </div>
   </div>
</div>

</body>
</html>