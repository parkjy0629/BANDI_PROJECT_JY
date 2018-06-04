$(function() {
	
	var bookList;
	var bookUID;
	var bookUIDList;
	var cartQUANTITY;
	
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
		oneDelBook(this);
	});
	
	// '바로구매' 버튼 기능 구현
	$('.pickBtn').on('click', function() {
		bookUID = $(this).parent().siblings().find('#bookUID').val();
//		
//		oneSelBook(this);
//		
//		console.log(bookList);
		console.log("bookUID : " + bookUID);
		
		location.href="/BANDI/order.ct?bookUID=" + bookUID;
	});
	
	// '선택상품 주문하기' 버튼 기능 구현
	$('#orderBtn').on('click', function() {
		bookUIDList = "";
		
		chkBookList();
		
		if (bookList.length != 0) {

			$('.chk').each(function(index, item) {
				if ($(this).prop("checked") == true) {
					
					bookUIDList += $(this).siblings('input').val() + ",";
					console.log("bookUID : " + $(this).siblings('input').val() + "/" + index);
					
				}
			});
			
		} else {
			
			alert("주문할 도서를 선택해주세요.");
			
		}
		console.log("bookUID : " + bookUIDList);
		
		location.href="/BANDI/order.ct?bookUID=" + bookUIDList;
		
	});
	
	// 전체 선택 체크 박스 선택 시
	$('#chkAll').on('change',function(){
		
	    if($('#chkAll').prop("checked")) {
	    	
	        $('.chk').not('#chkAll').prop("checked", true);
	        
	    } else {
	    	
	        $('.chk').prop("checked", false);
	        
	    }
	    
	    resetTotal();
		
	});
	
	// 개별 체크 박스 선택 시
	$('.chk').on('change',function(){

		if ($('#chkAll').is(":checked") == true) {
			
			$('#chkAll').prop("checked", false);
			
		}
		
		if ($('.chk').length == $('.chk:checked').length) {
			
			$('#chkAll').prop("checked", true);
			
		}
		
		resetTotal();
	});
	
	// 선택 삭제 버튼 기능 구현
	$('#selectDelBtn').on('click', function() {
		chkBookList();	
		$('#chkAll').prop("checked", false);
		
		if (bookList.length > 0) {
			$('.chk').each(function(index, item) {
				
				if ($(this).prop('checked') == true) {
		
		        	$(this).parent().parent().remove();
					
				}
				
			});
		} else {
			
			alert("삭제 할 도서를 선택해 주세요.");
			
		}
		
		delBookList();
		
	});
	
	// 전체 삭제 버튼 기능 구현
	$('#allDelBtn').on('click', function() {
		
		$('.chk').each(function(index, item) {
			
			this.checked = true;
			
		});
		
		chkBookList();
	
		$('.chk').each(function(index, item) {
	
	    	$(this).parent().parent().remove();
			
		});
		
		$('#chkAll').prop("checked", false);
		
		delBookList();
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
		
	// 하나의 도서 정보 삭제 구현
	function oneDelBook(num) {		
				
		oneSelBook(num);
		
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
	
	// '삭제' 버튼 클릭시 해당 도서 정보 담는 기능 구현
	function oneSelBook(num) {		
		bookList = [];
		
		bookUID = $(num).parent().siblings().find('#bookUID').val();
		bookQUANTITY = $(num).parent().siblings().find('.quan').val();
			
		var book = {"userUID" : user_uid, "bookUID" : bookUID, "bookQUANTITY" : bookQUANTITY};
		bookList.push(book);
	}
	
	// 1개 이상 도서 정보 삭제 구현
	function delBookList() {
		
		$.ajax({
			url : "delete.ct",
			data : {
				delList : JSON.stringify(bookList)
			},
			type : "post",
			success : function(data) {
				if (data != 0) {

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
	
	// 1개 이상 체크 된 도서 정보 리스트
	function chkBookList(){
		bookList = [];
		
		$('.chk').each(function(index, item){
			
			if( $(this).prop('checked') == true ){
				
				bookUID = $(this).siblings('input').val();
				bookQUANTITY = $(this).parent().siblings().find('.quan').val();
				
				var book = {"userUID" : user_uid, "bookUID" : bookUID, "bookQUANTITY" : bookQUANTITY};
				bookList.push(book);
								
			}
			
		});
		
		console.log(bookList);
	}
	
	// 도서 삭제 시 금액 테이블 reset
	function resetTotal() {				
		
		var total = 0;
		
		$('.chk').each(function(index, item) {
			
			if ($(this).prop('checked') == true) {
				
				total += parseInt($(this).parent().siblings().find('.bookPrice').text().replace(",", ""));
				console.log("total1 : " + total);
			} else {
				
				console.log("test");
				
			}
			
		});
		
		console.log("total : " + total);
		
		$('#total').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+ " 원");
		
		$('.totalBook').each(function(index, item) {
			
			total += $(this).value();
			
		});
		
		if (total > 30000 || total == 0) {
			
			$('#delivery').text("0 원");
			$('#orderPrice').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+ " 원");
			$('#point').text((total * point).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + " P");
			
		} else {
			
			$('#delivery').text("2,500 원");
			total += 2500;
			$('#orderPrice').text(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+ " 원");
			$('#point').text((total * point).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + " P");
			
		}
		
		if ($('.bookPrice').length == 0) {			// 읽어올 장바구니 데이터가 없을 경우
			
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