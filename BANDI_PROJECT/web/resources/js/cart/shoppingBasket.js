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
		thisBookList(this);
		$(this).parent().parent().remove();
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
	
	function thisBookList(num) {
		bookList = [];
		
		var bookUID = $(num).parent().siblings().find('#bookUID').val();
		var bookCnt = $(num).parent().siblings().find('.quan').val();
		console.log(bookUID + " : " + bookCnt);
		
		var book = {"BOOKUID" : bookUID, "COUNT" : bookCnt};
		bookList.push(book);
		
		location.href="/BANDI/delete.ct?delList=" + book;
		
		console.log(bookList);
	}
	
});