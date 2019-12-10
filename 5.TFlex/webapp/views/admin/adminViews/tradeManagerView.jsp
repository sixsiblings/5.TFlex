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
<div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
  <div class="btn-group mr-2" role="group" aria-label="First group">
  <button type="button" class="btn btn-secondary">&lt&lt</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-secondary">1</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-secondary">2</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-secondary">3</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-secondary">4</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-secondary">5</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-secondary">&gt&gt</button>&nbsp;&nbsp;
  </div>
  <div class="input-group">
    <input type="text" class="form-control" placeholder="검색" aria-label="Input group example" aria-describedby="btnGroupAddon">
    &nbsp;&nbsp;<button type="button" class="btn btn-secondary">검색</button>
  </div>
</div>


  <div class="input-group">
    <div class="input-group-prepend">
    </div>
  </div>
</div>

<br />

<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">판매자</th>
      <th scope="col">구매자</th>
      <th scope="col">상품명</th>
      <th scope="col">입금여부</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
    </tr>
    
  </tbody>
</table>
</section>
<c:import url="adminCommon/footer.jsp" />
</body>
</html>