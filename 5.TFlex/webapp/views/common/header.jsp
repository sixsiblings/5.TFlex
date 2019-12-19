<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!--  상단 네비바  -->
<!--  로고 이미지 -->
<header>
<nav class="navbar navbar-expand-lg navbar-white bg-white fixed-top" style="margin-bottom: 0px;">
   <div class="container-fluid" style="width: 100%; height: auto;">
      <div class="col-md-2">
         <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp" style="margin-bottom: 20px;"> 
            <img id="logo" src="${pageContext.request.contextPath}/resources/img/logo.png" 
            style="width: 160px; height: 50px; float: left; margin-bottom: 0px;"/>
         </a>   
      </div>
      <div class="collapse navbar-collapse" id="navbarResponsive">
         <ul class="navbar-nav ml-auto">
            <li class="nav-item">
               <a class="nav-link" href="${ pageContext.request.contextPath }/index.jsp">
                </a>
            </li>         
                 <!--  KBO -->
            <li class="nav-item">
               <a class="nav-link"  href="${ pageContext.request.contextPath }/mselectList.bo">
                  <button type="button" id="KBOBtn" class="btn btn-outline-primary"
                     style="margin-right: 50px; margin-right: 50px; font-size: 30px; width:120px; height: 50px;" >
                        <strong>KBO</strong>
                  </button>
                </a>
            </li>              
            <li class="nav-item">
               <a class="nav-link"  href="${ pageContext.request.contextPath }/mselectList.bo">
                  <button type="button" id="MLBBtn" class="btn btn-outline-primary"
                     style="margin-right: 50px; margin-right: 50px; font-size: 30px; width:120px; height: 50px;" >
                        <strong>MLB</strong>
                  </button>
                </a>
            </li>             
            <li class="nav-item">
               <a class="nav-link"  href="${ pageContext.request.contextPath }/tselectList.bo">
                  <button type="button" id="TicketBtn" class="btn btn-outline-primary"
                     style="margin-right: 50px; margin-right: 50px; font-size: 30px; width:120px; height: 50px;" >
                        <strong>Ticket</strong>
                  </button>
                </a>
            </li>            
            <li class="nav-item">
               <a class="nav-link"  href="${ pageContext.request.contextPath }/gselectList.bo">
                  <button type="button" id="GoodsBtn" class="btn btn-outline-primary"
                     style="margin-right: 50px; margin-right: 50px; font-size: 30px; width:120px; height: 50px;" >
                        <strong>Goods</strong>
                  </button>
                </a>
            </li>            
         </ul>
      </div>


   <!--  로그인 버튼 / 로그아웃 버튼 영역 -->   
<c:if test="${ empty member }">
      
   <!--  로그인 창 불러오는 버튼 -->         
      <div class="col-md-1">
         <div class="text-right">
            <a href="" id="loginBtn_btn" class="btn btn-outline-info mb-4"
               data-toggle="modal" data-target="#modalSubscriptionForm"
               style="font-size: 15px; margin-top:35px; margin-right:15px;"><b>로그인</b></a>
         </div>
        </div>
   </c:if>
</div>

<c:if test="${ empty member }">
      <form action="${ pageContext.request.contextPath }/login.me"
         method="post" id="logBtn">
</form>
      </c:if><c:if test="${ !empty member }">
      <div id="userInfo">
         <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ member.nName }님! 반가워요~!^0^.</label>
         <div class="btns" align="right" style="display:inline-block">
         
            <button type="button" class="btn btn-outline-success"  id="bhy-csBtn" onclick="cs();"
                  style="font-size:17px; margin-right:10px">
               고객센터 
            </button>         
         
            <button type="button" class="btn btn-outline-primary"  id="bhy-myPageBtn" onclick="myPage();"
                  style="font-size:17px; margin-right:10px">
              	마이페이지 
            </button>

            <button type="button" class="btn btn-outline-danger" id="bhy-logoutBtn_btn"  onclick="logout();"
                  style="font-size:17px; margin-left:10px">
               로그아웃
            </button>   
         </div>
      </div>
      </c:if>
</nav>
</header>
