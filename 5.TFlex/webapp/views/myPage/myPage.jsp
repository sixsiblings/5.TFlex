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
          </div>
          
        
       
        <a href="../../index.jsp" class="simple-text logo-normal">
          	메인 페이지로 이동
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
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
      
   
    
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">회원 정보 수정</a>
          </div>
        </div>        
      </nav>
      </div>
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
                <h5 class="card-title">회원 정보 수정</h5>
                <a href="../TradeBoard/tradeBoard.jsp">거래 현황</a>
              </div>
              <div class="card-body">
                <form>
                  <div class="row">
                    <div class="col-md-5 pr-1">
                      <div class="form-group">
                        <label>ID</label>
                        <input type="text" class="form-control" placeholder="ID" value="ID" disabled>
                      </div>
                    </div>
                    <div class="card-body">
                    </div>
                    </div>
                    </form>
                <form>
                  <div class="row">
                    <div class="col-md-5 pr-1">
                      <div class="form-group">
                        <label>변경할 비밀번호</label>
                        <input type="password" class="form-control" placeholder="password" value="password" >
                      </div>
                    </div>
                    </div>
				<div class="card-body"></div>
				</form>
                <form>
                  <div class="row">
                    <div class="col-md-5 pr-1">
                      <div class="form-group">
                        <label>변경할 비밀번호 확인</label>
                        <input type="password" class="form-control" placeholder="password" value="password" >
                      </div>
                    </div>
                    <div class="col-md-3 px-1">
                      <div class="form-group">
                        <label>닉네임</label>
                        <input type="text" class="form-control" placeholder="Username" value="michael23">
                      </div>
                    </div>
                    <div class="col-md-4 pl-1">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" class="form-control" placeholder="Email">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 pr-1">
                      <div class="form-group">
                        <label>성</label>
                        <input type="text" class="form-control" placeholder="First Name" value="Chet">
                      </div>
                    </div>
                    <div class="col-md-6 pl-1">
                      <div class="form-group">
                        <label>이름</label>
                        <input type="text" class="form-control" placeholder="Last Name" value="Faker">
                      </div>
                    </div>
                  </div>
                  <label for="materialRegisterFormPhone">관심 구단 선택</label>
   <fieldset class="form-check" style="border: 0.5px solid lightgrey; 
      										padding-top:10px; padding: 10px;border-radius : 5px; text-align : center;">
	<div class="form-radio">
		<input type="radio" class="form-radio-input" name="iNo" value="1"  id="두산">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Bears" >두산</label>&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;		
		
		<input type="radio" class="form-radio-input" name="iNo" value="2"  id="키움">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Heroes" >키움</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
		
		<input type="radio" class="form-radio-input" name="iNo" value="3"  id="NC">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Dinos" >NC</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			

		<input type="radio" class="form-radio-input" name="iNo" value="4"  id="LG">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Twins" >LG</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		

		<input type="radio" class="form-radio-input" name="iNo" value="5"  id="삼성">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Lions" >삼성</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;													
	  </div>                     
		<br />
	<div class="form-radio">
		<input type="radio" class="form-radio-input" name="iNo" value="6"  id="기아">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Tigers" >KIA</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
		
		<input type="radio" class="form-radio-input" name="iNo" value="7"  id="한화">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Eagles" >한화</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
		
		<input type="radio" class="form-radio-input" name="iNo" value="8"  id="KT">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Wiz" >KT</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			

		<input type="radio" class="form-radio-input" name="iNo" value="9"  id="롯데">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Giants" >롯데</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		

		<input type="radio" class="form-radio-input" name="iNo" value="10"  id="SK">&nbsp;&nbsp;&nbsp;&nbsp;
		<label class="form-radio-label" for="Wyverns" >SK</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;														
	  </div>
	  <br />
	</fieldset>
                  <div class="row">
                    <div class="update ml-auto mr-auto">
                      <button type="submit" class="btn btn-primary btn-round">수정 완료</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
          
            
          </div>
        </div>
      </div>
   
</body>

</html>
