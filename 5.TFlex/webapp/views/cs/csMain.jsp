<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Customer Service
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <c:import url="../common/myPageUtil.jsp"/>

	<style>
		  #bhy-card-shadow{
            border-style : hidden;
            box-shadow : 5px 5px 3px gray;
        }
        
           #bhy-nav-font{
        	font-size : 15px;
        } 
        
        #bhy-table, #bhy-table-header{
        	text-align : center;
        	
        }

        #bhy-text{
        	margin-top : 20px;
        	margin-left : 20px;
        }
        
		/* 아코디언 부분 CSS */
		.accordion {
		    font-family:Arial, Helvetica, sans-serif; 
		    margin:0 auto;
		    font-size:14px;
		    width:900px;
		    padding:5px;
		    background:white;
		}
		.accordion ul {
		    list-style:none;
		    margin:0;
		    padding:0;    
		}
		.accordion li {
		    margin:0;
		    padding:0;
		}
		.accordion [type=radio], .accordion [type=checkbox] {
		    display:none;
		}
		.accordion label {
		    display:block;
		    font-size:15px;
		    line-height:16px;
		    background:#E5E5E8;
			color:black;
		    text-shadow:1px 1px 1px rgba(255,255,255,0.3);
		    font-weight:700;
		    cursor:pointer;
		    text-transform:uppercase;
		    -webkit-transition: all .2s ease-out;
		    -moz-transition: all .2s ease-out;
		}
		.accordion ul li label:hover, .accordion [type=radio]:checked ~ label, .accordion [type=checkbox]:checked ~ label {
		    background:#4E4A48;
		    color: #F89A60;
  		    text-shadow:1px 1px 1px rgba(0,0,0,0.5) 
	}
		.accordion .content {
		    padding:0 10px;
		    overflow:hidden;
		    -webkit-transition: all .5s ease-out;
		    -moz-transition: all .5s ease-out;
		}
		.accordion p {
		    color:#333;
		    margin:0 0 30px;
		}

		
		/* Vertical */
		.vertical ul li {
		    overflow:hidden;
		    margin:0 0 1px;
		}
		.vertical ul li label {
		    padding:10px;
		}
		.vertical [type=radio]:checked ~ label, .vertical [type=checkbox]:checked ~ label {
		    border-bottom:0;
		}

		.vertical ul li .content {
		    height:0px;
		    border-top:0;
		}
		.vertical [type=radio]:checked ~ label ~ .content, .vertical [type=checkbox]:checked ~ label ~ .content {
		    height:auto;
		 }   

	</style>
</head>

<body class="">
  <div class="wrapper ">
  
  <!-- 사이드바 시작 -->
    <div class="sidebar" data-color="blue" data-active-color="danger">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="${pageContext.request.contextPath }/index.jsp" class="simple-text logo-mini">
          <div class="logo-image-big">
            <img src="${ pageContext.request.contextPath }/resources/test/img/baseball_logo.jpg">
          </div>
        </a>
        <a href="../../index.jsp" class="simple-text logo-normal">
          	T.Flex
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav" id="bhy-nav-font">       
          <li class="active ">
            <a href="csMain.jsp">
              <i class="fas fa-gem">FAQ</i>
            </a>
          </li>
          <br />
          <br />
          <li>
          	 <a href="QNAList.jsp">
				<i class="fas fa-pencil-alt"></i>Q&A
            </a>
          </li>
        	<br/>
        	<br/>
          <li>
          	 <a href="noticeList.jsp">
				<i class="fas fa-bullhorn"></i>Notice
            </a>
          </li>      
        </ul>
      </div>
    </div>
    <!-- 사이드바 끝 !!  -->
    
      <!-- 본문내용영역 헤더 -->
<div class="main-panel">
			 <!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
	<div class="container-fluid">
		<div class="navbar-wrapper">
			<div class="navbar-toggle">
				<button type="button" class="navbar-toggler">
					<span class="navbar-toggler-bar bar1"></span>
					<span class="navbar-toggler-bar bar2"></span>
					<span class="navbar-toggler-bar bar3"></span>
				</button>
			</div>
		<a class="navbar-brand" href="#pablo">              
			<i class="fas fa-gem" id="bhy-text" > FAQ</i>
		</a>
		</div>
	</div>
</nav>
<!-- End Navbar -->

<!--  본문 내용 영역 -->
<div class="content" id="Notice">
	<div class="row">
		<div class="col-md-12">
          
<!--  카드영역 분리가능한 시작  -->
	<div class="col-md-8" style="margin: auto;" >
		<div class="card-header"  id="bhy-card-shadow" 
				style="background:white; height: 100px; font-size:40px;">                
			<i class="fas fa-gem" id="bhy-text" > 자주 찾는 질문 FAQ</i>
		</div>
	</div><br />
<!--  카드영역 분리가능한 끝 -->
          

<!-- 내용 테이블 영역 -->
<div class="col-md-8" style="margin: auto;">
	<div class="card-header"  id="bhy-card-shadow" style="background:white; height:auto; ">                
		<br /><br />

<!-- ------------------------------------------------------------------- -->					
					
<div class="accordion vertical">
    <ul>
        <li>
            <input type="radio" id="radio-1" name="radio-accordion" checked="checked" />
            <label for="radio-1">아이디, 비밀번호 찾기</label>
            <div class="content">
                <p>이메일 본인인증 후 아이디/비밀번호 찾기를 통해 확인할 수 있습니다.</p>
            </div>
        </li>
        <li>
            <input type="radio" id="radio-2" name="radio-accordion" />
            <label for="radio-2">회원정보를 변경하고 싶습니다.</label>
            <div class="content">
            	<p>[MyPage]-[회원정보 수정]에서 '기존 비밀번호'를 입력하신 후 <br />
            		'새로운 비밀번호'를 입력하여 변경 가능합니다.</p>
          </div>
        </li>
        <li>
            <input type="radio" id="radio-3" name="radio-accordion" />
            <label for="radio-3">ID는 몇 개나 만들 수 있나요?</label>
            <div class="content">
            	<p>T.Flex는 본인확인을 통한 1인 1계정만 이용하실 수 있습니다.</p>
			</div>
        </li>
        <li>
            <input type="radio" id="radio-4" name="radio-accordion" />
            <label for="radio-4">회원탈퇴는 어떻게 하나요?</label>
            <div class="content">
            	<p>
            		회원 탈퇴는 [MyPage]-[회원정보 수정]-[회원탈퇴]에서 가능하나, <br />
            		정지회원, 상품등록, 거래내역이 있는 경우 회원탈퇴가 제한됩니다.   <br />
            		<br />
            		* 등록 중인 물품이 있는 경우, 등록물품 삭제 후 탈퇴 가능   <br />
            		* 거래 중인 판매 또는 구매 미확정 건이 있는 경우, 거래 종료 후 탈퇴 가능 <br />
            		* 이용정지 회원의 경우, 정지 해제 후 탈퇴 가능 <br />
            		탈퇴 즉시 회원혜택은 모두 소멸하며 재가입 시 복원되지 않습니다.
            	</p>
			</div>
        </li>
          <li>
            <input type="radio" id="radio-5" name="radio-accordion" />
            <label for="radio-5">판매자, 구매자의 거래 취소가 없습니다.</label>
            <div class="content">
            	<p>
            		판매자는 구매자가 입금 후 거래를 취소할 수 없습니다. <br />
  					구매자도 입금 후 거래를 취소할 수 없으니 신중한 구매 부탁드립니다.
            	</p>
			</div>
        </li>
        <li>
            <input type="radio" id="radio-6" name="radio-accordion" />
            <label for="radio-6">구매자와 연락이 닿지 않습니다.</label>
             <div class="content">
            	<p>
            		구매자와 연락이 꼭 필요한 사항이라면 [1:1문의하기]를 통해 <br />
            		구매자에게 전달하실 내용을 남겨주시기 바랍니다. <br />
            		고객센터 이용 가능 시간 평일 09~18시 (주말/공휴일 휴무)
            	</p>
			</div>
        </li>
        <li>
            <input type="radio" id="radio-7" name="radio-accordion" />
            <label for="radio-7">회원 인증 서비스</label>
             <div class="content">
            	<p>
            		T.Flex는 판매, 구매 모두 인증된 회원만 이용이 가능합니다. <br />
            	</p>
			</div>
        </li>
        <li>
            <input type="radio" id="radio-8" name="radio-accordion" />
            <label for="radio-8">안전거래 보장 서비스</label>
             <div class="content">
            	<p>
            		구매자가 티켓을 받기 전까지 결제 대금은 T.Flex에서 안전하게 보관합니다. <br />
            		구매자가 티켓을 받은 후 해당 경기가 종료된 후 판매자에게 결제 대금이 지급됩니다. <br />
            	</p>
			</div>
        </li>
        <li>
            <input type="radio" id="radio-9" name="radio-accordion" />
            <label for="radio-9">판매자 직거래 유도를 주의하세요!</label>
             <div class="content">
            	<p>
            		판매자와 직거래는 사건, 사고 등 위험에 노출될 수 있습니다. <br />
            		직거래를 강요하는 판매자는 신고해주세요!
            	</p>
			</div>
        </li>                                            
    </ul>
</div>						  
<!--  본문 영역 끝  -->


				</div>
			</div>
		</div>
	</div>
</div>
<!-- 본문내용 끝 </div> -->

		</div>
	</div>
</body>
</html>
