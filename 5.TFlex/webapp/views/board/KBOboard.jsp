<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KBO</title>
<c:import url="../common/commonUtil.jsp"/>
   
<style>
#yu{
  width:500px;
  height:230px;
  background-size: 400px;
  background-repeat:no-repeat;
}
.tableArea{
   
       width:750px;
      height:350px;
      color : navy;
      margin-left:auto;
      margin-right:auto;
}


</style>
   </head>
   <body>
   <c:import url="../common/header.jsp"/>
   <section>
    <div align="center" >
    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('../../resources/img/KBO.jpg');">
    </div>
	</div>
      <br /><br />
   
<div class="tableArea" align="center">
         
         
         <br>

   <div class="ed padding-horizontal-small@s" style="display : inline-block;">
      <div class="ed flex flex-wrap flex-middle margin-top-small margin-bottom-small">
         <div class="ed flex flex-wrap flex-left flex-middle">
            <a href="#" id="ed-search-toggle" class="ed button button-link">
               <svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg><!-- <i class="fas fa-search"></i> -->
            </a>
         </div>
      </div>   
   </div>

<span class="badge badge-pill badge-dark">두산</span>
<span class="badge badge-pill badge">한화</span>
<span class="badge badge-pill badge-light">NC</span>
<span class="badge badge-pill badge-light">삼성</span>
         <br>
         <br>
   <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">글제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
      <th scope="col">첨부파일</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><button type="button" class="btn btn-link">공지</button></th>
      <td>KBO 자유게시판 공지입니더</td>
       <td>admin</td>
        <td>2019.12.20</td>
         <td>30</td>
           <td>◎</td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>Yu</td>
      <td>Thornton</td>
      <td><i class="fas fa-graduation-cap mr-2  grey-text" aria-hidden="true"></i>Cell 6</td>
      <td>@fat</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td colspan="2">Larry the Bird</td>
      <td><i class="fas fa-leaf mr-2 blue-text" aria-hidden="true"></i>Cell 9</td>
      <td>@twitter</td>
      <td>@fat</td>
    </tr>
      <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
       <td><i class="fas fa-download mr-2 green-text" aria-hidden="true"></i>Cell 9</td>
      <td>@twitter</td>
      <td>@fat</td>
    </tr>
      <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td><i class="fas fa-book mr-2 red-text" aria-hidden="true"></i>Cell 9</td>
      <td>@twitter</td>
      <td>@fat</td>
    </tr>
      <tr>
      <th scope="row">5</th>
      <td colspan="2">Larry the Bird</td>
      <td><i class="fas fa-magic mr-2 grey-text" aria-hidden="true"></i>Cell 9</td>
      <td>@twitter</td>
      <td>@fat</td>
    </tr>
      <tr>
      <th scope="row">6</th>
      <td colspan="2">Larry the Bird</td>
      <td><i class="fas fa-magic mr-2 grey-text" aria-hidden="true"></i>Cell 9</td>
      <td>@twitter</td>
      <td>@fat</td>
     
    </tr>
    
  </tbody>
</table>

<a href="KBOboardInsertForm.jsp" class="btn btn-primary pull-right">글쓰기</a>
           <nav aria-label="Page navigation example">
         
  <ul class="pagination pagination-circle pg-blue justify-content-center">
    
  <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">Previous</a></li>
    <li class="page-item disabled">
      <a class="page-link" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item active"><a class="page-link">1</a></li>
    <li class="page-item"><a class="page-link">2</a></li>
    <li class="page-item"><a class="page-link">3</a></li>
    <li class="page-item"><a class="page-link">4</a></li>
    <li class="page-item"><a class="page-link">5</a></li>
    <li class="page-item">
      <a class="page-link" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link">Last</a></li>
  </ul>
</nav>

</div>
   
   </section>
   <br>
   <br>
   <br>
   <br>
   <br><br>
   <br>
   <br>
   <br>
   <br>
<br>



   <c:import url="../common/footer.jsp"/>
   
</body>
</html>
