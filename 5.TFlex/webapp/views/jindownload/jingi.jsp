<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head><title>
	진기록 명기록 | 자료실 | KBO
</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, Chrome" />
<meta name="title" content="KBO" /><meta name="author" content="스포츠투아이" />
<meta name="keywords" content="KBO, 한국야구위원회, 프로야구, KBO 리그, 퓨처스리그, 프로야구순위, 프로야구 일정" />
<meta name="viewport" content="width=1200" /><meta property="og:type" content="website" />
<meta property="og:title" content="KBO 홈페이지" />
<meta property="og:description" content="KBO, 한국야구위원회, 프로야구, KBO 리그, 퓨처스리그, 프로야구순위, 프로야구 일정" />
<meta property="og:image" content="//crdfcowjurxm984864.cdn.ntruss.com/resources/images/common/open_graph_kbo.png" />
<meta property="og:url" content="//www.koreabaseball.com/" />
<link rel="stylesheet" type="text/css" href="/resources/css/font.css?version=1" />
<link rel="stylesheet" type="text/css" href="//crdfcowjurxm984864.cdn.ntruss.com/resources/css/reset.css?version=201711281" />

	<script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/jquery-migrate-1.1.1.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/jquery.ui.datepicker-ko.js"></script>
    <script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/S2i.Common-1.0.1.js?version=20170523"></script>
    <script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/S2i.Paging-1.0.8.js?version=20170523"></script>
	<script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/common.js?version=20181221"></script>
    <script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/S2i.MakeTable-1.0.3.js?version=20170523"></script>
    <script type="text/javascript" charset="utf-8" src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/btogether.js?version=20181221"></script>
    
	<!—[if lt IE 9]>
		<script src="//crdfcowjurxm984864.cdn.ntruss.com/resources/js/html5shiv.min.js"></script>
	<![endif]—>
    <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-15700655-14', 'auto');
        ga('send', 'pageview');
    </script>
    <link rel="shortcut icon" type="image/x-icon" href="${ pageContext.request.contextPath }/resources/img/Tflexpabicon.png" />
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">


<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
<link href="${ pageContext.request.contextPath }/resources/css/bootstrap-3.4.1/bootstrap.min.css" rel="stylesheet">
	
	
<style>
#contents{
	position:relative;
	right: 120px;
}
	
body {width:100%;}
#wrap {min-width:1090px;margin:0 auto;}
section {}
.wrapping {position:relative;overflow:hidden;width:1090px;margin:0 auto;}



#container {overflow:hidden;margin:0 auto;min-height:800px;padding:50px 0;border-top:1px solid #cdcdcd;}
#container aside {float:left;width:175px;padding:12px 0 0 14px;margin-right:45px;}
aside {}
aside h3 {font-size:20px;width:115px;margin:0 0 30px 15px;padding-bottom:25px;border-bottom:4px solid #000;color:#111;line-height:1.3}
aside.futures h3 {padding-bottom:17px;border-bottom:4px solid #002373;text-align:center;}
aside #snb {margin-left:15px;}
aside #snb li {margin-bottom:18px;}
aside #snb li a {display:block;font-size:15px;color:#7c7c7c;}
aside #snb li.on a, aside #snb li a:hover {font-family:"ngb";color:#222;}
aside .sub-banner {width:143px;height:84px;border:1px solid #ccc;}
aside .snb-depth {margin-top:30px;padding:20px 14px;background:#f7f7f7;color:#7c7c7c;}
aside .snb-depth h4 {width:116px;padding-bottom:10px;margin-bottom:15px;font-size:18px;line-height:1.2;border-bottom:4px solid #7c7c7c;}
aside .snb-depth > #snb {margin:0;}

/* 19.07.10 B together 119 */
aside .submenu-banner {width:175px;padding:44px 3px 19px 0;background:url('//crdfcowjurxm984864.cdn.ntruss.com/resources/images/sub/submenu_together.png') no-repeat 0 0/175px;text-align:right;box-sizing:border-box;}
aside .submenu-banner .sub-present {display:initial;color:#1f150b;vertical-align:bottom;letter-spacing:-1px;}
aside .submenu-banner .sub-present span {display:inline-block;width:14px;padding:2px 0;border-radius:2px;background:#383841;color:#fff;font-size:15px;text-align:center;}
/* // 19.07.10 B together 119 */

#container #contents {position:relative;float:right;width:838px;}
#container #futures {margin-top:-50px;}
#container #futures #contents {width:inherit;}
#contents {}
#contents .location {font-family:"dotum","돋움체";font-size:12px;color:#888;text-align:right;vertical-align:middle;}
#contents .location span a {display:inline-block;font-size:12px;color:#888;vertical-align:middle;}
#contents .location span a img {vertical-align:middle;}
#contents .tit-page {margin-bottom:25px;font-family:"ng";font-size:30px;line-height:1.2;letter-spacing:-1px;}
#contents .tit-ebook {padding:0 0 20px 12px;border-bottom:6px solid #000;}
#contents .ebook-menu {overflow:hidden;width:384px;margin:0 auto;padding:10px 0;text-align:center;}
#contents .ebook-menu li {float:left;}
#contents .ebook-menu li a {padding:7px 37px 10px 38px;font-size:18px;border:1px solid #b9b9b9;}
#contents .ebook-menu li.on a {background:#000;color:#fff;border:1px solid #000;}
#contents .menu-list-box {position:relative;width:100%;padding-bottom:35px;border-bottom:1px solid #000;}
#contents .menu-list-box ul {overflow:hidden;text-align:center;}
#contents .menu-list-box .txt-tip {padding-top:25px;font-size:15px;text-align:center;}
#contents .menu-list-box ul li {float:left;width:16.66%;cursor:pointer;}
#contents .menu-list-box ul li a {display:inline-block;width:100%;padding:13px 0;font-size:14px;}
#contents .menu-list-box ul li.on a {background:#000;color:#fff;}
#contents .menu-list-box .menu-type {margin:35px 0 15px;}
#contents .menu-list-box .menu-type .menu-line {border-bottom:1px solid #000;}
#contents .menu-list-box .select-box {top:0;}
/*
dd

*/

/*wbc table01*/
/* play rule  */
.aboutRule {float:left;width:100%;height:530px;position:relative;background:url("//crdfcowjurxm984864.cdn.ntruss.com/client/images/history/img_bg_book.png") no-repeat top center;margin-top:20px}
.aboutRule h4{padding:15px 0 0 70px}
.aboutRule span.ribon{position:absolute;right:41px;top:0;}
.aboutRule .btnDown {display:block; text-align:right;position:absolute;right:122px;top:30px}
.aboutbook {position:relative; width:100%; height:396px; padding-top:32px;/* background:url("//crdfcowjurxm984864.cdn.ntruss.com/client/images/history/recordbook_bg.gif") no-repeat center center;*/}
.aboutbook p{margin-top:12px;text-align:center}
.aboutbook img {width:559px; height:366px;}
.aboutbook span {position:absolute; right:70px; bottom:10px; width:71px; height:66px; background:url("//crdfcowjurxm984864.cdn.ntruss.com/client/images/history/recordbook_ball.png") no-repeat 0 0;}
.hTable tbody td{padding:10px 0 8px 0;}





</style>

</head>
<body>

    <form method="post" action="./Amazing.aspx" id="mainForm">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE4Mzg2MDgzODdkZOQGTqJPDtibenUquhXJL8fl1NXpMYE4ELiipcMLJA/d" />

</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0854DE2D" />
</div>

	    <!-- wrap -->
	    <div id="wrap">
		    <!-- header -->
		    
		    <header><c:import url="../common/header.jsp"/>
</header>
		    <!-- // header -->
		    <!-- container -->
    
<section id="container">

	<div class="wrapping container-wrap">			
	
		
		
<div id="contents" class="content01"> 
<br /><br /><br /><br /><br />
    <div class="sub-content">
		<div class="aboutRule">
			<h4><img src="//crdfcowjurxm984864.cdn.ntruss.com/client/images/history/img_title_amazing.png" alt="진기록 명경기" /></h4>
			<span class="ribon"><img src="//crdfcowjurxm984864.cdn.ntruss.com/client/images/common/img_ribon_amazing.png" alt="진기록 명경기" /></span>
			<span class="btnDown">
				<a href="https://www.koreabaseball.com/file/ebook/pdf/2019_진기록명기록.pdf" target="_blank"><img src="//crdfcowjurxm984864.cdn.ntruss.com/client/images/history/button_pdf.png" alt="PDF다운로드" /></a>
				<a href="javascript:popup('https://www.koreabaseball.com/file/ebook/2019/2019_진기록명기록/index.html');"><img src="//crdfcowjurxm984864.cdn.ntruss.com/client/images/about/btn_ebook_down.jpg" alt="e-book다운로드" /></a>
			</span>
			<div class="aboutbook">
				<p><img src="//crdfcowjurxm984864.cdn.ntruss.com/resources/images/sub/img_reference_amazing.jpg?v180406" alt="2019 공식 야구규칙"></p>	
				<span>&nbsp;</span>
			</div>			
		</div>
	</div>
</div>

	</div>
</section>
		    <!-- // container -->	
		    <!-- footer -->
		    <c:import url="../common/footer.jsp"/>
		    <!-- // footer -->
	    </div>
	    <!-- // wrap -->
    </form>
<script type="text/javascript">
    <!--
    currentLnb("01");

    function popup(url) {
        var fullwidth = screen.width - 10;
        var fullheight = screen.height - 30;
        var newWin = window.open(url, 'ebook', 'titlebar=yes,toolbar=no, location=no,  menubar=no, resizable=no, status=0, left=0, top=0, width=' + fullwidth + ', height=' + fullheight);
        newWin.focus();
        opener = self;
    }
    // -->
    </script>



    <script type="text/javascript">
        $(document).ready(function () {
            // 선수 검색
            $(document).on("click", "#btnTopPlayerSearch", function (e) {
                getPlayerSearch();
                e.preventDefault();
            });

            // 선수 검색 엔터
            $(document).on("keypress", "#txtTopPlayerWord", function (e) {
                if (event.keyCode == 13) {
                    getPlayerSearch();
                    e.preventDefault();
                }
            });

            //// 선수 검색 마우스 아웃
            //$("body").click(function (e) {
            //    var container = $("#player_search_area");

            //    if (container.css("display") == "block") {
            //        if (!container.has(e.target).length) {
            //            container.hide();
            //        }
            //    }
            //});
        });

        // 선수 검색
        function getPlayerSearch() {
            if ($("#txtTopPlayerWord").val() == "") {
                alert("선수명은 필수 입니다.");
                $("#txtTopPlayerWord").focus();
                return false;
            } else {
                //var searchWord = encodeURI($("#txtTopPlayerWord").val());

                //if (searchWord != "") {
                //    location.href = "/Player/Search.aspx?searchWord=" + searchWord;
                //}
                var request = $.ajax({
                    type: "post"
                    , url: "/ws/Controls.asmx/GetSearchPlayer"
                    , dataType: "json"
                    , data: {
                        name: $("#txtTopPlayerWord").val()
                    }
                    , error: ajaxFailed
                    , async: true
                });

                request.done(function (data) {
                    if (data.code == "100") {
                        var container = $(".search-result");
                        container.children().remove();

                        container.hide();

                        if (data.now.length > 0 || data.retire.length > 0) {
                            // 2017-05-22 yeeun, 홍지희 사원 요청, 결과가 1명일 경우 바로 페이지 연결
                            if (data.now.length + data.retire.length == 1) {
                                var link = "";

                                if (data.now.length == 1) {
                                    link = data.now[0]["P_LINK"];
                                } else {
                                    link = data.retire[0]["P_LINK"];
                                }

                                location.href = link;
                            } else {
                                if (data.now.length > 0) {
                                    container.append($("<h4>등록 선수</h4>"));

                                    var div = $("<div class='active' />");
                                    div.children().remove();

                                    setPlayerDiv(data.now, div, true);

                                    container.append(div);
                                }

                                if (data.retire.length > 0) {
                                    container.append($("<h4>역대 선수</h4>"));

                                    var div = $("<div class='retire'/>");
                                    div.children().remove();

                                    setPlayerDiv(data.retire, div, false);

                                    container.append(div);
                                }

                                //container.append($(String.format("<p><a href='/Player/Search.aspx?searchWord={0}''>'{0}' 검색결과 모두 보기</a></p>", $("#txtTopPlayerWord").val())));
                                container.append($("<p><a href='/Player/Search.aspx?searchWord=" + $("#txtTopPlayerWord").val() + "''>'" + $("#txtTopPlayerWord").val() + "' 검색결과 모두 보기</a></p>"));
                                container.show();
                            }
                        } else {
                            container.append($("<p class='null'>검색 결과가 없습니다.</p>"));
                            container.show();
                        }
                    }
                });
            }
        }

        // 선수 검색 div 
        function setPlayerDiv(list, div, isActive) {
            $.each(list, function (index, player) {
                var aLink = $("<a />");
                aLink.attr("href", player["P_LINK"]);

                var dl = $("<dl />");
                var dt = $("<dt />");
                var backNo = "";

                if (isActive) {
                    //backNo = String.format("No.{0}", player["BACK_NO"]);
                    backNo = "No." + player["BACK_NO"];
                }

                //dt.text(String.format("{0} {1}", player["P_NM"], backNo));
                dt.text(player["P_NM"] + " " + backNo);
                dl.append(dt);

                var dd = $("<dd />");
                //dd.text(String.format("{0} {1}({2})", player["T_NM"], player["POS_NO"], player["P_TYPE"]));
                dd.text(player["T_NM"] + " " + player["POS_NO"] + "(" + player["P_TYPE"] + ")");
                dl.append(dd);

                var ddImg = $("<dd class='btn-arrow'><img src='//crdfcowjurxm984864.cdn.ntruss.com/resources/images/common/btn_arrow_search.png' alt='' /></dd>");
                dl.append(ddImg);

                aLink.append(dl);
                div.append(aLink);
            });
        }
    </script>
</body>
</html>