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
position: absolute;
  top: 140px;
  left: 260px;
  bottom: 100px;
  font-size: 40px;
  color: black;
  vertical-align: middle;
  display: table-cell;
}
.lead{
position: absolute;
  top: 280px;
  left: 140px;
}
/**/
.col-lg-6 {
  display:table;
  width:100%;
  height:100%;
  text-align: center;
}
.col-md-6:hover {
  transform: scale(1.1);
  -webkit-transform: scale(1.1);
  -moz-transform: scale(1.1);
  -ms-transform: scale(1.1);
  -o-transform: scale(1.1);
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
-------------------------

</style>
</head>

<body>

	<c:import url="views/common/header.jsp"></c:import>


	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" style="height: 700px;">
		<ol class="carousel-indicators" style="display: none;">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox" style="height: 700px;">
			<!-- Slide One - Set the background image for this slide in the line below -->
			<div class="carousel-item active"
				style="height: 700px; background-image: url('${pageContext.request.contextPath}/resources/img/bg-stadium1.jpg">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<!-- Slide Two - Set the background image for this slide in the line below -->
			<div class="carousel-item"
				style="height: 700px; background-image: url('${pageContext.request.contextPath}/resources/img/bg-stadium2.jpg')">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<!-- Slide Three - Set the background image for this slide in the line below -->
			<div class="carousel-item"
				style="height: 700px; background-image: url('${pageContext.request.contextPath}/resources/img/bg-stadium3.jpg">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item"
				style="height: 700px; background-image: url('${pageContext.request.contextPath}/resources/img/Ryu.jpg">
			</div>
		</div>
	</div>
	<br />
	<br />
	<!-- Icons Grid -->
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
								<a class="redfont" href="#">아니 이게 일주일치?!!???</a>
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
							<img src="resources/img/base2.jpg" alt="Image" class="img-fluid">
						</div>
						<div class="text p-4">
							<h2 class="h5 text-black">
								<a class="redfont" href="#">RealMad vs Striker Who Will Win?</a>
							</h2>
							<span class="text-uppercase date d-block mb-3"
								style="color: gray"><small>By Colorlib &bullet;
									Sep 25, 2018</small></span>
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Fugiat beatae doloremque, ex corrupti
								perspiciatis.</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-4">
					<div class="post-entry">
						<div class="image">
							<img src="resources/img/base3.jpg" alt="Image" class="img-fluid">
						</div>
						<div class="text p-4">
							<h2 class="h5 text-black">
								<a class="redfont" href="#">RealMad vs Striker Who Will Win?</a>
							</h2>
							<span class="text-uppercase date d-block mb-3"
								style="color: gray"><small>By Colorlib &bullet;
									Sep 25, 2018</small></span>
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Fugiat beatae doloremque, ex corrupti
								perspiciatis.</p>
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
						<h3 id="no1h3" class="h3"><u>When you use a theme</u></h3><br />
					</div>
					<div>
						<p class="lead mb-0">When you use a theme created by Start <br />
							Bootstrap, you know that the theme will look great on any device, <br />
							whether it's a phone, tablet, or desktop the page will behave <br />
							responsively!</p>
						</div>
				</div>
				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<img src="resources/img/base5.jpg" alt="Image" class="img-fluid">
				</div>
			</div> 
			<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
			<div class="row no-gutters">
				<div class="col-lg-6 text-white showcase-img">
					<div style="margin-bottom: 150px;">
					<h3 id="no2h3" class="h3"><u>When you use a theme</u></h3><br />
					</div>
					<div>
						<p class="lead mb-0">Newly improved, and full of great utility <br />
							classes, Bootstrap 4 is leading the way in mobile responsive web <br />
							development! All of the themes on Start Bootstrap are now using <br />
							Bootstrap 4!</p>
					</div>
				</div>
				<div class="col-lg-6 my-auto showcase-text">
					<img src="resources/img/puppy.jpg" alt="Image" class="img-fluid">
				</div>
			</div>
			
			<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
			
			<div class="row no-gutters">
				<div class="col-lg-6 order-lg-2 text-white showcase-img">
					<div style="margin-bottom: 150px;">
						<h3 id="no3h3" class="h3"><u>When you use a theme</u></h3><br />
					</div>
					<div>
						<p class="lead mb-0">
							Landing Page is just HTML and CSS with a <br />
							splash of SCSS for users who demand some deeper customization <br />
							options. Out of the box, just add your content and images, and <br />
							your new landing page will be ready to go!
						</p>
					</div>
				</div>
				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<img src="resources/img/basesta1.jpg" alt="Image" class="img-fluid">
				</div>
			</div>
		</div>
		
	</section>
	
	<c:import url="views/common/footer.jsp"></c:import>

	

	<c:import url="views/common/loginUtil.jsp"/>
	
</body>

</html>
