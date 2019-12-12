<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TFLEX 공지사항</title>
<c:import url="../common/commonUtil.jsp"/>
	<c:import url="../common/header.jsp"/>
<style>
#yu{
  width:500px;
  height:150px;
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
	<br />
	<section>
	<div align="center" >
    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('../../resources/img/notice.PNG');">
    </div>
	</div>
		<br />

			<div class="tableArea" align="center">
		
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
      <td>공지사항 게시판 입니다.</td>
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







