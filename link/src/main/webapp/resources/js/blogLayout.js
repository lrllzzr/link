$(function() {
			var layNum = $('#layoutApplyButton').attr('data-layNum');
			console.log(layNum);
			$("#box").sortable({
				beforeStop : function(event, ui) {
					setTimeout(function() {
						var firstCol = $('#box div:nth-child(1)').attr('id');
						var secondCol = $('#box div:nth-child(2)').attr('id');
						var thirdCol = $('#box div:nth-child(3)').attr('id');
						$.ajax({
							type : "GET",
							url : 'beautifyblogApply.do?firstCol=' + firstCol + '&secondCol=' + secondCol + '&thirdCol=' + thirdCol,
							success : function() {
								$('.modal-body').html('<iframe src="/link/blog/colordetail'+layNum+'.do" width="100%" height="1000px;"></iframe>');
							}
						})
					}, 100);
				}
			});
			$("#box").disableSelection();
			$('#layoutApplyButton').click(function(){
				var result=confirm('적용하시겠습니까?')
				if(result){
					location.href="layoutApply.do?layNum="+layNum;
				}
					
			});
});