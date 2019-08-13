<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/link/resources/css/blog/bootstrap.css">
<link rel="stylesheet" href="/link/resources/css/blog/blog.css">
<link rel="stylesheet" href="/link/resources/css/blog/beautymain.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>
	<%@include file="../../common/nav.jsp"%>
	<div class="container blog_beauty_con">
		<!-- 헤더 시작  -->
		<%@include file="../../common/blog/beautyheader.jsp"%>
		<!-- 헤더 끝  -->
		<div class="row">
			<!-- 왼쪽 navi 시작  -->
			<%@include file="../../common/blog/beautyleftnav.jsp"%>
			<!-- 왼쪽 navi 끝 -->
			<div class="col-sm-10 blog_manage_right_row">
				<div class="row">
					<div class="col-sm-4">
						<span class="blog_manage_title">서로이웃 맺기</span>
					</div>
					<div class="col-sm-12">
						<hr class="blog_manage_hr1" />
					</div>
				</div>
				<div class="row blog_manage_right_row2">
					<div class="col-sm-12">
						<ul class="nav nav-tabs blog_nav_tabs">
							<li data-applyType="applying" role="presentation" class="active"><a href="#">받은신청</a></li>
							<li data-applyType="send" role="presentation"><a href="#">보낸신청</a></li>
						</ul>
					</div>
					<div class="col-sm-12 blog_table_div">
					<c:if test="${not empty neighbors }">
							<table class="table blog_table">
								<colgroup>
									<col width="25%">
									<col width="35%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th><input type="checkbox" id="blog_whoApply" name=""></input>신청한 사람</th>
										<th class="text-center">메시지</th>
										<th class="text-center">신청일</th>
										<th class="text-center">관리</th>
									</tr>
								</thead>
								<tbody>
								<form id="neighborForm" action="eachNeighbor.do" method="post">
									<input type="hidden" name="reply" id="hiddenInput1" />
									<c:forEach var="neighbor" items="${neighbors }">
										<tr>
											<td>
												<input type="checkbox" name="neighborBlogNo" value="${neighbor.BLOGNO }"/><a href="detail.do?blogNo=${neighbor.BLOGNO }">${neighbor.NICKNAME }(${neighbor.USERID  })</a>
											</td>
											<td>${neighbor.MESSAGE}</td>
											<td class="text-center">
												<fmt:formatDate value="${neighbor.CREATEDATE}" pattern="yyyy-mm-dd HH:mm" />
											</td>
											<td class="text-center">
												<button id="singo" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-exclamation-sign"></span>신고</button>
											</td>
										</tr>
									</c:forEach>
									</form>
									<tr class="blogselectAllTd">
										<td class="blogselectAllTd">
											<span class="blog_selectAll_span"><input type="checkbox" id="blog_select_all"></input>전체선택</span>
											<button class="btn btn-default btn-sm blog_neigh_accept_btn">수락</button>
											<button class="btn btn-default btn-sm blog_neigh_deny_btn">거절</button>
										</td>
									</tr>
								</tbody>
							</table>
						</c:if>
						<c:if test="${empty neighbors }">
							<div class="text-center" style="padding:25px;">
								<p>받은 신청이 없습니다.</p>
							</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$('li[role="presentation"]').click(function(){
				$(this).addClass('active').siblings().removeClass('active');
				var type = $(this).attr('data-applyType');
				
				$.ajax({
					type:"GET",
					url:"neighborApplyAjax.do",
					data :{
						type : type
					},
					success:function(result){
						$('.blog_table_div').empty();
						if(type == 'applying' && result.length != 0){
							var row = '<form id="neighborForm" action="eachNeighbor.do" method="post">';
							row += '<table class="table blog_table">';	
							row += '<colgroup><col width="25%"><col width="35%"><col width="20%"><col width="20%"></colgroup>';
							row += '<thead>';
							row += '	<tr>';
							row += '		<th><input type="checkbox" id="blog_whoApply" name=""></input>신청한 아이디</th>';
							row += '		<th class="text-center">메시지</th>';
							row += '		<th class="text-center">신청일</th>';
							row += '		<th class="text-center">관리</th>';
							row += '	</tr>';
							row += '</thead>';
							row += '<tbody>';
							row += '		<input type="hidden" name="reply" id="hiddenInput1" />';
							$.each(result, function(index,neighbor){
								row += '<tr>';
								row += '	<td>';
								row += '		<input type="checkbox" name="neighborBlogNo" value="'+neighbor.BLOGNO+'"/><a href="detail.do?blogNo='+neighbor.BLOGNO+'">'+neighbor.NICKNAME+'('+neighbor.USERID+')</a>';
								row += '	</td>';
								row += '	<td>'+neighbor.MESSAGE+'</td>';
								row += '	<td class="text-center">';
								row += 			neighbor.CREATEDATE;
								row += '	</td>';
								row += '	<td class="text-center">';
								row += '		<button id="singo" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-exclamation-sign"></span>신고</button>';
								row += '	</td>';
								row += '</tr>';
							})
							
							row += '<tr class="blogselectAllTd">';
							row += '	<td class="blogselectAllTd">';
							row += '	<span class="blog_selectAll_span"><input type="checkbox" id="blog_select_all"></input>전체선택</span>';
							row += '<button class="btn btn-default btn-sm blog_neigh_accept_btn">수락</button>';
							row += '<button class="btn btn-default btn-sm blog_neigh_deny_btn">거절</button>';
							row += '</td>';
							row += '</tr>';
							row += '</tbody>';
							row += '</table>';
							row += '</form>';
							$('.blog_table_div').append(row);
							
							
						} else if(result.length == 0 && type == 'applying'){
							var row = '<div class="text-center" style="padding:25px;">';
							row += '<p>받은 신청이 없습니다.</p>';
							row += '</div>';
							$('.blog_table_div').append(row);
						} else if(result.length != 0 && type == 'send'){
							var row = '<form id="sendNeighborForm" action="sendNeighbor.do" method="post">';
							row += '<table class="table blog_table">';	
							row += '<colgroup><col width="25%"><col width="35%"><col width="20%"><col width="20%"></colgroup>';
							row += '<thead>';
							row += '	<tr>';
							row += '		<th><input type="checkbox" id="blog_whoApply" name=""></input>신청한 아이디</th>';
							row += '		<th class="text-center">메시지</th>';
							row += '		<th class="text-center">신청일</th>';
							row += '		<th class="text-center">관리</th>';
							row += '	</tr>';
							row += '</thead>';
							row += '<tbody>';
							row += '		<input type="hidden" name="reply" id="hiddenInput1" />';
							$.each(result, function(index,neighbor){
								row += '<tr>';
								row += '	<td>';
								row += '		<input type="checkbox" name="neighborBlogNo" value="'+neighbor.NO+'"/><a href="detail.do?blogNo='+neighbor.NO+'">'+neighbor.NICKNAME+'('+neighbor.USERID+')</a>';
								row += '	</td>';
								row += '	<td class="">'+neighbor.MESSAGE+'</td>';
								row += '	<td class="text-center">';
								row += 			neighbor.CREATEDATE;
								row += '	</td>';
								row += '	<td class="text-center">';
								row += '		<button id="singo" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-exclamation-sign"></span>신고</button>';
								row += '	</td>';
								row += '</tr>';
							})
							row += '<tr class="blogselectAllTd">';
							row += '	<td class="blogselectAllTd">';
							row += '	<span class="blog_selectAll_span"><input type="checkbox" id="blog_select_all"></input>전체선택</span>';
							row += '<button class="btn btn-default btn-sm blog_neigh_delete_btn">삭제</button>';
							row += '</td>';
							row += '</tr>';
							row += '</tbody>';
							row += '</table>';
							row += '</form>';
							$('.blog_table_div').append(row);
							
						} else if(result.length == 0 && type == 'send'){
							var row = '<div class="text-center" style="padding:25px;">';
							row += '<p>보낸 신청이 없습니다.</p>';
							row += '</div>';
							$('.blog_table_div').append(row);
						}
					}
				});
			});
			$('body').on('click','.blog_neigh_delete_btn',function(){
				var isChecked = false;
				$.each($('tbody input[type=checkbox]'), function(index,item){
					if($(this).prop('checked') == true){
						isChecked = true;
					}
				});
				
				if(isChecked == true){
					var result2 = confirm('삭제하시겠습니까?');
					if(result2){
						$('#sendNeighborForm').submit();
					}
				} else{
					alert('삭제할 항목을 선택해주세요');
					return false;
				}
			});
			$('#singo').click(function(){
				var result = confirm('신고하시겠습니까?');
				if(result){
					alert('신고되었습니다.');
				}
			});
			$('body').on('click','.blog_neigh_accept_btn',function(){
				var isChecked = false;
				$.each($('tbody input[type=checkbox]'), function(index,item){
					if($(this).prop('checked') == true){
						isChecked = true;
					}
				});
				
				if(isChecked == true){
					$('#hiddenInput1').val('accept');
					neighborForm.submit();
				} else{
					alert('수락할 항목을 선택해주세요');
					return false;
				}
			});
			
			$('body').on('click','.blog_neigh_deny_btn',function(){
				var isChecked = false;
				$.each($('tbody input[type=checkbox]'), function(){
					if($(this).prop('checked') == true){
						isChecked = true;
					}
				});
				if(isChecked == true){
					$('#hiddenInput1').val('deny');
					neighborForm.submit();
				} else{
					alert('거절할 항목을 선택해주세요');
					return false;
				}
				
			});
			
			$('body').on('change','#blog_select_all',function() {
				$('table input[type=checkbox]').prop('checked', $(this).prop('checked'));
			});
			
			$('body').on('change','#blog_whoApply',function() {
				$('table input[type=checkbox]').prop('checked', $(this).prop('checked'));
			});
		})
	</script>
</body>
</html>

