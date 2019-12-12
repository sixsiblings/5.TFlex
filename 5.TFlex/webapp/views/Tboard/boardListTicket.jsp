<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>티켓 게시판</title>
<c:import url="../common/commonUtil.jsp"/>

</head>
<body>

<c:import url="../common/header.jsp"/>

<body>
	<section>

    <div id="yu" class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url('MLB.jpg'); background-position: 50% -71.3333px;" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-start">
          <div class="col-md-6 text-center text-md-left aos-init aos-animate" data-aos="fade-up" data-aos-delay="400">
            <h3 class="bg-text-line"></h3>
            <p class="mt-4"></p>
          </div>
        </div>
      </div>
    </div>
		</section>
<div class="container">
<div class="row">

<div class="card " style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
	
<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
	
<div class="card " style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
	
<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
	
<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
</div>
</div>
	

	

			
			
		
			
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<c:import url="../common/footer.jsp"/>
</body>
</html>
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
	color: navy;
	margin-left: auto;
	margin-right: auto;
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


</style>
</head>
<body>

	<c:import url="../common/header.jsp" />


	<section>
		
		<div class="tit_box_02">
			<div class="tit_ctg_box">
				<div class="box_cr">
		<span>티켓</span>
		<span></span>
		<span>국내야구</span>
		<span>해외야구</span>
		<a class="btn_sell" href="/web/myproduct/productRegist" style="float:right">판매등록 하기</a>
		<div class="clear">
		</div>
				</div>
		<h2 align="center"><strong>KBO MLB 티켓 게시판</strong> </h2>
		<h6 align="center"> - 야구티켓 사고 팔때는 T.FLEX 아니 야구뿐만 아니라 스포츠 티켓은 T.FELX - </h6>
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
			
			
		<div class="tableArea" align="center">
					
					<table class="table">
						<thead>
							<tr class="table-secondary">
								<th scope="col">상품 및 정보</th>
								<th scope="col">수량</th>
								<th scope="col">가격</th>
								<th scope="col">등록일</th>
								<th scope="col">찜쿵</th>
							</tr>
						</thead>
					
						<tbody>
							<tr class="table-light">
								<td><a href="boardTicketDetail.jsp" class="alert-link">블루응원석
										판매합니다</a>
									
								<td>
								<td>Yu</td>
								<td>Thornton</td>
								<td><i class="fas fa-graduation-cap mr-2  grey-text"
									aria-hidden="true"></i>Cell 6</td>

							</tr>
							<tr class="table-light">
								<td>블루 응원석 판매합니다
								<td>
								<td>Yu</td>
								<td>Thornton</td>
								<td><i class="fas fa-graduation-cap mr-2  grey-text"
									aria-hidden="true"></i>Cell 6</td>

							</tr>
							<tr class="table-light">
								<td>블루 응원석 판매합니다
								<td>
								<td>Yu</td>
								<td>Thornton</td>
								<td><i class="fas fa-graduation-cap mr-2  grey-text"
									aria-hidden="true"></i>Cell 6</td>

							</tr>
							<tr class="table-light">
								<td>블루 응원석 판매합니다
								<td>
								<td>Yu</td>
								<td>Thornton</td>
								<td><i class="fas fa-graduation-cap mr-2  grey-text"
									aria-hidden="true"></i>Cell 6</td>

							</tr>



						</tbody>
					</table>
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
	color: navy;
	margin-left: auto;
	margin-right: auto;
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


</style>
</head>
<body>

	<c:import url="../common/header.jsp" />


	<section>
		
		<div class="tit_box_02">
			<div class="tit_ctg_box">
				<div class="box_cr">
		<span>티켓</span>
		<span></span>
		<span>국내야구</span>
		<span>해외야구</span>
		<a class="btn_sell" href="/web/myproduct/productRegist" style="float:right">판매등록 하기</a>
		<div class="clear">
		</div>
				</div>
		<h2 align="center"><strong>KBO MLB 티켓 게시판</strong> </h2>
		<h6 align="center"> - 야구티켓 사고 팔때는 T.FLEX 아니 야구뿐만 아니라 스포츠 티켓은 T.FELX - </h6>
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
			
			
		<div class="tableArea" align="center">
					
					<table class="table">
						<thead>
							<tr class="table-secondary">
								<th scope="col">상품 및 정보</th>
								<th scope="col">수량</th>
								<th scope="col">가격</th>
								<th scope="col">등록일</th>
								<th scope="col">찜쿵</th>
							</tr>
						</thead>
					
						<tbody>
							<tr class="table-light">
								<td><a href="boardTicketDetail.jsp" class="alert-link">블루응원석
										판매합니다</a>
									
								<td>
								<td>Yu</td>
								<td>Thornton</td>
								<td><i class="fas fa-graduation-cap mr-2  grey-text"
									aria-hidden="true"></i>Cell 6</td>

							</tr>
							<tr class="table-light">
								<td>블루 응원석 판매합니다
								<td>
								<td>Yu</td>
								<td>Thornton</td>
								<td><i class="fas fa-graduation-cap mr-2  grey-text"
									aria-hidden="true"></i>Cell 6</td>

							</tr>
							<tr class="table-light">
								<td>블루 응원석 판매합니다
								<td>
								<td>Yu</td>
								<td>Thornton</td>
								<td><i class="fas fa-graduation-cap mr-2  grey-text"
									aria-hidden="true"></i>Cell 6</td>

							</tr>
							<tr class="table-light">
								<td>블루 응원석 판매합니다
								<td>
								<td>Yu</td>
								<td>Thornton</td>
								<td><i class="fas fa-graduation-cap mr-2  grey-text"
									aria-hidden="true"></i>Cell 6</td>

							</tr>



						</tbody>
					</table>
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