<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입하기</title>
<c:import url="../common/commonUtil.jsp"/>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>

</head>
<body>

<!-- Material form register -->

	<div class="card" style=" width : 800px;" >

    <h3 class="card-header info-color white-tfext text-center py-4">
        <strong>회원가입</strong>
    </h3>
	<br /><br />
      <form id="joinForm" action="${pageContext.request.contextPath }/insert.me" method="post">



    <!--Card content-->
    <div class="card-body px-lg-5 pt-0" >
     <div class="form-row">
           <div class="col">
              <div class="md-form">
            <label for="materialRegisterFormPhone">아이디</label>
 		<input type="text" id="materialRegisterFormPhone" class="form-control" 
 								aria-describedby="materialRegisterFormPhoneHelpBlock">
			 </div><br />
				
		<div class="form-row">
                <div class="col">
                 <div class="md-form">
            <label for="materialRegisterFormPhone">닉네임</label>
                <input type="text" id="materialRegisterFormPhone" class="form-control" aria-describedby="materialRegisterFormPhoneHelpBlock">
			 </div></div><br />

            <!-- Password -->
            <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                     <label for="materialRegisterFormFirstName">비밀번호</label>
                        <input type="text" id="materialRegisterFormFirstName" class="form-control">
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                    <label for="materialRegisterFormLastName">비밀번호 확인</label>
                        <input type="email" id="materialRegisterFormLastName" class="form-control">
                    </div><br />
                </div>
            </div>
            <!-- Phone number -->
            <div class="md-form">
            <label for="materialRegisterFormPhone">생년월일</label>
                <input type="date" id="materialRegisterFormPhone" class="form-control" aria-describedby="materialRegisterFormPhoneHelpBlock">
			 </div><br />

            <!-- Newsletter -->
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">개인정보수집동의</label>
            </div>

            <!-- Sign up button -->
            <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" 
            			type="submit">회 원 가 입</button>
            <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" 
            			type="button"  id="joinBtn" onclick="insertMember();">가 입 취 소</button>
            	</div>		
        	</form>
       	 </div>

	
		
		
<!-- ----------------------------------------------------------------------------------------------------------- -->
	
    
         <script>
            function insertMember() {
               $("#joinForm").submit();
            }
            
            $("#joinForm").submit(function(event){
               if($("#userPwd").val() == "" || $("#userId").val() == "") alert("아이디나 비밀번호는 필수 값입니다.");
               else if($('#userPwd').val() != $('#userPwd2').val()) alert("비밀번호 확인 값과 다릅니다.");
               else return;
               event.preventDefault();
            });
            
            function goMain(){
               location.href='/tflex/index.jsp';
            };
            
            $('#idCheck').click(function(){
            	$.ajax({
            		url : "${pageContext.request.contextPath}/idDup.me",
            		type : "post",
            		data : { userId : $('#userId').val() },
            		success : function(data){
            			
            		}, error : function(request, status, error){
            			console.log(request);
            			console.log(status);
            			console.log(error);
            			
            			console.log("에러 발생");
            			
            		}
            	
            	});
            });

         </script>
				
	</section>
	

<%-- 	<c:import url="../common/footer.jsp"/> --%>
</body>
</html>
