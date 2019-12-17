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
  <title> Notice  </title>
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
        <ul class="nav">
          <li>
            <a href="csMain.jsp">
              <i class="fas fa-user"></i>FAQ
            </a>
          </li><br /><br />
          
          <li>
          	 <a href="QNAList.jsp">
				<i class="fas fa-pencil-alt"></i>Q&A
            </a>
          </li>
        
          <li class="active ">
          	 <a href="noticeList.jsp">
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


	<!--  본문 전체 영역 -->
      <div class="content" id="Notice">
        <div class="row">
          <div class="col-md-12">
          
          <!--  카드영역 분리가능한 시작  -->
			<div class="col-md-8" style="margin: auto;" >
			   <div class="card-header"  id="bhy-card-shadow" style="background:white; height: 100px; font-size:40px;">                
                	<i class="fas fa-gem" id="bhy-text" > 공지사항 작성하기</i>
              </div>
          </div><br />           
      <!--  카드영역 분리  끝 -->
          

<!-- 본문 카드 영역 -->
<div class="col-md-8" style="margin: auto;">
	<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">        
	
	<!-- 글쓰기부분 -->
	  <div class="tableArea" align="center"> 
         <form action="${pageContext.request.contextPath }/insertNotice.bo" 
              	 method="get" enctype="multipart/form-data">
            <table   style="width:600px; height:400px;">
               <tr>
                  <td>제목 </td>
                  <td><input type="text" size="70"  name="title"></td>
               </tr>
               <br /><br />
               <tr>
                  <td>작성자 </td>
                  <td colspan="3">${member.nName}
                     <input type="hidden" name="nName" value="${member.nName}"/>
                  </td>
               </tr>
               <br />
               <br />
               <tr>
                  <td>내용 </td>
                  <td colspan="3" >
                     <textarea id="summernote" name="content" cols="70" rows="25" style="resize:none;"></textarea>
                  </td>
               </tr>
            </table>
            <br>
            <div align="center">
               <button type="reset" class="btn btn-danger">취소하기</button>
               <button type="submit" class="btn btn-primary">등록하기</button>
            </div>
         </form>
      </div>
              

          <!-- 본문내용 끝  -->
        </div>
      </div>
     </div>
   </div>
</div>

     
<!--   </div> -->
</body>

</html>