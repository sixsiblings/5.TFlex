<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test페이지</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

</head>
<body>
	<script>

		$(function(){
			
			var IMP = window.IMP;
			IMP.init('imp64227396'); // 부여받은 가맹점 식별코드를 사용
			
			var msg;
			
			IMP.request_pay({
				pg: 'kakaopay',
				/*
				'kakao':카카오페이,
				'html5_inicis':이니시스(웹표준결제)
				'nice':나이스페이
				'jtnet':제이티넷
				'uplus':LG유플러스
				'danal':다날
				'payco':페이코
				'syrup':시럽페이
				'paypal':페이팔
				*/
				pay_method: 'card',
				/*
				'samsung':삼성페이,
				'card':신용카드,
				'trans':실시간계좌이체,
				'vbank':가상계좌,
				'phone':휴대폰소액결제
				*/	
				merchant_uid: 'TFlex_' + new Date().getTime(),
				/*
				merchant_uid에 경우
				https://docs.iamport.kr/implementation/payment
				위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
				참고하세요.
				나중에 포스팅 해볼게요.
				*/
				name: '${param.tttitle}', // 결제창에서 보여질 이름
				amount: '${param.ttprice}', // 가격
				buyer_email: '${member.email}',
				buyer_name: '${member.userName}',
				// m_redirect_url: 'https://www.yourdomain.com/payments/complete'
				/*
				모바일 결제시,
				결제가 끝나고 랜딩되는 URL을 지정
				(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
				*/


				
			}, function(rsp){
				
				console.log(rsp);
				if (rsp.success) {
					
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					
					alert('${param.ttNo}');
					
					location.href = "${pageContext.request.contextPath}/PayInsert.pa"
								  + "?US_NO=" + '${param.seller}' + "&ttNo=" + '${param.ttNo}'
								  + "&TR_NO=" + rsp.merchant_uid + "&UB_NO=" + '${member.uNo}';
					
				} else {
					
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					
					location.href = "${pageContext.request.contextPath}/tselectList.bo";
				}
				
				alert(msg);
				
			});
		});
	</script>

</body>
</html>










