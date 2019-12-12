<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<c:import url="../common/commonUtil.jsp"/>

</head>

<body>
  
<c:import url="../common/joinHeader.jsp"/>


<!-- Material form register -->
   <div class="card" style="width:600px; margin-left: 40%; margin-right:40%; background:white;">

    <h3 class="card-header_  info-color white-tfext - text-center py-4  px-lg-6 pt-0" >
        <strong>회원가입</strong>
    </h3>
   <br /><br />
      <form id="joinForm" action="${pageContext.request.contextPath }/insert.me" method="post">

    <div class="card-body_ px-lg-6 pt-0" >
         
         <div class="col-md">
            <div class="md-form">
            <label for="materialRegisterFormId">아이디</label>
                <input type="text"  class="form-control"  id="userId"  name="userId"  required="required"
                         aria-describedby="materialRegisterFormIdHelpBlock">
                <button class="btn btn-info btn-rounded btn-block my-2 waves-effect z-depth-0" 
                            type="button"  id="idCheck">아이디 중복확인</button><br />
          </div>
            <div class="md-form">
            <label for="materialRegisterFormPhone" >닉네임</label>
                <input type="text" class="form-control"  id="nName"  name="nName" required="required"
                         aria-describedby="materialRegisterFormPhoneHelpBlock">
          </div>
         <button class="btn btn-info btn-rounded btn-block my-2 waves-effect z-depth-0" 
                        type="button" id="nNameCheck" >닉네임 중복확인</button><br />

            <div class="md-form">
            <label for="materialRegisterFormPhone">비밀번호</label>
                <input type="password"  class="form-control"  id="userPwd"  name="userPwd" required="required"
                         aria-describedby="materialRegisterFormPhoneHelpBlock">
          </div>
          <br />
            <div class="md-form">
            <label for="materialRegisterFormPhone">비밀번호 확인</label>
                <input type="password"  class="form-control"  id="userPwd2" name="userPwd2"  required="required"
                         aria-describedby="materialRegisterFormPhoneHelpBlock">
          </div><br />

            <div class="md-form">
            <label for="materialRegisterFormPhone">이름</label>
                <input type="text"  class="form-control"  id="userName" name="userName"  required="required"
                         maxlength="5"   aria-describedby="materialRegisterFormPhoneHelpBlock">
          </div><br />

            <div class="md-form">
            <label for="materialRegisterFormPhone">생년월일</label>
                <input type="text" class="form-control" id="birthNo"  name="birthNo" 
                      placeholder="yyyy / mm / dd"   aria-describedby="materialRegisterFormPhoneHelpBlock">
          </div><br />
          
         <div class="md-form">
            <label for="materialRegisterFormPhone">이메일</label>
            <input type="email" class="form-control" id="email" data-rule-required="true" placeholder=" @example.com" maxlength="40">
       </div><br />
       <div class="md-form">
            <label for="materialRegisterFormPhone">추천인</label>
            <input type="text" class="form-control" id="rPerson" data-rule-required="true"  placeholder="추천인 아이디를 입력하세요" maxlength="40">
       </div><br />
       
       <!--  라디오 버튼  관심사 선택  -->
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
    </fieldset><br />
       
       
    
       
       <!--  알림 여부 체크박스  -->
   <label for="materialRegisterFormPhone">알림 여부 동의</label>
      <fieldset class="form-check" style="border: 0.5px solid lightgrey; padding-top:10px; padding: 10px; border-radius : 5px; text-align : center;">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">이메일 수신여부</label>
        
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">공지사항 알림 여부</label>
                
            	<input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">게시글 댓글 알림 여부</label>                    
			</div><br />
            
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">각종 이벤트 알림 여부</label>
        
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">티켓 알림 여부</label>
                
            	<input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">채팅 알림 여부</label>                    
			</div>            
	</fieldset><br />            
            
            
            
<!--             <div class="form-check">
            <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">게시글 댓글 알림 여부</label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">각종 이벤트 알림 여부</label>
            </div><br />
 
            <div class="form-check">
            <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">티켓 알림 여부</label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">채팅 알림 여부</label>
            </div><br />           
             -->
 
<!--             <div class="form-check">
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="form-check-label" for="materialRegisterFormNewsletter">개인정보수집동의</label>
            </div><br />
 -->
            <!-- Sign up button -->

            <button class="btn btn-warning btn-rounded btn-block my-4 waves-effect z-depth-0" 
                     type="button"  id="joinBtn" onclick="insertMember();">회 원 가 입</button>
            <button class="btn btn-success btn-rounded btn-block my-4 waves-effect z-depth-0" 
                     type="reset" onclick="goMain();">가 입 취 소</button>                     
               </div>   
               </div>   
           </form>
           </div>
   
   
      
      
<!-- ----------------------------------------------------------------------------------------------------------- -->
   
    
         <script>
            function insertMember() {
               $("#joinForm").submit();
            }
            
            $("#joinForm").submit(function(event){
               if($("#userId").val() == "" || $("#userPwd").val() == "") {
            	   
            	   alert("아이디나 비밀번호는 필수 값입니다.");
               }
               else if($('#userPwd').val() != $('#userPwd2').val()){
            	   
            	   alert("비밀번호 확인 값과 다릅니다.");
            	   
               } else {
            	   
            	   return;
               }
               
               event.preventDefault();
               
            });
            
/*             
              var chk = false;
              
            $(function(){
                $('#userName').keyup(function(){
                    // 한글 이름 : (특수문자, 영어, 숫자);
                    var reg = /^[가-힣]+$/;

                    if(reg.test($('#userName').val())) {
                        $('#nameResult').text('멋진 이름이군요!').css('color', 'palegreen');
                        chk = true;
                    } else {
                        $('#nameResult').text('한글로 입력해주세요!!').css('color','red');
                        $('#userName').focus();
                        chk = false;
                    }
                });
            
             */
            
            
            function goMain(){
               location.href='/tflex/index.jsp';
            };
            
            $('#idCheck').click(function(){
               $.ajax({
                  url : "${pageContext.request.contextPath}/idDup.me",
                  type : "post",
                  data : { userId : $('#userId').val() },
                  success : function(data){
                	  if(data == 'true'  &&  $('#userId').val()  != '') {
                		  
                		  alert("사용가능한 아이디입니다.");
                		  
                	  }else{
                		  
                		  alert("아이디를 입력하지 않았거나, 이미 사용중인 아이디입니다. ");
                		  
                		  $('#userId').val('');
                	  }
                     
                  }, error : function(request, status, error){
                     console.log(request);
                     console.log(status);
                     console.log(error);
                     
                     console.log("에러 발생");
                     
                  }
               });
            });
            
            $('#nNameCheck').click(function(){
                $.ajax({
                   url : "${pageContext.request.contextPath}/nNameDup.me",
                   type : "post",
                   data : { nName : $('#nName').val() },
                   success : function(data){
                	  if(data == 'true'  &&  $('#nName').val()  != '') {
                		  
                		  alert("사용 가능한 닉네임입니다.");
                		  
                	  } else {
                		  
                		  alert("닉네임을 입력하지 않았거나, 이미 사용중인 닉네임입니다.");
                		  
                		  $('#nName').val('');
                	  }
                      
                   }, error : function(request, status, error){
                      console.log(request);
                      console.log(status);
                      console.log(error);
                      
                      console.log("에러 발생");
                      
                   }
                
                });
             });

            
  /*           function formSubmit(obj){
                if($("#email").val() == "") {
                   alert("이메일 입력 해주세요");
                } else if($(obj).hasClass('btnDisable') || idCheck == false){
                   alert('이메일 중복 확인해주세요!');
                } else {
                   $('#joinForm').submit();
                }
             } */
            
         </script>
</body>
</html>