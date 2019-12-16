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
          </li>
          <br />
          <li>
          	 <a href="QNAList.jsp">
				<i class="fas fa-pencil-alt"></i>Q&A
            </a>
          </li>
        <br />
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
			     
			     <!-- 관리자에게만 글쓰기 버튼 보이게하기 -->
					<%-- <c:if test="${ gm == '관리자' }">	 --%>                			  
				<a href="noticeInsertForm.jsp" class="btn btn-info btn-rounded btn-sm pull-right">글쓰기</a>
				<%-- 	</c:if> --%>     
					
				<table id="tablePreview" class="table table-hover">				  
				  <thead  id="bhy-table-header">
				    <tr>
				      <th scope="col-md-2">#</th>
				      <th scope="col-md-8">제목</th>
				      <th scope="col-md-2">작성자</th>
				    </tr>
				  </thead>
				  <tbody id="bhy-table">
				    <tr>
				      <th scope="row">1</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
					</tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
				    </tr>
				    <tr>
				      <th scope="row">4</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
				    </tr>
				    <tr>
				      <th scope="row">5</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
				    </tr>
				    <tr>
				      <th scope="row">6</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
				    </tr>
				    <tr>
				      <th scope="row">7</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
				    </tr>
				    <tr>
				      <th scope="row">8</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
				    </tr>
				    <tr>
				      <th scope="row">9</th>
				      <td>공지사항입니다.</td>
				      <td>관리자</td>
				    </tr>
			  	</tbody>
			</table>
			</div>
          </div>
          
          <!-- 본문내용 끝  -->
          
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
	
		<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"rgba(70,70,70,0.5)"});
			}).click(function(){
				var bno = $(this).parent().find("input").val();
				location.href="${pageContext.request.contextPath}/selectOne.nt?qno=" + ntno;
			});
		});
		</script>
          
          
          
          
          
        </div>
      </div>
     </div>
   </div>
</div>

     
<!--   </div> -->
</body>

</html>
