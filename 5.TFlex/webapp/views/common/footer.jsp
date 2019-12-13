<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:if test="${ !empty member }">
<footer >
  <!-- 쫓아오는 푸터 -->
  	<button type="button" id="fixedbutton" class="btn btn-circle" data-toggle="modal" data-target="#exampleModalLong">
  		<i class="fab fa-facebook-messenger fa-4x" style="color: blue"></i>
	</button>
	
	<div class="modal fade right" id="exampleModalLong">
  		<div class="modal-dialog" role="document"  style="bottom: 0px; height: 700px; width:400px;">
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
				  <div class="card card-body" style="border: none;">
					  <div id="chatbox">
							<fieldset style="display: inline-block; width: 65%;">
								<div id="messageWindow"></div><br />
								<textarea placeholder="Write your message here..." id="inputText" style="width:70%; resize: none;" onkeyup="enterKey();"></textarea>
								<i class="far fa-paper-plane fa-2x" id="sendBtn"></i>
							</fieldset>
					  </div>
				  </div>
				</div>
				<div id="alamdiv" class="collapse">
				  <div class="card card-body" style="border: none;">
				  	afjalsjfl;sadjfl;jf;lasjfj
				  </div>
				</div>
    		</div>
  		</div>
	</div>	
</footer>
</c:if>
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
	
	var conChk = false;
	
	var uName = '${ member.userName }';
	
	// 채팅창 내용 부분
	var $textarea = $('#messageWindow');
	
	// 채팅 서버 소켓
	var webSocket = null;
	
	// 내가 보낼 문자열을 담은 textarea 공간
	var $inputMessage = $('#inputText');
	
	// 엔터키 누를때 동작할 함수
	function enterKey(){
		if(window.event.keyCode == 13 && window.event.shiftKey == false){
			send();
		}
	}
	
	$('#fixedbutton').click(function(){
		$('#alamdiv').hide();
		$('#chatdiv').show();
		$('#alamBtn').removeClass('active');
		$('#chatBtn').addClass('active');
		
		if(!conChk){
			
			webSocket = new WebSocket('ws://192.168.20.159:8088${pageContext.request.contextPath}/broadcast');			
			
		// 웹 소켓 연결이 이루어 질때 동작할 함수
			webSocket.onopen = function(event){
				$textarea.html("<p class='chat_content'>" + uName + "님께서 입장 하셨습니다.</p><br>");
				
				// 현재 접속한 사용자 목록 가져오기
				getUserList();
			}
			conChk = true;
		}

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

		
		
		function connection(){
			
			// 서버로부터 메시지를 응답받을 때 동작하는 함수
			webSocket.onmessage = function(event){
				onMessage(event);
				getUserList();
			}
			
			// 서버에서 에러가 발생했을 때 동작할 함수
			webSocket.onerror = function(event){
				onError(event);
			}
			
			// 대화가 종료된 후 나가고자 할 때 동작할 함수
			webSocket.onclose = function(event){
				// onClose(event);
				delUserList();
			}
		}
		// 서버로 메시지를 전달하는 함수
		function send(){
			if($inputMessage.val() == ''){
				// 메시지가 입력되지 않았을 때
				alert('메시지를 입력해주세요');
			} else{
				
				var changeBr = $inputMessage.val().replace(/[\r\n]/gim, "<br>");
				
				// 메시지가 입력되었을 때
				$textarea.html(
						$textarea.html()
					  + "<p class='chat_content'>나 : "
					  + changeBr + "</p><br>");
				
				webSocket.send($('#chat_id').val() + "|" + $inputMessage.val());
				
				$inputMessage.val('');
			}
			
			$textarea.scrollTop($textarea.get(0).scrollHeight);
		}
		// 서버로 부터 전달 받은 메시지 화면에 출력하기
		function onMessage(event){
			var msg = event.data.split("|");
			
			// 보낸 사람의 ID
			var sender = msg[0];
			
			// 전달한 내용
			var content = msg[1];
			
			if(content == ""){
				// 전달 받은 글이 없거나, 전달한 사람이
				// 나와 통신하는 상대방이 아닐 경우
				// 아무것도 하지 않겠다.
			} else{
				
				var changeBr = content.replace(/[\r\n]/gim, "<br>");
				
				$textarea.html(
					$textarea.html()
				  + "<p class='chat_content other-side' >"
				  + sender + ":" + content + "</p><br>");
				
				$textarea.scrollTop($textarea.get(0).scrollHeight);
			}
		}
		
		function onError(event){
			alert(event.data);
		}
		
		function onClose(event){
			alert(event);
		}
		$('#startBtn').on('click', function(){
			$('#chatbox').css('display','block');
			$(this).css('display', "none");
			connection();
		});
		
		$('#endBtn').on('click', function(){
			$('#chatbox').css('display', 'none');
			$('#startBtn').css('display', 'inline');
			
			webSocket.send($('#chat_id').val() + "| 님께서 퇴장 하셨습니다 ");
			webSocket.close();
		});
		
		// 새로운 사용자가 접속할 경우 사용자 명단에
		// 새로운 사용자 아이디 추가하기
		// 서버 비동기 통신 (ajax)
		function getUserList(){
			$.ajax({
				url : "${pageContext.request.contextPath}/bcUserList.do",
				data : {chat_id : $('#chat_id').val()},
				type : "POST",
				success : function(data){
					$userList = $('#userWindow');
					$userList.empty();
					
					/* console.log(data); */
					for(var idx in data){
						var $p = $('<p>');
						
						$p.text(data[idx]);
						
						$userList.append($p);
					}
				}, error : function(){
					console.log('실패');
				}
			});
		}
		// 사용자가 접속을 종료했을 때
		// 접속자 목록에서 해당 사용자 지우기
		function delUserList(){
			$.ajax({
				url : "${pageContext.request.contextPath}/bcDelUser.do",
				data : {chat_id : $('#chat_id').val()},
				type : "POST",
				success : function(data){
					$userList = $('#userWindow');
					$userList.empty();
					
					console.log(data);
					
					for(var i in data){
						var $p = $('<p>');
						
						$p.text(data[i]);
						
						$userList.append($p);
					}
				}, error : function(){
					console.log("실패");
				}
			});
		}
	</script>















