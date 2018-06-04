$(function() {

	// 장바구니로 돌아가는 기능
	$('#returnBtn').on('click', function() {
		
		location.href="/BANDI/cart.ct";
		
	});
	
	// 주소 찾기 기능
	$('#addrSearch').bind('click', function() {
		var width = 500;
	    var height = 500;
	
	    console.log("test");
	
	    new daum.Postcode({
	        oncomplete: function(data) {
	           	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var fullAddr = ''; // 최종 주소 변수
	            var extraAddr = ''; // 조합형 주소 변수
	
	            console.log("test2");
	
	            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                fullAddr = data.roadAddress;
	
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                fullAddr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	            if(data.userSelectedType === 'R'){
	                //법정동명이 있을 경우 추가한다.
	                if(data.bname !== ''){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있을 경우 추가한다.
	                if(data.buildingName !== ''){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	            }
	
	            console.log(fullAddr);
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            $('#stamp').val(data.zonecode); //5자리 새우편번호 사용
	                
	            $('#addr1').val(fullAddr);
	
	            // 커서를 상세주소 필드로 이동한다.
	            $('#addr2').focus();
	        }
	       
	    }).open({
	        left: (window.screen.width / 2) - (width / 2),
	        top: (window.screen.height / 2) - (height / 2)
	    });
	});
		
});
