<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<nav class="navbar navbar-light bg-light static-top">
    <div class="container" style="width:100%; height:auto;  float : left;">
      <a class="mainPage" href="index.jsp">
		<img id="logo" src="resources/img/logo.png"  
							style="width:120px; height:40px; float:left; "/><!--  로고 이미지  --></a>

  <div class="menu" style="align:right;">
  			<button type="button" class="btn btn-lg" onclick="goNotice();">Notice</button>&nbsp;
  			<button type="button" class="btn btn-lg" onclick="goKBO();">KBO</button>&nbsp;
  			<button type="button" class="btn btn-lg" onclick="goMLB();">MLB</button>&nbsp;
  			<button type="button" class="btn btn-lg" onclikc="goTicket();">Ticket</button>&nbsp;
  			<button type="button" class="btn btn-lg" onclick="goGoods();">Goods</button>&nbsp;
    </div>
    </div>
<!--  버튼모양 조인
<button type="button" class="btn btn-success" 
				 id="memberJoinBtn" onclick="memberJoin()">Join</button>  -->	  
	<!-- <button type="button" class="btn btn-info"
				id="loginBtn" onclick="memberLogin()">Login</button> -->

	
<!--  로그인 팝업 버튼  -->
  
	<div class="modal fade" id="modalSubscriptionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold" style="color:#2B5C7A;">LogIn</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="form3" class="form-control validate">
          <label data-error="wrong" data-success="right" for="form3">Your ID</label>
        </div>

        <div class="md-form mb-4">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="password" id="form2" class="form-control validate">
          <label data-error="wrong" data-success="right" for="form2">Your Password</label>
        </div>
        
                   <!--Footer-->
            <div class="modal-footer">
              <div class="options text-center text-md-right mt-1">
               <p>Not a member? <a href="#" class="blue-text">Sign Up</a></p>
                <p>Forgot <a href="#" class="blue-text">Password?</a></p>
              </div>
              <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
            </div>
        

      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-indigo"  style="background:red; color:#F7F3EF;">Login<i class="fas fa-paper-plane-o ml-1"></i></button>
      </div>
    </div>
  </div>
</div>

<div class="text-center">
  <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" 
  			data-target="#modalSubscriptionForm" style="background:red; color:snow;"><b>LOGIN</b></a>
</div>&nbsp;&nbsp;&nbsp;

 <!-- -------------------------------------------------------------------------------------------------------------------- -->

<!--  회원가입 팝업 버튼 -->



 </nav>

 
 
  <!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h1 class="mb-5"></h1>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form>
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
              </div>
              <div class="col-12 col-md-3">
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    
    		<script>
			function memberLogin(){
				location.href = "${ pageContext.request.contextPath }/views/member/memberLoginForm.jsp";
			}
			
			function memberJoin(){
				location.href = "${ pageContext.request.contextPath }/views/member/memberJoinForm.jsp";
			}
			
			function logout(){
				location.href = "${ pageContext.request.contextPath }/logout.me";
			}
			
			function changeInfo(){
				location.href = "${ pageContext.request.contextPath }/views/member/memberUpdateForm.jsp";
			}
		</script>
		
		<br clear="all"><br />
		

		<script>
			function goHome(){
				location.href="${ pageContext.request.contextPath }/index.jsp";
			}
			function goBoard(){
				location.href="${ pageContext.request.contextPath }/selectList.bo";
			}
			function goThumb(){
				location.href="${ pageContext.request.contextPath }/selectList.tn";
			}
		</script>
  </header>