<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    회원 정보 수정
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <c:import url="../common/myPageUtil.jsp"/>
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
          	메인 페이지로 이동
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a href="../myPage/myPage.jsp">
              <i class="fas fa-user-alt"></i>
              <p>회원 정보 수정</p>
            </a>
            <a href="../member/memberCart.jsp">
              <i class="fas fa-user-alt"></i>
              <p>장바구니</p>
            </a>
            <a href="../member/memberDeleteForm.jsp">
              <i class="fas fa-user-alt"></i>
              <p>회원 탈퇴</p>
            </a>
            <a href="../myPage/Trade.jsp">
              <i class="fas fa-user-alt"></i>
              <p>거래 내역</p>
            </a>
          </li>
           
        </ul>
      </div>
      
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">거래 내역</a>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <!-- <div class="panel-header panel-header-lg">

  <canvas id="bigDashboardChart"></canvas>


</div> -->
      <div class="content" id="Edit_Profile">
        <div class="row">
          <div class="col-md-12">
            <div class="col-md-8" style="margin: auto;">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">거래 내역</h5>
              </div>
              <div class="card-body">
                <form>
                  

                  
                </form>
              </div>
            </div>
          </div>
          
            
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>
