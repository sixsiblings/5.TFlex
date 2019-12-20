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
    1:1 문의
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
        
          #outer {
            width: 100%;
            height: 400px;
        }

        table {
            width: 100%;
            height: 100%;
            table-layout: fixed;
        }

        th {
            background-color: white;
        }

        td {
            background-color: white;

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
        <a href="${ pageContext.request.contextPath }/index.jsp" class="simple-text logo-mini">
          <div class="logo-image-big">
            <img src="${ pageContext.request.contextPath }/resources/test/img/baseball_logo.jpg">
          </div>
        </a>
        <a href="${ pageContext.request.contextPath }/index.jsp" class="simple-text logo-normal">
          	T.Flex
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="${ pageContext.request.contextPath }/views/cs/csMain.jsp">
              <i class="fas fa-user"></i>FAQ
            </a>
          </li>
          <li class="active ">
          	 <a href="${ pageContext.request.contextPath }/selectList.qna">
				<i class="fas fa-pencil-alt"></i>Q&A
            </a>
          </li>
          <li>
          	 <a href="${ pageContext.request.contextPath }/noticelist.do">
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
							<i  class="fas fa-pencil-alt" id="bhy-text" > &nbsp; 1:1 문의 Q&A</i>
						</a>
			          </div>
			        </div>
			      </nav>
			      <!-- End Navbar -->
			      <!-- <div class="panel-header panel-header-lg">
			  <canvas id="bigDashboardChart"></canvas>
			</div> -->

	<!--  본문 내용 영역 -->
      <div class="content" id="my_QNA">
        <div class="row">
          <div class="col-md-12">

	
<!--  중간 카드 영역 시작 -->
	<div class="col-md-8" style="margin: auto;">
		<div class="card-header"  id="bhy-card-shadow" 
			style="background:white;  height: 100px; font-size:20px;">     
					<br />           
			<i class="fas fa-pencil-alt" id="bhy-card-text">  
			&nbsp;상담가능 시간(평일 09:00 ~ 18:00)내 답변드릴수 있도록 노력하겠습니다. 
			</i>               	
		</div>
	</div>
<br />	
<!--  중간 카드 영역 끝 -->	

<!--  중간 카드 영역 시작 -->
	<div class="col-md-8" style="margin: auto;">
		<div class="card-header"  id="bhy-card-shadow" 
			style="background:white;  height: 120px; font-size:20px; ">     
					<br />           
			<i class="fas fa-check-alt" id="bhy-card-text" style="color:#F5AF2E;">  
			&nbsp;문의하신 내용의 답변은 회원가입 시 입력하신 메일로 발송해드립니다. <br /><br />
			&nbsp;답변 올리시기 전에 입력하신 이메일을 먼저 확인해주세요~^0^
			</i>               	
		</div>
	</div>
<!--  중간 카드 영역 끝 -->

          
<!-- 본문 테이블 영역 -->
<div class="col-md-8" style="margin: auto;">
<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">   

 
<button type="button"  class="btn btn-info btn-rounded btn-sm pull-right" onclick="location.href='views/cs/QNAInsertForm.jsp';">
	문의하기 
</button> 
       	
<table id="listArea" class="table table-hover">				  
		<thead  id="bhy-table-header">
			<tr>
				<th scope="col-md-2">#</th>
				<th scope="col-md-8">제목</th>
				<th scope="col-md-2">답변 여부</th>
			</tr>
		</thead>
		<tbody id="bhy-table">
		<c:forEach var="QNA" items="${list}">		
			<tr>
				<td>
				<input type="hidden" value="${QNA.qNo}">
					${QNA.qNo}
				</td>
				<td>${QNA.qTitle}</td>
				<td>${QNA.qaStatus}</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>		
		
		
		
<%-- 페이지 처리 구현하기 --%>

		<div class="pagingArea" align="center">
			<c:url var="selectList" value="selectList.qna"/>
			
			<!-- 처음 페이지 버튼 -->
			<button onclick="location.href='${selectList}?currentPage=1'">
				&lt;&lt;
			</button>
			
			<!-- 이전 페이지 버튼 -->
			<c:if test="${ pi.currentPage le 1 }">
				<button disabled>&lt;</button>
			</c:if>
			<c:if test="${ pi.currentPage gt 1 }">
				<button onclick="location.href='${selectList}?currentPage=${pi.currentPage - 1}'">
					&lt;
				</button>
			</c:if>
			
			<!-- 상세 페이지 구현을 위한 반복문 -->
			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage}">
				<c:if test="${p eq pi.currentPage }">
					<button disabled>
						<b>${p}</b>
					</button>
				</c:if>
				<c:if test="${ p ne pi.currentPage}">
					<button onclick="location.href='${selectList}?currentPage=${p}'">
						${p}
					</button>
				</c:if>
			</c:forEach>
			
			
			<!-- 다음 페이지 버튼 -->
			<c:if test="${ pi.currentPage ge pi.maxPage }">
				<button disabled>&gt;</button>
			</c:if>
			<c:if test="${ pi.currentPage lt pi.maxPage }">
				<button onclick="location.href='${selectList}?currentPage=${pi.currentPage + 1}'">
					&gt;
				</button>
			</c:if>
			
			<!-- 마지막 페이지 버튼 -->
			<button onclick="location.href='${selectList}?currentPage=${pi.maxPage}'">
				&gt;&gt;
			</button>
		</div>
	<!-- 본문 카드 영역 끝 -->    
	
	<script>
		$(function(){
			$("#listArea td").click(function(){
				
				var qNo = $(this).parent().find("input").val();
				
				location.href="${pageContext.request.contextPath}/selectOne.qna?qNo=" + qNo;
			});
		});
		
		</script>
	
	
	     
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