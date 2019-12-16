<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>티켓 게시판</title>
<c:import url="../common/commonUtil.jsp" />
<style>

.tableArea {
   width: 750px;
   height: 350px;
   margin-left: auto;
   margin-right: auto;
}
.tableArea thead{
   background-color:lightgray;
}

.alert{
      height: 200px;
}

.tit_box_02 {
  background-image: url("../../resources/img/blue_back.jpg"); 
  background-position: center top;
}
.box_cr{
   background : #263F51;
   color : white;
}
.tit_ctg_box{
  border-bottom: 1px solid rgba(255, 255, 255, 0.3);
     
   
}
.table{
   width:900px;
}

.btn_sell{

	float: right;
    font-family: NanumSquareRound !important;
    font-size: 16px;
    color: #fff;
    line-height: 45px;
    padding: 0 10px 0 15px;
    border-left: 1px solid rgba(255, 255, 255, 0.3);
    border-right: 1px solid rgba(255, 255, 255, 0.3);
}
.clear{
	clear : both !important;
}

.box_gr{
width: 995px;
    margin: auto auto;
}
.box_gr span {
    
    
    font-family: NanumSquareRound !important;
    font-size: 16px;
    color: #fff;
    line-height: 16px;
    padding: 15px 15px 15px 15px;
    border-left: 1px solid rgba(255, 255, 255, 0.3);
    max-width: 310px;
    display: inline-block;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    box-sizing: border-box;
    margin: 0;
    float: left;
    height: 45px;
}
.tit_box_02 h2 {
    font-family: NanumSquareRound !important;
    font-size: 36px;
    color: chrimson;
    line-height: 36px;
    padding: 35px 0 45px 0;
    text-align: center;
    font-weight: 900;
}
.tit_box_02 h3 {
    font-family: NanumSquareRound !important;
    font-size: 18px;
    color: white;
    line-height: 18px;
    margin: -30px 0 0 0;
    padding: 0 0 40px 0;
    text-align: center;
}
.table_st_04 {
    border-collapse: collapse;
    width: 995px;
    margin: auto auto;
    border-radius: 10px;
    overflow: hidden;
    background: #fff;
    display: block;
    box-shadow: 0 3px 5px rgba(0,0,0,0.1);
    }
    .mt_20{
    	margin-top : 20px !important;
    }
    .btn_sell:hover{
  transform: scale(1.2);
  -webkit-transform: scale(1.2);
  -moz-transform: scale(1.2);
  -ms-transform: scale(1.2);
  -o-transform: scale(1.2);
    }
    
    
  	.btn_sell:link {text-decoration: none; color: white;}
	.btn_sell:visited {text-decoration: none; color: white;}
	.btn_sell:active {text-decoration: none; color: white;}
	.btn_sell:hover {text-decoration: none;}
	
	.tit_box_02{
		width: 60%;
		margin-left: 400px;
		object-fit: cover;
	}
	
	#carouselExampleIndicators{
		width: 80%;
		height: 500px;
		margin-left: 220px;
	}
	
	.carousel-item active{
		width: x;
		height: 200px;
		
	}
</style>
</head>
<body>

   <c:import url="../common/header.jsp" />


       <div class="carousel-inner" role="listbox">
         <!-- Slide One - Set the background image for this slide in the line below -->
         <img class="carousel-item active" src='${pageContext.request.contextPath}/resources/img/ticket5.jpg' style="height:200px; "/>
           <div class="carousel-caption d-none d-md-block">
           </div>
         </div>

   <section>
      
   <div class="tit_box_02">
	<div class="tit_ctg_box">
		<div class="box_gr">
			
		    <span>티켓</span>
			<a class="btn_sell" href="GoodsInsertForm.jsp">판매등록 +</a>
				<form class="form-inline my-2 my-lg-0">
		<input class="form-control mr-sm-2" type="search" placeholder="내용을 입력하세요." aria-label="Search">
		<button class="btn btn-outline-success my-2 my-sm-0 " type="submit">검색</button>
	</form>
			
			<div class="clear"></div>
		</div>
	</div>
	<h2 id="goods">티켓 게시판</h2>
	<h3>- 야구 티켓 사고 팔떈 T.Flex-</h3>
	<br>
	<br>
	<h6>-Yu</h6>
</div>
      
      
   </section>
   <br><br>
   <section>
      
   <span>
   <div class="tableW" align="center">
   <div class="ed padding-horizontal-small@s" style="display : inline-block;">
      <div class="ed flex flex-wrap flex-middle margin-top-small margin-bottom-small">
         <div class="ed flex flex-wrap flex-left flex-middle">
            <a href="#" id="ed-search-toggle" class="ed button button-link">
               <svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg><!-- <i class="fas fa-search"></i> -->
            </a>
            <button type="button" class="btn btn-primary btn-sm">최신순</button>
         <button type="button" class="btn btn-secondary btn-sm">낮은가격대</button>
         </div>
      </div>   
   </div>
   </div>
</span>                            
         <br><br>
         
         
      <div class="tableArea">
               
               <table class="table table-bordered" style="border-top-right-radius:5px;" >
  <thead>
    <tr>
      
      <th scope="col">상품 정보</th>
      <th scope="col">가격</th>
      <th scope="col">판매자</th>
      <th scope="col">등록일</th>
      <th scope="col">찜하기</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" colspan="5" height="100px;"></th>
      
      
    </tr>
    <tr>
      <th scope="row" colspan="5" height="100px;"></th>
      
    </tr>
    <tr>
      <th scope="row" colspan="5" height="100px;"></th>
      
    </tr>
  </tbody>
</table>

            </div>
         
         
   </section>
   
   <section class="container">
   	<form method="get" action="boardListTicket.jsp" class="form-inline mt-3">
   		<select name="LectureDivide" class="form-control mx-1 mt-2">
   		<option value="두산">두산</option>
   		<option value="한화">한화</option>
   		<option value="SK">SK</option>
   		<option value="삼성">삼성</option>
   		</select>
   		<input type="text" name="search" class="form control mx-1 mt-2" placeholder="내용을 입력하세요">
   		<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
   		<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">등록하기</a>
   		<a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="#reportModal">신고</a>
   	</form>
   	
   	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal">
   		<div class="modal-dialog">
   			<div class="modal-content">
   				<div class="modal=header">
   					<h5 class="modal-title" id="modal">물품 등록</h5>
   					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
   					<span aria-hidden="true">&times;</span>
   					</button>
   				</div>
   				<div class="modal-body">
   				 <form action ="BoardDetail.jsp" method="post">
   				 	<div class="form-row">
   				 		<div class="form-group col-sm-6">
   				 			<label>ㅇㅁㄴㅇ</label>
   				 			<input type="text" name="lectureName" class="form-control" maxlength="20">
   				 		</div>
   				 		<div class="form-group col-sm-6">
   				 			<label>ㅇㅁㄴㅇ</label>
   				 			<input type="text" name="lectureName" class="form-control" maxlength="20">
   				 		</div>
   				 	</div>
   				 	<div class="form-row">
   				 		<div class="form-group col-sm-4">
   				 			<label>ㅇㅁㄴㅇ</label>
   				 			<select name="lectureYear" class="form-control">
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			<option value="2011">2011</option>
   				 			</select>
   				 		</div>
   				 	<div class="form-group col-sm-4">
   				 		<label>수강 학기</label>
   				 		<select name="semesterDivide" class="form-control">
   				 			<option value="1학기" selected>1학기</option>
   				 		</select>	
   				 	</div>
   				 	<div class="form-group">
   				 		<label> 제목 </label>
   				 		<input type="text" name="okokTitle" class="form-control" maxlength="30">
   				 		<div class="form-group">
   				 		<label> sodyd </label>
   				 		<textarea name="okokContent" class="form-control" maxlength="2048" style="height:180px">
						</textarea>
   				 		</div>
   				 	</div>
   				 	<div class="modal-footer">
   				 		<button type ="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
   				 		<button type ="button" class="btn btn-secondary" data-dismiss="modal">등록</button>
   				 	</div>
   				 </form>
   				</div>
   			</div>
   		</div>
   	</div>
   </section>




   
   <br>
   <br>
   <br>
   <br>
   <br>
   <c:import url="../common/footer.jsp" />
</body>
</html>