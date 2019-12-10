<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../common/commonUtil.jsp"/>
<title>회원 정보 수정</title>

</head>
<body>
<c:import url="../common/header.jsp"></c:import>

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
				<tr>
					<td>* 변경 비번</td>
					<td><input type="password" id="password" name="password" required="required"></td>
					<td></td>
				</tr>
				<tr>
					<td>* 변경 비번 확인</td>
					<td><input type="password" id="password2" name="password2"></td>
					<td><label id="pwdResult"></label></td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td style="color:white; text-align: left; padding-left: 20px;">${member.userName}</td>
					<td></td>
				</tr>
				<tr>
					<td>성별 </td>
					<td>
						<input type="radio" name="gender" value="M">남성 &nbsp;
						<input type="radio" name="gender" value="F">여성 &nbsp;
					</td>
					<td></td>
				</tr>
				<tr>
					<td>생년월일 </td>
					<td><input type="date" name="age" min="10" max="100" value="${member.age}"
					      style="width:140px;">&nbsp;
					</td>
					<td></td>
				</tr>
				<tr>
					<td>연락처 </td>
					<td>
						<input type="text" maxlength="3" name="tel1" size="2">-
						<input type="text" maxlength="4" name="tel2" size="4">-
						<input type="text" maxlength="4" name="tel3" size="4">
					</td>
					<td></td>
				</tr>
				<tr>
					<td>이메일 </td>
					<td><input type="email" name="email" value="${member.email}"></td>
					<td></td>
				</tr>
			
				
			</table>
			<br>
			<div class="btns" align="center">
                <div id="goMain" onclick="goMain();">
                    <button onclick="goMain">메인으로</button>
                </div> &nbsp;
                <div id="updateBtn" onclick="updateMember();">
                    <button onclick="updateMember">수정하기</button>
                </div> &nbsp;
                <div id="deleteBtn" onclick="deleteMember();">
                    <button onclick="deleteMember">회원탈퇴</button>
                </div>
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
			
				});
				
				function updateMember() {
					$("#updateForm").submit();
				}
				
				function deleteMember() {
					location.href = "${pageContext.request.contextPath}/delete.me?mid=${member.userId}";
				}

			<c:import url="../common/footer.jsp"></c:import>
</body>
</html>