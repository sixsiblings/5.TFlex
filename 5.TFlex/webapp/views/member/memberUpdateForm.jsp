<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<style> 

        body{

            margin: 0px;

        }

        

       #footer {

            margin: 0px;

            margin-bottom:10px;

            padding: 0px;

            text-align: center;

        }


        #footer ul {

            padding: 0px;

            margin-top: 30px;

            margin-bottom: 9px;

        }


        #footer ul li {

            list-style: none;

            display: inline;

        }


        #footer ul li a {

            text-decoration: none;

            padding: 0 4px;

            border-right: 1px solid #ccc;


            font-size: 12px;

            color: #333;

        }


        #footer img {

            width: 63px;

            margin-bottom: -4px;

        }


        #footer label {

            font-size: 10px;

            color: #333;

        }

</style>

<c:import url="../common/commonUtil.jsp" />
</head>
<body>
	<c:import url="../common/header.jsp"/>
	
	<div class="outer">
		<br>
		<h2 align="center">회원 정보 수정</h2>
		
		<form id="updateForm" action="${ pageContext.request.contextPath }/update.me" method="post">
			
			<table align="center">
				<tr>
					<td width="200px">* 아이디 </td>
					<td style="color:white; text-align: left; padding-left: 20px;">${member.userId}</td>
					<td width="200px"></td>
				</tr>
				<br>
				<tr>
					<td>* 변경 비번</td>
					<td><input type="password" id="password" name="password" required="required"></td>
					<td></td>
				</tr>
				<br>
				<tr>
					<td>* 변경 비번 확인</td>
					<td><input type="password" id="password2" name="password2"></td>
					<td><label id="pwdResult"></label></td>
				</tr>
				<br>
				<tr>
					<td>* 이름</td>
					<td style="color:white; text-align: left; padding-left: 20px;">${member.userName}</td>
					<td></td>
				</tr>
				<br>
				<tr>
					<td>성별 </td>
					<td>
						<input type="radio" name="gender" value="M">남성 &nbsp;
						<input type="radio" name="gender" value="F">여성 &nbsp;
					</td>
					<td></td>
				</tr>
				<br>
				<tr>
					<td>생년월일 </td>
					<td><input type="date" value="${member.birth}"
					      style="width:140px;">&nbsp;
					</td>
					<td></td>
				</tr>
				<tr>
					<td>이메일 </td>
					<td><input type="email" name="email" value="${member.email}"></td>
					<td></td>
				</tr>
				<br>
				<tr>
					<td>선호하는 팀</td>
					<td>
						<input type="checkbox" id="guitar" name="KBO" value="두산">
						<label for="Dosan">두산</label> <br>
						<input type="checkbox" id="piano" name="KBO" value="LG">
						<label for="LG">LG 트윈스</label> <br>
						<input type="checkbox" id="danso" name="KBO" value="KIA">
						<label for="KIA">기아 타이거즈</label> <br>
						<input type="checkbox" id="tambourine" name="KBO" value="LOTTE">
						<label for="LOTTE">롯데 자이언츠</label> <br>
						<input type="checkbox" id="recorder" name="KBO" value="KT">
						<label for="KT">KT 위즈</label> <br>
						<input type="checkbox" id="flute" name="KBO" value="NC">
						<label for="NC">NC 다이노스</label> <br>
						<input type="checkbox" id="flute" name="KBO" value="키움">
						<label for="Kiwoom">키움 히어로즈</label> <br>
						<input type="checkbox" id="flute" name="KBO" value="SK">
						<label for="SK">SK 와이번스</label> <br>
						<input type="checkbox" id="flute" name="KBO" value="한화">
						<label for="Hanwha">한화 이글스</label> <br>
						<input type="checkbox" id="flute" name="KBO" value="삼성">
						<label for="Samsung">삼성 라이온스</label>
						
					</td>
					<td></td>
				</tr>
			</table>
			<br>
			<div class="btns" align="center" style="background= black;">
				<div id="goMain" onclick="goMain();">메인으로</div> &nbsp;
				<div id="updateBtn" onclick="updateMember();">수정하기</div> &nbsp;
				<div id="deleteBtn" onclick="deleteMember();">회원 탈퇴</div>
			</div>
			</form>
			<script>
				$(function(){
					$('input:radio').each(function(){
						if( $(this).val() == '${member.gender}')
						  $(this).prop('checked', true);
						else 
						  $(this).prop('checked', false);
					});
					
					
					
					var hobbyArr = '${member.kbo}'.split(', ');
					// console.log(hobbyArr);
					$('input:checkbox').each(function(){
						if($.inArray($(this).val(),kboArr) > -1)
							$(this).prop('checked', true);
					});
				});
				
				function updateMember() {
					$("#updateForm").submit();
				}
				
				function deleteMember() {
					location.href = "${pageContext.request.contextPath}/delete.me?mid=${member.userId}";
				}
				</script>
		</div>
	
	
	<br><br><br><br><br>
	<br><br><br><br><br>
	<c:import url="../common/footer.jsp"/>
	<c:import url="../common/loginUtil.jsp"/>   
</body>
</html>