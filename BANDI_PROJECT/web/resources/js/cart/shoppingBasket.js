$(function() {
	
	var bookList;
	
	// 처음 접속 시 체크박스 모두 선택
	$('input:checkbox').each(function() {

		if (($('.chk').length) > 0) {
			
			if ($('#chkAll').prop("checked") != true) {

				$('#chkAll').prop("checked", true);
				
			}
			
			this.checked = true;
			
		}
		
	});
	
	// 테이블 안에 삭제 버튼 기능 구현
	$('.delBtn').on('click',function(){
		delBookList(this);
	});
	
	// '바로구매' 버튼 기능 구현
	$('.pickBtn').on('click', function() {
		location.href="/BANDI/order.ct";
	});
	
	// 전체 선택 체크 박스 선택 시
	$('#chkAll').on('change',function(){

		chkBookList();
		
	    if($('#chkAll').prop("checked")) {
	    	
	        $('.chk').not('#chkAll').prop("checked", true);
	        
	    } else {
	    	
	        $('.chk').prop("checked", false);
	        
	    }
		
	});
	
	// 개별 체크 박스 선택 시
	$('.chk').on('change',function(){

		if ($('#chkAll').is(":checked") == true) {
			
			$('#chkAll').prop("checked", false);
			
		}
		
		chkBookList();
	});
	
	// 선택 삭제 버튼 기능 구현
	$('#selectDelBtn').on('click', function() {
		chkBookList();	
		
		if (bookList.length > 0) {
			$('.chk').each(function(index, item) {
				
				if ($(this).prop('checked') == true) {
		
		        	$(this).parent().parent().remove();
					
				}
				
			});
		} else {
			
			alert("삭제 할 도서를 선택해 주세요.");
			
		}
		
		$('#chkAll').prop("checked", false);
	});
	
	// 전체 삭제 버튼 기능 구현
	$('#allDelBtn').on('click', function() {
		chkBookList();
	
		$('.chk').each(function(index, item) {
	
	    	$(this).parent().parent().remove();
			
		});
		
		$('#chkAll').prop("checked", false);
	});
	
	// 수량 변경 시 데이터 수정 기능 구현
	$(".quan").bind('keyup mouseup', function () {

		var total = 0;
		
		if ($(".quan").val() > 100) {
			
			alert("주문 수량을 확인해주세요.(100 이하만 가능)");
			$(".quan").val(1);
			
		}
		
		console.log(parseInt($(this).parent().siblings().find('.onePrice').text().replace(",", "")));
		console.log($(this).val());
		
		total = (parseInt($(this).parent().siblings().find('.onePrice').text().replace(",", "")) * parseInt($(this).val()));
		
		$(this).parent().siblings().find('.bookPrice').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
		
		resetTotal();
	});
	
	// 체크 된 도서 정보 리스트
	function chkBookList(){
		bookList = [];
		
		$('.chk').each(function(index, item){
			
			if( $(this).prop('checked') == true ){
				
				var bookUID = $(this).siblings('input').val();
				var bookCnt = $(this).parent().siblings().find('.quan').val();
				console.log(bookUID + " : " + bookCnt);
				
				var book = {"BOOKUID" : bookUID, "COUNT" : bookCnt};
				bookList.push(book);
				
			}
			
		});
		
		console.log(bookList);
	}
	
	// 하나의 도서 정보 삭제 구현
	function delBookList(num) {				
		bookList = [];
		
		var bookUID = $(num).parent().siblings().find('#bookUID').val();
		
		var book = {"userUID" : user_uid, "bookUID" : bookUID};
		bookList.push(book);
		
		$.ajax({
			url : "delete.ct",
			data : {
				delList : JSON.stringify(bookList)
			},
			type : "post",
			success : function(data) {
				if (data != 0) {

					$(num).parent().parent().remove();
					
					resetTotal();
					
				} else {

					alert("도서 삭제 오류");
					
				}
			}, error : function(data) {
				alert("도서 삭제 오류");
			}
		});
		
		console.log(bookList);
	}
	
	function resetTotal() {				// 도서 삭제 시 금액 테이블 reset
		
		var total = 0;
		
		$('.bookPrice').each(function(index, item){
			
			total += parseInt($(this).text().replace(",", ""));
			
		});
		
		$('#total').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+ " 원");
		
		$('.totalBook').each(function(index, item) {
			
			total += $(this).value();
			
		});
		
		
		if (total > 30000 || total == 0) {
			
			$('#delivery').text("0 원");
			$('#orderPrice').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+ " 원");
			$('#point').text((total * point).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "P");
			
		} else {
			
			$('#delivery').text("2,500 원");
			total += 2500;
			$('#orderPrice').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+ " 원");
			$('#point').text((total * point).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "P");
			
		}
		
		if ($('.bookPrice').length == 0) {
			
			var $tableBody = $('#bookTb tbody');
			var $tr = $('<tr>');
			var $td = $('<td colspan=6>');
			var $h3 = $('<h3>').text("장바구니에 담긴 상품이 없습니다.");
			
			$td.append($h3);
			$tr.append($td);
			$tableBody.append($tr);
			
		}
		
	}
	
});