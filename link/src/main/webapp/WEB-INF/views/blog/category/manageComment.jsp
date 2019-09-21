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
<style>
	.blog_table input{
		margin-right: 3px;
	}
	
	.blog_table input:last-child{
		margin-right: 6px;
	}
	
</style>
</head>

<body>
	<%@include file="../../common/nav.jsp"%>
	<div class="container blog_beauty_con">
		<!-- 헤더 시작  -->
		<%@include file="../../common/blog/beautyheader.jsp"%>
		<!-- 헤더 끝  -->
		<div class="row">
			<!-- 왼쪽 navi 시작  -->
			<%@include file="../../common/blog/beautyleftnav3.jsp"%>
			<!-- 왼쪽 navi 끝 -->
			<div class="col-sm-10 blog_manage_right_row">
				<div class="row">
					<div class="col-sm-4">
						<span class="blog_manage_title">댓글 관리</span>
					</div>
					<div class="col-sm-12">
						<hr class="blog_manage_hr1" />
					</div>
				</div>
				<div class="row blog_manage_right_row2">
					<div class="col-sm-12">
						<ul class="nav nav-tabs blog_nav_tabs">
							<li role="presentation" class="active"><a href="#">댓글목록</a></li>
						</ul>
					</div>
					<div class="col-sm-12">
						<c:if test="${not empty blogComments}">
							<table class="table blog_table2">
								<colgroup>
									<col width="25%">
									<col width="60%">
									<col width="15%">
								</colgroup>
								<thead>
									<tr>
										<th class="">
										<div class="row">
											<div class="col-sm-7 text-right">
												작성자
											</div>
										</div>
											
										</th>
										<th class="">내용</th>
										<th class="text-center">관리</th>
									</tr>
								</thead>
								<tbody>
								<form id="neighbordeleteForm" action="manageComment.do" method="post">
									<c:forEach var="comment" items="${blogComments }">
										<tr>
											<td>
												<div class="row">
													<div class="col-sm-4 text-center" style="padding-right: 0px;">
														<input type="checkbox" name="commentNo" value="${comment.COMMENTNO }"/>
														<img style="width: 30px; height: 30px; border-radius: 50%; margin-right: 5px;" src="/link/resources/images/${comment.MAINIMG }"/>
													</div>
													<div class="col-sm-8">
														<div class="row">
															<a href="detail.do?blogNo=${comment.NO }">
																<div class="col-sm-12" style="padding-left: 0px; font-size:13px;">
																	${comment.NICKNAME }
																</div>
																<div class="col-sm-12" style="padding-left: 0px; font-size:13px;">
															 		(${comment.USERID  })
																</div>
															</a>
														</div>
													</div>
												</div>
											</td>
											<td class="">
												<a href="board.do?boardNo=${comment.BOARDNO }&blogNo=${comment.BOARDBLOGNO}&categoryNo=${comment.CATEGORYNO}&isComment=Y">
													<p>
															<strong>[글]${comment.TITLE }</strong>
													</p>
													<p>
														<span style="font-size:12px; color:gray;">${comment.CONTENTS }</span>
														<br />
														<span style="font-size:12px; color:gray;">${comment.CREATEDATE }</span>
													</p>
												</a>
											</td>
											<td class="text-center">
												<button id="singo" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-exclamation-sign"></span>신고</button>
											</td>
										</tr>
									</c:forEach>
									</form>
									<tr class="blogselectAllTd">
										<td class="blogselectAllTd">
											<div class="row">
												<div class="col-sm-12" style="position: relative; left:8px;">
													<span class="blog_selectAll_span"><input type="checkbox" id="blog_select_all"></input>&nbsp;전체선택</span>
													<button class="btn btn-default btn-sm blog_neigh_delete_btn">삭제</button>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</c:if>
						<c:if test="${empty blogComments }">
							<p class="text-center" style="padding:60px 60px 0px 60px;">
								댓글이 없습니다.
							</p>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$('tbody tr:nth-last-child(2) td:gt(0)').css('border-bottom','1px solid #ddd');
			$('#singo').click(function(){
				var result = confirm('신고하시겠습니까?');
				if(result){
					alert('신고되었습니다.');
				}
			});
			
			$('.blog_neigh_delete_btn').click(function(){
				
				var isChecked = false;
				$.each($('tbody input[type=checkbox]'), function(index,item){
					if($(this).prop('checked') == true){
						isChecked = true;
					}
				});
				
				if(isChecked == true){
					var result = confirm('댓글 삭제시 아래 댓글들도 삭제됩니다. 삭제하시겠습니까?');
					if(result){
						$('#neighbordeleteForm').submit();
					}
					
				} else{
					alert('삭제할 항목을 선택해주세요');
					return false;
				}
			});
			
			
			$('#blog_select_all').change(function() {
				$('table input[type=checkbox]').prop('checked', $(this).prop('checked'));
			});
			$('#blog_whoApply').change(function() {
				$('table input[type=checkbox]').prop('checked', $(this).prop('checked'));
			});
			
		})
	</script>
</body>
</html>
