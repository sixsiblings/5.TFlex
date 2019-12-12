<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<footer >
  <!-- 쫓아오는 푸터 -->
  
  	<button type="button" id="fixedbutton" class="btn btn-circle" data-toggle="modal" data-target="#exampleModalLong">
  		<i class="fab fa-facebook-messenger fa-4x" style="color: blue"></i>
	</button>
	
	<div class="modal fade right" id="exampleModalLong">
  		<div class="modal-dialog" role="document"  style="margin-top: 300px; height: 700px; width:400px;">
    		<div class="modal-content">
    			<ul class="nav nav-tabs">
    				<li class="nav-item">
						  <a id="chatBtn" class="nav-link active" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseExample">
						    <i class="far fa-comments fa-3x" style="color: green;"></i>
						  </a>
					</li>
					<li class="nav-item">
						<a id="alamBtn" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseExample">
						    <i class="far fa-bell fa-3x" style="color: red;"></i>
						</a>
					</li>
    			</ul>
	    		<div id="chatdiv" class="collapse">
				  <div class="card card-body" style="border: 0px;">
				    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
				  </div>
				</div>
				<div id="alamdiv" class="collapse">
				  <div class="card card-body" style="border: 0px;">
				  	afjalsjfl;sadjfl;jf;lasjfj
				  </div>
				</div>
    		</div>
  		</div>
	</div>	
</footer>

<footer>
<!-- 고정된 푸터 -->
<div style="background: #294550;">
<div class="container">
  <div class="row">
    	<div class="col-lg-5 col-xs-12 about-company">
      <h2>Heading</h2>
      <p class="pr-5 text-white-50">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac ante mollis quam tristique convallis </p>
      <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i class="fa fa-linkedin-square"></i></a></p>
    </div>
    <div class="col-lg-3 col-xs-12 links">
      <h4 class="mt-lg-0 mt-sm-3">Links</h4>
        <ul class="m-0 p-0">
          <li>- <a href="#">Lorem ipsum</a></li>
          <li>- <a href="#">Nam mauris velit</a></li>
          <li>- <a href="#">Etiam vitae mauris</a></li>
          <li>- <a href="#">Fusce scelerisque</a></li>
          <li>- <a href="#">Sed faucibus</a></li>
          <li>- <a href="#">Mauris efficitur nulla</a></li>
        </ul>
    </div>
    <div class="col-lg-4 col-xs-12 location">
      <h4 class="mt-lg-0 mt-sm-4">Location</h4>
      <p>22, Lorem ipsum dolor, consectetur adipiscing</p>
      <p class="mb-0"><i class="fa fa-phone mr-3"></i>(541) 754-3010</p>
      <p><i class="fa fa-envelope-o mr-3"></i>info@hsdf.com</p>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col copyright">
      <p class=""><small class="text-white-50">© 2019. All Rights Reserved.</small></p>
    </div>

  </div>
</div>
</div>
</footer>

<script>
	$('#fixedbutton').click(function(){
		$('#alamdiv').hide();
		$('#chatdiv').show();
		$('#alamBtn').removeClass('active');
		$('#chatBtn').addClass('active');
	});
	
	$('#alamBtn').click(function(){
		$('#chatdiv').hide();
		$('#alamdiv').show();
		$('#chatBtn').removeClass('active');
		$('#alamBtn').addClass('active');
	});
	
	$('#chatBtn').click(function(){
		$('#alamdiv').hide();
		$('#chatdiv').show();
		$('#alamBtn').removeClass('active');
		$('#chatBtn').addClass('active');
	});
</script>















