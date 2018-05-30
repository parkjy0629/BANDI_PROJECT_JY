$(function() {
	
	var bookList = [];
	
	// 테이블 안에 삭제 버튼 기능 구현
	$('.delBtn').on('click',function(){
		$(this).parent().parent().remove();
	});
	
	// '바로구매' 버튼 기능 구현
	$('.pickBtn').on('click', function() {
		location.href=order.ct;
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
			console.log("chk test");
			$('#chkAll').prop("checked", false);
			
		}
		
		chkBookList();
	});
	
	// 선택 삭제 버튼 기능 구현
	$('#selectDelBtn').on('click', function() {
		chkBookList();	
		
		$('.chk').each(function(index, item) {
			
			if ($(this).prop('checked') == true) {
	
	        	$(this).parent().parent().remove();
				
			}
			
		});
		
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
				
				var isbn = $(this).siblings('input').val();
				var bookCnt = $(this).parent().siblings().find('.quan').val();
				console.log(isbn + " : " + bookCnt);
				
				var book = {"ISBN" : isbn, "count" : bookCnt};
				bookList.push(book);
				
			}
			
		});
		console.log(bookList);
	}
	
});