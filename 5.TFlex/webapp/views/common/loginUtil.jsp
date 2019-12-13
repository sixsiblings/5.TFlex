<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<form action="${ pageContext.request.contextPath }/login.me"  method="post" id="loginPop">

   <div class="modal fade" id="modalSubscriptionForm" tabindex="-1"
      role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header text-center">
               <h4 class="modal-title w-100 font-weight-bold" style="color: #2B5C7A;">로그인</h4>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button></div>
                  
            	<div class="modal-body mx-3">
               		<div class="md-form mb-5">
                  <i class="fas fa-user prefix grey-text"></i> 
                  <label data-error="wrong" data-success="right" for="form3">아이디</label>
      			  <input type="text" id="form3" name="userId" class="form-control validate">                
      			</div>

               <div class="md-form mb-4">
                  <i class="fas fa-envelope prefix grey-text"></i> 
                  <label data-error="wrong" data-success="right" for="userPwd">비밀번호</label>
                 <input type="password"  id="form2"  name="userPwd"  class="form-control validate">
               </div>
               
               <!--로그인 팝업 Footer-->
               <div class="modal-footer">
                  <div class="options text-center text-md-right mt-1">
                     <p>
                      <a href="${ pageContext.request.contextPath }/views/member/memberJoinForm.jsp" class="blue-text" >
                            <strong>회원가입</strong>
                      </a>
                     </p>
                     
                     <p>
                     <a href="${pageContext.request.contextPath}/views/member/idFind.jsp" class="blue-text">
                     <strong>아이디 찾기</strong></a>    
                     					/                
                     <a href="${pageContext.request.contextPath}/views/member/passwordFind.jsp" class="blue-text">
                     <strong>비밀번호 찾기</strong></a>
                     </p>                      
                  </div>
               </div>
            </div>
            
            <div class="modal-footer d-flex justify-content-center">
            
            <button type="submit" class="btn btn-outline-info"  id="loginBtn_btn" onclick="login();" 
            		style=" margin-bottom:20px; font-size:30px; width:160px;">
					<strong>Login</strong>
				</button>
            </div>            
         </div>
      </div>
   </div>
</form>

		<script>

			function login(){
				$('#loginPop').submit();
			}

			function memberJoin(){
				location.href = "${pageContext.request.contextPath}/views/member/memberJoinForm.jsp";
			} 
			
			
			function logout(){
				location.href = "${pageContext.request.contextPath}/logout.me";
			}
			
			
 			$('#myPageBtn').click(function(){
 				location.href = "${pageContext.request.contextPath}/views/member/memberMyPage.jsp";
 			});
			
			
			function changeInfo(){
				location.href = "${pageContext.request.contextPath}/views/member/memberUpdateForm.jsp";
			}
		</script>
		
		
