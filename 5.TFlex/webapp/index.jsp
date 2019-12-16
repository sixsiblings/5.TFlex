<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Index 페이지</title>

<c:import url="views/common/commonUtil.jsp" />
<style>/*
.showcase {
   background-image: url('resources/img/base6.jpg');
}
*/
.h3{
   position: relative;
   font-size: 40px;
     color: black;
     font-weight: bold;
}
.lead{
position: absolute;
  top: 200px;
  right: 30px;
}
.p1{
  right: 150px;
}
.p2{
   left: 200px;
}
#no1h3{
   top:100px;
   right: 40px;
}
#no2h3{
   left: 70px;
   top: 80px;
}
#no3h3{
   position: absolute;
   right: 300px;
   top: 70px;
}
/**/
.col-lg-6 {
  display:table;
  width:100%;
  height:100%;
  text-align: center;
}
td:hover {
  background-color: rgb(252,252,252);
}
.img-fluid:hover {
  transform: scale(1.1);
  -webkit-transform: scale(1.1);
  -moz-transform: scale(1.1);
  -ms-transform: scale(1.1);
  -o-transform: scale(1.1);
}
.mb-0 {
color: black;
vertical-align: middle;
  display: table-cell;
  vertical-align: middle;
}
/*뒷 배경*/
section {
  font-family: Calluna, Arial, sans-serif;
  background: linear-gradient(rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.9)), 
url(resources/img/base7.jpg);
  background-repeat: no-repeat;
  background-attachment: fixed !important;
  background-size: 100% !important;
  background-position: center top !important;
  padding: 1rem;
  padding-top: 45%;
  color: #fff;
 
}
#h1{
   position: relative;
   left:400px;
   font-size: 50px;
   color: black;
}
-------------------------
table{
       width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
}
th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    BORDER-BOTTOM: gray 1px dashed; 

  }
/* 백혜영꺼 지우지마세요 제발 */
#bhy-loginBtn_btn:hover, #bhy-csBtn:hover, #bhy-myPageBtn:hover, #bhy-logoutBtn_btn:hover {
   color : white;
}

#HOMEBtn:hover, #KBOBtn:hover, #MLBBtn:hover, #TicketBtn:hover , #GoodsBtn{
   color : white;
}
hr{
   position:relative;
    left: 380px;
    width: 60%;
}
#no3h3{
   left: 270px;
}

@media (min-width:320px) and (max-width:480px){   /*긴글 글자 크기*/
.lead{font-size:13px;}
/*동영상 크기*/
.dong{height:200px; width:300px;}
/*첫번째 긴글*/
.p1{
  right: 250px;
}
/*두번째 긴글*/
.p2{
   left: 80px;
}
/*세번째 긴글*/
.p3{
   display: inline-block;
   position: static !important;
   right: 200px;
   margin-top: 100px;
}
/*첫번째 머릿글*/
#no1h3{
   top: 100px;
   right: 320px;
}
/*두번째 머릿글*/
#no2h3{
   top: 60px;
   right: 30px;
   
}
/*세번째 머릿글*/
#no3h3{
   top: 50px;
   left: 270px;
}
/*머릿글 통합*/
.h3{
  position: absolute;
  color: black;
  vertical-align: middle;
  display: table-cell;
  font-weight: bold;
  font-size:12px;
}}
@media (min-width:481px) and (max-width:600px){   /*긴글 글자 크기*/
.lead{font-size:14px;}
/*동영상 크기*/
.dong{height:200px; width:300px;}
/*첫번째 긴글*/
.p1{
  right: 250px;
}
/*두번째 긴글*/
.p2{
   left: 80px;
}
/*세번째 긴글*/
.p3{
   display: inline-block;
   position: static !important;
   right: 200px;
   margin-top: 100px;
}
/*첫번째 머릿글*/
#no1h3{
   top: 100px;
   right: 320px;
}
/*두번째 머릿글*/
#no2h3{
   top: 60px;
   right: 30px;
   
}
/*세번째 머릿글*/
#no3h3{
   top: 50px;
   left: 270px;
}
/*머릿글 통합*/
.h3{
  position: absolute;
  color: black;
  vertical-align: middle;
  display: table-cell;
  font-weight: bold;
  font-size:14px;
}}
@media (min-width:601px) and (max-width:768px){   /*긴글 글자 크기*/
.lead{font-size:14px;}
/*동영상 크기*/
.dong{height:250px; width:35px;}
/*첫번째 긴글*/
.p1{
  right: 250px;
}
/*두번째 긴글*/
.p2{
   left: 80px;
}
/*세번째 긴글*/
.p3{
   display: inline-block;
   position: static !important;
   right: 200px;
   margin-top: 100px;
}
/*첫번째 머릿글*/
#no1h3{
   top: 100px;
   right: 320px;
}
/*두번째 머릿글*/
#no2h3{
   top: 60px;
   right: 30px;
   
}
/*세번째 머릿글*/
#no3h3{
   top: 50px;
   left: 270px;
}
/*머릿글 통합*/
.h3{
  position: absolute;
  color: black;
  vertical-align: middle;
  display: table-cell;
  font-weight: bold;
  font-size:16px;
}}
@media (min-width:769px) and (max-width:1024px){
   /*긴글 글자 크기*/
.lead{font-size:14px;}
/*동영상 크기*/
.dong{height:250px; width:350px;}
/*첫번째 긴글*/
.p1{
  right: 250px;
}
/*두번째 긴글*/
.p2{
   left: 80px;
}
/*세번째 긴글*/
.p3{
   display: inline-block;
   position: static !important;
   right: 200px;
   margin-top: 100px;
}
/*첫번째 머릿글*/
#no1h3{
   top: 100px;
   right: 320px;
}
/*두번째 머릿글*/
#no2h3{
   top: 60px;
   right: 30px;
   
}
/*세번째 머릿글*/
#no3h3{
   top: 50px;
   left: 270px;
}
/*머릿글 통합*/
.h3{
  position: absolute;
  color: black;
  vertical-align: middle;
  display: table-cell;
  font-weight: bold;
  font-size:18px;
}
}
/*4*/
@media (min-width:1025px) and (max-width:1399px){
   /*긴글 글자 크기*/
.lead{font-size:14px;}
/*동영상 크기*/
.dong{height:300px; width:400px;}
/*첫번째 긴글*/
.p1{
  right: 250px;
}
/*두번째 긴글*/
.p2{
   left: 80px;
}
/*세번째 긴글*/
.p3{
   display: inline-block;
   position: static !important;
   right: 200px;
   margin-top: 100px;
}
/*첫번째 머릿글*/
#no1h3{
   top: 100px;
   right: 320px;
}
/*두번째 머릿글*/
#no2h3{
   top: 60px;
   right: 30px;
   
}
/*세번째 머릿글*/
#no3h3{
   top: 50px;
   left: 270px;
}
/*머릿글 통합*/
.h3{
  position: absolute;
  color: black;
  vertical-align: middle;
  display: table-cell;
  font-weight: bold;
  font-size:33px;
}
}
/*3*/
@media (min-width:1400px) and (max-width:1749px){
/*긴글 글자 크기*/
.lead{font-size:14px;}
/*동영상 크기*/
.dong{height:400px; width:500px;}
/*첫번째 긴글*/
.p1{
  right: 250px;
}
/*두번째 긴글*/
.p2{
   left: 80px;
}
/*세번째 긴글*/
.p3{
   display: inline-block;
   position: static !important;
   right: 200px;
   margin-top: 100px;
}
/*첫번째 머릿글*/
#no1h3{
   top: 100px;
   right: 320px;
}
/*두번째 머릿글*/
#no2h3{
   top: 60px;
   right: 30px;
   
}
/*세번째 머릿글*/
#no3h3{
   top: 50px;
   left: 270px;
}
/*머릿글 통합*/
.h3{
  position: absolute;
  color: black;
  vertical-align: middle;
  display: table-cell;
  font-weight: bold;
  font-size:25px;
}
}
/*2*/
@media (min-width:1750px) and (max-width:1900px){
.lead{font-size:16px;}
.dong{height:400px; width:600px;}
.p1{
  right: 200px;
}
.p2{
   left: 100px;
}
.p3{
   right: 100px;
   bottom: 500px;
}
.h3{
  position: absolute;
  top: 70px;
  left: 200px;
  bottom: 100px;
  font-size: 30px;
  color: black;
  vertical-align: middle;
  display: table-cell;
  font-weight: bold;
  
  
}
#no1h3{
   right: 320px;
}
/*두번째 머릿글*/
#no2h3{
   top: 60px;
   right: 10px;
   
}
/*세번째 머릿글*/
#no3h3{
   top: 50px;
   left: 270px;
}
/*1*/
@media (min-width:1981px) and (max-width:3000px){
.lead{font-size:16px;}
.dong{height:500px; width:800px;}
.p1{
  right: 250px;
}
.p2{
   left: 200px;
}
.p3{
   right: 100px;
   bottom: 500px;
}
.h3{
  position: absolute;
  top: 70px;
  left: 200px;
  bottom: 100px;
  font-size: 40px;
  color: black;
  vertical-align: middle;
  display: table-cell;
  font-weight: bold;
}
}
</style>
</head>

<body>

   <c:import url="views/common/header.jsp"></c:import>


   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
       <div class="carousel-inner" role="listbox">
         <!-- Slide One - Set the background image for this slide in the line below -->
         <div class="carousel-item active" style="height: 1000px; background-image: url('resources/img/field.jpg');">
           <div class="carousel-caption d-none d-md-block">
           </div>
         </div>
         <!-- Slide Two - Set the background image for this slide in the line below -->
         <div class="carousel-item" style="height: 1000px; background-image: url('resources/img/field2.jpg');">
           <div class="carousel-caption d-none d-md-block">
           </div>
         </div>
         <!-- Slide Three - Set the background image for this slide in the line below -->
         <div class="carousel-item" style="height: 1000px; background-image: url('resources/img/field3.jpg');">
           <div class="carousel-caption d-none d-md-block">
           </div>
         </div>
       </div>
    </div>
   <br /><br /><br /><br /><br />

   <!-- Icons Grid -->
   <a href="views/Nboard/NoticeBoard.jsp"><h1 id="h1" ><strong>공지사항</strong></h1></a>
   <hr>
   <div class="site-section">
      <div class="container">
         <div class="row mb-5">
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <div class="text p-4">
                     
                  <table border="0" cellpadding="0" cellspacing="0" style="font-size:15px;">
                  <tr>
                  <td> <a href="#" style="text-decoration:none">2019-12-12 메뉴판 오류 고쳤습니다.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-12-09 신고 버튼 에러들 다 고쳤습니다.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-12-06 공지사항 창을 달아봤어요.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-12-03 버전 업데이트 해주세요.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-08-02 굿굿.</a></td>
                  </tr>
                  </table>
                  </div>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <div class="text p-4">
                  <table border="0" cellpadding="0" cellspacing="0" style="font-size:15px;">
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-12-13 서버 점검을 완료했습니다</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-12-14 에 로그인이 제한됩니다</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-11-13 서버 이전작업을 완료했습니다</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-10-23 게시판 이용이 가능합니다</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-9-10 회원정보 수정이 가능합니다</a></td>
                  </tr>
                  </table>
                  </div>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                  <div class="text p-4">
                  <table border="0" cellpadding="0" cellspacing="0" style="font-size:15px;">
                  <tr>
                  <td> <a href="#" style="text-decoration:none">2019-12-12 휴대폰은 저희가 못 고칩니다.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-12-09 허위신고시 강력처벌하겠습니다.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-12-06 자주 이용해주셔서 감사합니다.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-12-03 꼭 버전을 업데이트 해주세요.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">2019-08-02 쪽지 보내지 말아주세요.</a></td>
                  </tr>
                  </table>
                  </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <a href="views/Tboard/boardListTicket.jsp"><h1 id="h1"><strong>티켓 게시판</strong></h1></a>
   <hr />
   <div class="site-section">
      <div class="container">
         <div class="row mb-5">
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <div class="text p-4">
                  <table border="0" cellpadding="0" cellspacing="0" style="font-size:15px;">
                  <tr>
                  <td> <a href="#"style="text-decoration:none">설날입니다. 다들 잘 다녀오세요.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">내일이 설날이래요.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">공지사항 창을 달아봤어요.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">굿굿.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">굿굿.</a></td>
                  </tr>
                  </table>
                  </div>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <div class="text p-4">
                  <table border="0" cellpadding="0" cellspacing="0" style="font-size:15px;">
                  <tr>
                  <td> <a href="#"style="text-decoration:none">오늘은 맥주창고 기기.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">맥창 별룬데....</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">그럼 혼자가서 먹어.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">굿굿.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">굿굿.</a></td>
                  </tr>
                  </table>
                  </div>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                  <div class="text p-4">
                  <table border="0" cellpadding="0" cellspacing="0" style="font-size:15px;">
                  <tr>
                  <td> <a href="#"style="text-decoration:none">아 졸리다.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">점심먹고 몬스터 기기.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">굿굿.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">굿굿.</a></td>
                  </tr>
                  <tr>
                  <td> <a href="#"style="text-decoration:none">굿굿.</a></td>
                  </tr>
                  </table>
                  </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <a href="views/board/MLBboard.jsp"><h1 id="h1"><strong>MLB</strong></h1></a>
   <hr />
   <div class="site-section">
      <div class="container">
         <div class="row mb-5">
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/fqp-U-Jq6hg" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/fqp-U-Jq6hg">아니 이게 일주일치?!!???</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-12-12</small></span>
                     <p class="mb-0">각종 명장면들로 가득한 MLB 수비 명장면을 만나 보세요 :)</p>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/NU9NjOppqb4" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/NU9NjOppqb4">와.... 우리 현진이형 또 사고쳤다...</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-12-12</small></span>
                     <p class="mb-0">2019 류현진 하이라이트 모음~~:)</p>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/W8ONve-8ONU" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/W8ONve-8ONU">역시 우리 써니형 앞으로 꽃길만~~</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-12-12</small></span>
                     <p class="mb-0">우리 써니형 경기력 한번만 보고 가세요~~~~</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <a href="views/board/KBOboard.jsp"><h1 id="h1"><strong>KBO</strong></h1></a>
   <hr />
   <div class="site-section">
      <div class="container">
         <div class="row mb-5">
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/9p1KMEDEj0c" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/9p1KMEDEj0c">KIA : NC 경기 하이라이트</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-08-25</small></span>
                     <p class="mb-0">과연 승자는?!!?!? :)</p>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/FeqhJVzlE-4" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/FeqhJVzlE-4">2019 프로야구 [키움 VS 두산]</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-12-12</small></span>
                     <p class="mb-0">와 이형들 요즘 경기력 무엇??!!?!?</p>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/smiTss-vwKw" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/smiTss-vwKw">[KBO리그] 한화 : SK 경기 하이라이트 (05.27)</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-12-12</small></span>
                     <p class="mb-0">우리 한화형들 언젠간 이기겠지 ??....</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>


   <a href="views/Gboard/GoodsBoard.jsp"><h1 id="h1"><strong>굿즈</strong></h1></a>
   <hr />
   <div class="site-section">
      <div class="container">
         <div class="row mb-5">
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/aIgWe0M0fHk" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/aIgWe0M0fHk">류현진 땀내나는 티셔츠 팔아요 ㅎㅎ</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-12-12</small></span>
                     <p class="mb-0">류현진의 기운이 담긴 티셔츠 입니다 ^^ :)</p>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/UAm61HlVFIk" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/UAm61HlVFIk">추신수 홈런 배트 팔아요</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-12-12</small></span>
                     <p class="mb-0">와 내가 신수형 배트를??? ~~ :)</p>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4">
               <div class="post-entry">
                  <div class="image">
                     <iframe width="350" height="250" src="https://www.youtube.com/embed/btRNpKK-hLE" 
                     frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                     allowfullscreen></iframe>
                  </div>
                  <div class="text p-4">
                     <h2 class="h5 text-black">
                        <a class="redfont" href="https://www.youtube.com/embed/btRNpKK-hLE">우리 불쌍한 정호형 배트 팝니다...</a>
                     </h2>
                     <span class="text-uppercase date d-block mb-3"
                        style="color: gray"><small>TFLEX &bullet;
                           2019-12-12</small></span>
                     <p class="mb-0">형.... 왜 그랬어...</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <!-- Image Showcases -->
   <section class="showcase">
      <div class="container-fluid p-0">
      
         <div class="row no-gutters">
            <div class="col-lg-6 order-lg-2 text-white showcase-img">
               <div style="margin-bottom: 150px;">
                  <a id="no1h3" class="h3" href="https://www.youtube.com/embed/IScJQzoycuI?list=PLdYpuQNpbuZzn69k6Ym31dt35-jD-HEtf">
                  <u>가을야구 2017 하이라이트</u></a><br />
               </div>
               <div>
                  <p class="lead mb-0 p1">베이징 올림픽에서 전승 금메달을 <br />
                  딴 이후로는 젊은 층의 대거 유입과 밴드왜건 효과 등이 <br />
                  얽히면서 폭풍 성장하게 되었고, 인기가 많다보니<br />
                   프로야구 중계 플랫폼은 TV와 인터넷, <br />
                   모바일 앱등 다양하게 존재해 시청하기도 쉬운 편이다. <br />
                   참고로 중계 플랫폼이 이렇게 나뉘는데도 프로야구 <br />
                  케이블 tv시청률은 인기팀에 한해 2%가 넘어가며 <br />
                  평균 시청률이 1% 이상이 되며, 인터넷 플랫폼 시청자수는 <br />
                  기본 4~5만이 넘어가고, 많으면 15만~20만명 까지도 <br />
                  시청하기도 한다(최고 시청인원 기준). <br />
                  구단 자체 수익의 단위도 100억 단위를 기록하고, <br />
                  보는 사람이 많으니 야구장 광고 판매나 TV 방송사 중계 판매율은 <br />
                  급증해서 초단위로 광고가 몰려들 정도라고. <br />
                  그래서인지 3사 스포츠 채널 중 KBO 리그 중계를 안 하는 데는 없다.</p>
                  </div>
            </div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
               <iframe class="dong dong1" width="800" height="550" src="https://www.youtube.com/embed/IScJQzoycuI?list=PLdYpuQNpbuZzn69k6Ym31dt35-jD-HEtf" 
               frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
               allowfullscreen></iframe>
            </div>
         </div> 
         <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
         <div class="row no-gutters">
            <div class="col-lg-6 text-white showcase-img">
               <div style="margin-bottom: 150px;">
               <a id="no2h3" class="h3" href="https://www.youtube.com/embed/IScJQzoycuI?list=PLdYpuQNpbuZzn69k6Ym31dt35-jD-HEtf"><u>MLB | 2017 World Series Highlights <br />(LAD vs HOU)</u></a><br />
               </div>
               <div>
                  <p class="lead mb-0 p2">
                  전 세계 프로야구 리그 중에서 가장 높은 수준의 리그이며 <br />
                  아메리칸 리그(American League)와 내셔널 리그(National League)로 구성된다. <br />
                  내셔널 리그에 15개팀, 아메리칸 리그에 15개팀으로 총 30개팀이 등록되어 <br />
                  있으며, 29개팀은 미국에 연고지를 두고 있으며 토론토 블루제이스만이 <br />
                  캐나다 토론토를 연고로 하고 있다. 사실 2004년까지는 캐나다에 <br />
                  2개팀(몬트리올 엑스포스, 토론토 블루제이스)이 있었는데 <br />
                  몬트리올 엑스포스가 워싱턴으로 연고 이전을 하여 하나로 줄어버렸다. <br />
                  어쨌든 캐나다가 참여하고 있는 관계로 공식적으로는 북미 프로야구리그다.<br />
                  여태까지 캐나다 팀은 두 구단만 있었고 지금은 그 중 한 팀밖에 <br />
                  안 남았기 때문에 사실상 미국 프로야구나 다름없다. <br />
                  그래서 한국에서는 메이저리그를 미국 프로야구로 표현하는 경우도 없지 않다. <br />
                  이 점은 캐나다 구단들이 꽤 많이 참가하고 있고 <br />
                  캐나다인들 사이에서 큰 인기를 누리고 있는 NHL과 대조적이다</p>
               </div>
            </div>
            <div class="col-lg-6 my-auto showcase-text">
               <iframe class="dong dong2" width="800" height="600" src="https://www.youtube.com/embed/NNrNwwDU1O0" frameborder="0" 
               allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
         </div>
         
         <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
         
         <div class="row no-gutters" ">
            <div class="third col-lg-6 order-lg-2 text-white showcase-img" >
               <div>
                  <a id="no3h3" class="h3" href="views/jindownload/jingi.jsp"><u>명기록</u></a><br />
               </div>
               <div>
                  <p class="lead mb-0 p3">
                     1982년 전두환 당시 대통령의 시구와 함께 시작된 프로야구 개막전과 한국시리즈 <br />
                     6차전에서 나온 드라마같은 만루홈런 두개로 인하여 "이 홈런으로 앞으로 10년은<br />
                      족히 먹고 살 것"이라는 말까지 나올 정도였다. 1982년에는 OB의 박철순이 22연승을 거두고,<br />
                      MBC의 백인천이 4할 타율을 기록했으며, 해태의 김성한은 투타를 겸업하며 <br />
                      3할 타율에 13홈런, 10승을 기록하는 등의 진기록이 세워졌다.<br />
                      삼미 슈퍼스타즈는 해당 문서 내용에서 보듯 국가대표 출신 한 명 없는 <br />
                      철저히 무명 선수들로만 구성된 약체 팀으로 팀내 좌완투수가 없어서 삼미특수강<br /> 
                      직장야구팀에서 뛰던 감사용을 영입할 정도였다. <br />
                      1982년 1할대 승률과 특정 팀 상대 전패(OB)라는 세계 야구리그 역사상 <br />
                      전무후무한 대기록을 달성하게 되고, 1983년 시즌 재일동포 투수 장명부의 맹활약으로 <br />
                      반짝 상위권을 기록하기도 했지만 그 후 제자리를 찾은 팀성적과 재정적인 문제로 인해 <br />
                      1985년 청보 핀토스, 1988년 태평양 돌핀스, 1996년 현대 유니콘스로 구단 운영주체가 <br />
                      바뀌며 활동을 이어갔지만 2007년 모기업의 재정난으로 결국 해체하게 된다. <br />
                      넥센 히어로즈는 현대 유니콘스가 해체한 후 현대 유니콘스의 선수를 <br />
                      중심으로 창단한 신생구단이다. 1985년 잠시 충청도에 연고지를 두던 <br />
                      OB 베어스가 서울로 연고지를 옮기면서 <br />
                      그 자리를 빙그레 이글스가 대신하게 된다. 그리고 1990년에는 <br />
                      전라북도를 연고로 쌍방울 레이더스의 창단이 있었다.<br />
                  </p>
               </div>
            </div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
               <iframe class="dong dong3" width="800" height="600" src="https://www.youtube.com/embed/jUzZ1yqDMzs" 
               frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
         </div>
      </div>
      
   </section>
   <script type="text/javascript">
        function div2Resize() {
            var div2 = document.getElementById('div2');
            div2.style.width = window.innerWidth - 200 + 'px';
        }
        window.onload = function() {
            div2Resize();
 
            // 브라우저 크기가 변할 시 동적으로 사이즈를 조절해야 하는경우
            window.addEventListener('resize', div2Resize);
        }
    </script>
   
   <c:import url="views/common/footer.jsp"></c:import>

   

   <c:import url="views/common/loginUtil.jsp"/>
   
</body>

</html>