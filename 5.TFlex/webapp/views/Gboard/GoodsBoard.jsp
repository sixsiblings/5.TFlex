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

.tit_box_02{
   background-clip : border-box;
   height:200px;
   
   background-image: url("../../resources/img/blue_back.jpg"); 
}
.box_cr{
   background : #263F51;
   color : white;
}
.tit_ctg_box{
   color : white;
   
   
}
.table{
   width:900px;
}


</style>
</head>
<body>

   <c:import url="../common/header.jsp" />


   <section>
      
      <div class="tit_box_02">
         <div class="tit_ctg_box">
            <div class="box_cr">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <a class="btn_sell" href="/web/myproduct/productRegist" style="float:right">판매등록 하기</a>
      <div class="clear">
      </div>
            </div>
      <h2 align="center"><strong>굿즈 게시판</strong> </h2>
      <h6 align="center"> - 굿 - </h6>
         </div>
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
   
   





   
   <br>
   <br>
   <br>
   <br>
   <br>
   <c:import url="../common/footer.jsp" />
   
	<c:import url="../common/loginUtil.jsp"/>   
</body>
</html>