<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<c:import url="../common/commonUtil.jsp"/>
<style>
</style>
</head>
<body>
<!-- Grid row -->

<div class="row">

  <!-- Grid column -->
  <div class="col-md-12 col-lg-8 col-xl-6">

    <ul class="nav md-pills nav-justified pills-rounded pills-purple-gradient">
      <li class="nav-item">
        <a class="nav-link active" data-toggle="tab" href="#panel100" role="tab">Fashion</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#panel101" role="tab">Lifestyle</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#panel102" role="tab">Beauty</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#panel103" role="tab">Shop</a>
      </li>
    </ul>

    <!-- Tab panels -->
    <div class="tab-content">

      <!--Panel 1-->
      <div class="tab-pane fade in show active" id="panel100" role="tabpanel">

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>

      </div>
      <!--/.Panel 1-->

      <!--Panel 2-->
      <div class="tab-pane fade" id="panel101" role="tabpanel">

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>

      </div>
      <!--/.Panel 2-->

      <!--Panel 3-->
      <div class="tab-pane fade" id="panel102" role="tabpanel">

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>

      </div>
      <!--/.Panel 3-->

      <!--Panel 4-->
      <div class="tab-pane fade" id="panel103" role="tabpanel">

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>

      </div>
      <!--/.Panel 4-->

    </div>

  </div>
  <!-- Grid column -->

  <!-- Grid column -->
  <div class="col-md-12 col-lg-8 col-xl-6">


    <ul class="nav md-pills nav-justified pills-warning mb-4">
      <li class="nav-item pl-0">
        <a class="nav-link active " data-toggle="tab" href="#panel104" role="tab">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#panel105" role="tab">Features</a>
      </li>
      <li class="nav-item pr-0">
        <a class="nav-link" data-toggle="tab" href="#panel106" role="tab">Pricing</a>
      </li>
    </ul>
    <!-- Tab panels -->
    <div class="tab-content card">
      <!--Panel 1-->
      <div class="tab-pane fade in show active" id="panel104" role="tabpanel">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>
      </div>
      <!--/.Panel 1-->
      <!--Panel 2-->
      <div class="tab-pane fade" id="panel105" role="tabpanel">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>
      </div>
      <!--/.Panel 2-->
      <!--Panel 3-->
      <div class="tab-pane fade" id="panel106" role="tabpanel">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil odit magnam minima, soluta doloribus
          reiciendis molestiae placeat unde eos molestias. Quisquam aperiam, pariatur. Tempora, placeat ratione
          porro voluptate odit minima.</p>
      </div>
      <!--/.Panel 3-->
    </div>


  </div>
  <!-- Grid column -->

</div>
<!-- Grid row -->
	

</body>
</html>