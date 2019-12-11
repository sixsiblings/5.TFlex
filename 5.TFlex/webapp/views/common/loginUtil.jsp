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
                  <input type="text" id="form3" class="form-control validate"> 
                  <label data-error="wrong" data-success="right" for="form3">아이디</label>
               </div>

               <div class="md-form mb-4">
                  <i class="fas fa-envelope prefix grey-text"></i> <input
                     type="password" id="form2" class="form-control validate">
                  <label data-error="wrong" data-success="right" for="form2">비밀번호</label>
               </div>
               <!--로그인 팝업 Footer-->
               <div class="modal-footer">
                  <div class="options text-center text-md-right mt-1">
                     <p>Not a member?
                      <a href="${ pageContext.request.contextPath }/views/member/memberJoinForm.jsp" class="blue-text" >
                            <strong>Join</strong>
                      </a>
                     </p>
                     <p>Forgot 
                     <a href="${pageContext.request.contextPath}/views/member/memberFind.jsp" class="blue-text">
                     <strong>Id? Password?</strong>
                     </a>
                     </p>
                  </div>
               </div>
            </div>
            
            <div class="modal-footer d-flex justify-content-center">
               <button type="submit" class="btn btn-indigo" 
                     style="background: #A63340; color: snow; " id="loginBtn" onclick="login()">
                                       Login<i class="fas fa-paper-plane-o ml-1"></i>
               </button>
            </div> 
         </div>
      </div>
   </div>
</form>
