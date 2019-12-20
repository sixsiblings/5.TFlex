<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티겟 게시글</title>
<c:import url="../common/commonUtil.jsp" />
<style>
.tableArea {
	background: white;
	margin: 0 15%; /*위 아래는 여백 없고, 좌우만 현재 화면의 15%로 !!*/
}

table, th, td {
	border: 1px solid white;
	border-collapse: collapse;
}

th, td {
	/* 전(상,하,좌,우) 방향  */
	/*padding: 10px;*/
	/* 12-6-3-9 */ /* 두 개의 결과는 같다. */
	/*padding: 10px 20px;*/
	padding: 20px 30px 10px 20px;
}

body {
	background-color: rgb(229, 229, 220);
}

#yu {
	width: 500px;
	height: 200px;
	background-size: 400px;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<c:import url="../common/header.jsp" />

	<section class="outer">
		<div class="tableArea" align="center">
			<div id="yu" class="site-blocks-cover overlay aos-init aos-animate"
				style="background-image: url('${pageContext.request.contextPath}/resources/img/ticket4.jpg;">
			</div>

			<c:if test="${ !empty member }">

				<br>
				<h2 align="center">게시글 내용</h2>
				<form action="${ pageContext.request.contextPath }/views/Pay/Pay.jsp" method="POST">
					<table width="800px" align="center"
						style="background-color: white;">
						<tr>
							<td>제목</td>
							<td colspan="5"><span>${Tboard.tTitle}</span></td>
						</tr>
						<tr>
							<td>가격</td>
							<td><span>${Tboard.tPrice}</span></td>
							<td>경기일자</td>
							<td><span>${Tboard.tDate}</span></td>
							<td>조회수</td>
							<td><span>${Tboard.tCount}</span></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><span>${Tboard.tuNo}</span></td>
							<td>작성일</td>
							<td><span>${Tboard.tEnrolldate}</span></td>
							<td>티켓 일련번호</td>
							<td><input type="hidden" value="${Tboard.ticketNo}" />
								관리자에게만 보여집니다</td>
						</tr>
						<tr>
							<td colspan="6">내용</td>
						</tr>
						<tr>
							<td colspan="6">
								<p id="content">${Tboard.tContent}
							</td>
						</tr>
						<tr>
							<td>경기장</td>
							<td><span>${Tboard.sName}</span></td>
						</tr>

					</table>
											<!-- 지도 스크립트 영역 -->
		<div id="map" style="width:500px;height:400px;"></div>									
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=031a820b4e39b046d2e52ef28cccc986"></script>
		<script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
       mapOption = { 
        center: new kakao.maps.LatLng('${Tboard.lat}', '${Tboard.lng}'), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
       };
      var map = new kakao.maps.Map(mapContainer, mapOption); 
      // 마커 이미지의 주소
      var markerImageUrl = '../../resources/while.jsp', 
          markerImageSize = new kakao.maps.Size(40, 42), // 마커 이미지의 크기
          markerImageOptions = { 
              offset : new kakao.maps.Point(34, 16)// 마커 좌표에 일치시킬 이미지 안의 좌표
          };

      var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

      // 마커가 표시될 위치입니다 
      var markerPosition  = new kakao.maps.LatLng('${Tboard.lat}', '${Tboard.lng}'); 
      
      // 마커를 생성합니다
      var marker = new kakao.maps.Marker({
          position: markerPosition
      });
      
      // 마커가 지도 위에 표시되도록 설정합니다
      marker.setMap(map);
      
      // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
      // marker.setMap(null);    
      </script>
					<br> 
					<input type="hidden" class="form-control"
						aria-label="Text input with dropdown button" name="seller"
						value="${Tboard.tuNo}">
					<input type="hidden"
						class="form-control" aria-label="Text input with dropdown button"
						name="ttprice" value="${Tboard.tPrice}">
					<input
						type="hidden" class="form-control"
						aria-label="Text input with dropdown button" name="tttitle"
						value="${Tboard.tTitle}">
					<input type="hidden"
						class="form-control" aria-label="Text input with dropdown button"
						name="ttEnrolldate" value="${Tboard.tEnrolldate}">
					<input type="hidden"
						class="form-control" aria-label="Text input with dropdown button"
						name="ttNo" value="${Tboard.tNo}">

					<div align="center">
						<button type="submit" class="btn btn-primary" onclick="goBuy();"
							style="background-color: #74A780; border-color: #74A780;">구매하기</button>
						<button type="submit" class="btn btn-primary"
							onclick="goFavorite();"
							style="background-color: #FF5E47; border-color: #FF5E47;">찜하기</button>
					</div>
					<br>
				</form>


				<div align="center">
					<button class="btn btn-primary"
						onclick="location.href='${pageContext.request.contextPath }/tselectList.bo'">메뉴로
						돌아가기</button>
					<c:if test="${!empty member and member.uNo eq Tboard.tuNo}">
						<c:url var="TboardUpdate" value="tbUpView.bo">
							<c:param name="tNo" value="${Tboard.tNo}" />
						</c:url>
						<button class="btn btn-primary"
							onclick="location.href='${TboardUpdate}'">수정하기</button>
					</c:if>
				</div>
				</c:if>
		</div>
		<br /> <br />
	

	</section>
	<br>
	<br>
	<br>
	<br>
	
	<c:if test="${ empty member }">
		<c:url var="errorPage" value="views/common/errorPage.jsp">
			<c:set var="msg" value="회원만 가능한 서비스입니다." scope="session" />
		</c:url>

		<c:redirect url="${errorPage }" />
	</c:if>


	<c:import url="../common/footer.jsp" />
	<c:import url="../common/loginUtil.jsp" />
</body>
</html>