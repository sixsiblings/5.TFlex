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
        
          #outer {
            width: 100%;
            height: 400px;
        }

        table {
            width: 100%;
            height: 100%;
            table-layout: fixed;
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
       	<!-- 사이드 바 시작 -->
    <div class="sidebar" data-color="blue" data-active-color="danger">
      <div class="logo">
        <a href="${pageContext.request.contextPath }/index.jsp" class="simple-text logo-mini">
          <div class="logo-image-big">
            <img src="${ pageContext.request.contextPath }/resources/test/img/baseball_logo.jpg">
          </div>
        </a>
        <a href="${pageContext.request.contextPath }/index.jsp" class="simple-text logo-normal">
          	T.Flex</a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav" id="bhy-nav-font">
          <li class="active">
            <a href="${ pageContext.request.contextPath }/views/cs/csMain.jsp">
              <i class="fas fa-gem"></i>FAQ
            </a>
          </li>
          <br />
          <br />
          <li>
          	 <a href="${ pageContext.request.contextPath }/selectList.qna">
				<i class="fas fa-pencil-alt"></i>Q&A
            </a>
          </li>
        <br />
          <li>
          	 <a href="${ pageContext.request.contextPath }/noticelist.do" >
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
				<c:if test="${member.uGrade eq 'M'}"><button onclick="goNInsert();" class="btn btn-outline-warning btn-rounded btn-sm pull-right">글쓰기</button></c:if>
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

				    	  <c:forEach var="notice" items="${list}">
							  <tr>
							  <td>
							  <input type="hidden" value="${notice.ntNo}"/>
							  ${notice.ntNo}
							  </td>
							  <td>${notice.ntTitle}</td>
							  <td>${notice.ntContent}</td>
							  <td>${notice.gm}</td>
							  </tr>
						  </c:forEach>
				    </tr>
			  	</tbody>
			</table>
			</div>
          </div>
          
          <!-- 본문내용 끝  -->
          
		<%-- 페이지 처리 구현하기 --%>
		<div class="pagingArea" align="center" aria-label="Page navigation example">
			<c:url var="selectNList" value="noticelist.do"/>
			
			<!-- 처음 페이지 버튼 -->
			<button onclick="location.href='${selectNList}?currentPage=1'">
				&lt;&lt;
			</button>
			
			<!-- 이전 페이지 버튼 -->
			<c:if test="${ pi.currentPage le 1 }">
				<button disabled>&lt;</button>
			</c:if>
			<c:if test="${ pi.currentPage gt 1 }">
				<button onclick="location.href='${selectNList}?currentPage=${pi.currentPage} - 1'">
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
					<button onclick="location.href='${selectNList}?currentPage=${p}'">
						${p}
					</button>
				</c:if>
			</c:forEach>
			
			
			<!-- 다음 페이지 버튼 -->
			<c:if test="${ pi.currentPage ge pi.maxPage }">
				<button disabled>&gt;</button>
			</c:if>
			<c:if test="${ pi.currentPage lt pi.maxPage }">
				<button onclick="location.href='${selectNList}?currentPage=${pi.currentPage} + 1'">
					&gt;
				</button>
			</c:if>
			
			<!-- 마지막 페이지 버튼 -->
			<button onclick="location.href='${selectNList}?currentPage=${pi.maxPage}'">
				&gt;&gt;
			</button>
		</div>
	
		<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"rgba(70,70,70,0.5)"});
			})
		});
		
		$("td").click(function(){
			var ntNo = $(this).parent().find("input").val();
			location.href="${pageContext.request.contextPath}/nselectOne.do?ntNo=" + ntNo;
		});
		
		function goNInsert(){
			location.href = "${pageContext.request.contextPath}/views/cs/noticeInsertForm.jsp";
		}
		<!-- 
		function goNoticeDetail(){
			var us_no = $(this).parent().find("input").val();
			location.href="${pageContext.request.contextPath}/nselectOne.do?us_no=" + us_no;
		}
		 -->
		</script>
          
          
          
        </div>
      </div>
     </div>
   </div>
</div>

     
<!--   </div> -->
</body>

</html>
