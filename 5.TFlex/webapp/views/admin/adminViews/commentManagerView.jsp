<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../../common/commonUtil.jsp" />
</head>
<body>
<c:import url="adminCommon/header.jsp" />

<br />

<section>


	
</div>

<div class="dropdown"  align="center">

	<button type="button" class="btn btn-primary" onclick="boardManager();">게시글 관리</button>
	&nbsp;&nbsp;&nbsp;
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Dropdown button
  </button>
  
  &nbsp;&nbsp;&nbsp;<input type="text" class="selectCategory"/>
  &nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary">검색</button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
  </div>
</div>

<br />

<table class="table table-hover" align="center" style="max-width:100rem;">
  <thead>
    <tr>
      <th scope="col" width="30px"><input type="checkbox" id="chk1" /></th>
      <th scope="col" width="80px">댓글 번호</th>
      <th scope="col"width="200px">제목</th>
      <th scope="col" width="100px">작성자</th>
      <th scope="col"width="100px">신고자</th>
      <th scope="col"width="200px">신고 항목</th>
      <th scope="col" width="100px">신고 횟수</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="col"><input type="checkbox" id="chk1" /></th>
      <td>Otto</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
      <tr>
      <th scope="col"><input type="checkbox" id="chk1" /></th>
      <td>Otto</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
      <tr>
      <th scope="col"><input type="checkbox" id="chk1" /></th>
      <td>Otto</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
      <tr>
      <th scope="col"><input type="checkbox" id="chk1" /></th>
      <td>Otto</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
      <tr>
      <th scope="col"><input type="checkbox" id="chk1" /></th>
      <td>Otto</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
      <tr>
      <th scope="col"><input type="checkbox" id="chk1" /></th>
      <td>Otto</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="col"><input type="checkbox" id="chk1" /></th>
      <td>Otto</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
      <tr>
      <th scope="col"><input type="checkbox" id="chk1" /></th>
      <td>Otto</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
    
  </tbody>
</table>

 <div class="pageselect" align="center">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
    
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</div>

</section>
<script>
	function boardManager(){
		location.href="${ pageContext.request.contextPath }/views/admin/adminViews/reportManagerView.jsp";
	}
	
</script>
<c:import url="adminCommon/footer.jsp" />
</body>
</html>