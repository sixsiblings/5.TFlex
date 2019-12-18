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
        <a href="${ pageContext.request.contextPath }/index.jsp"" class="simple-text logo-mini">
          <div class="logo-image-big">
            <img src="${ pageContext.request.contextPath }/resources/test/img/baseball_logo.jpg">
          </div>
        </a>
        <a href="${ pageContext.request.contextPath }/index.jsp"" class="simple-text logo-normal">
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
          
          <li class="active ">
          	 <a href="${pageContext.request.contextPath }/selectList.qna">
				<i class="fas fa-pencil-alt">Q&A</i>
            </a>
          </li><br /><br />
        
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
			            <a class="navbar-brand" href="#pablo">1:1문의 내역 확인하기</a>
			          </div>
			        </div>
			      </nav>
			      <!-- End Navbar -->


	<!--  본문 내용 영역 -->
      <div class="content" id="Notice">
        <div class="row">
          <div class="col-md-12">
          
          <!--  카드영역 분리 시작  -->
			<div class="col-md-8" style="margin: auto;" >
			   <div class="card-header"  id="bhy-card-shadow" style="background:white; height: 100px; font-size:40px;">                
                	<i  class="fas fa-pencil-alt" id="bhy-text" > 1:1문의 내역 확인하기</i>
              </div>
          </div><br />           
      <!--  카드영역 분리 끝 -->
          


		<!-- 본문 카드 영역 -->
<div class="col-md-8" style="margin: auto;">
	<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">        
	
	<!-- 글쓰기부분 -->
      <div class="tableArea">
         <form action="${pageContext.request.contextPath }/update.qna" 
              	 method="post" >
            <table>
               <tr>
                  <td id="td1">제목 </td>
                  <td colspan="2">
                  	<input type="text" size="51" 
                  		   name="qtitle" value="${ QNA.qtitle }">
                  	<input type="hidden" name="qno" value="${ QNA.qno }"/>
                  	</td>
               </tr>
               <tr>
                  <td id="td1">작성자 </td>
                  <td colspan="2" name="uNo">${QNA.uNo}</td>
               </tr>
               <tr>
                  <td id="td1">내용 </td>
                  <td colspan="8">
                     <textarea name="content" cols="52" rows="15" style="resize:none;">${QNA.qContent}</textarea>
                  </td>
               </tr>
            </table>
            <br>
            <div align="center">
               <button onclick="completeUpdate();">수정완료</button>
            </div>
            <script>
            
            	function completeUpdate(){
            		$('#updateForm').attr("action", "${pageContext.request.contextPath}/update.qna");
            	}

            </script>
         </form>
      </div>
       <!--  글쓰기 내용 끝 -->

        </div>
      </div>
          <!-- 본문내용 끝  -->
                  
     </div>
   </div>
</div>
</div>
<!-- 본문내용영역 헤더 끝-->

</div>
</body>
</html>
