<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../common/blog/blogColorHeader.jsp"%>
<body>
	<!-- 네비게이션 시작  -->
	<%@include file="../../common/nav.jsp"%>
	<!-- 네비게이션 끝  -->
	<div class="container blog_detail_con">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="row text-center">
					<div class="col-sm-12 blog_add_neighbor_row_1"><strong>${user.nickName }</strong>님에게 이웃을 신청합니다.</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<hr />
					</div>
				</div>
				<form id="neighborApplyingForm" action="addNeighbor.do" method="post">
				<input type="hidden" name="neighborBlogNo" value="${blog.no }" />
				<div class="row">
					<div class="col-sm-12 blog_neighbor_apply_div1 text-center">
						<span class="blog_request_div1">이웃을 신청합니다.</span>
						<span class="blog_request_div2">서로이웃을 신청합니다.</span>
						<!-- hidden value each or oneway  -->
						<input id="blog_neighborType" type="hidden" name="eachNeighbor" value="" />
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 form-group">
					<label for="">서로이웃 메세지 보내기</label>
						<textarea id="blog_neighbor_textarea" class="form-control" name="neighborMessage" id="" cols="30" rows="5">우리 서로이웃 해요~</textarea>
					</div>
				</div>
				</form>
				<div class="row">
					<div class="col-sm-12 text-center">
						<button type="button" class="btn btn-sm blog-btn-apply1">신청</button>
						<button type="button" class="btn btn-default btn-sm blog-btn-apply2">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$('#blog_neighbor_textarea').hide();
			$('.blog_request_div1, .blog_request_div2').click(function() {
				$(this).addClass('blog_neighbor_selected1').siblings().removeClass('blog_neighbor_selected1');
			});
			
			$('.blog_request_div1').click(function() {
				$('#blog_neighbor_textarea').val('우리 서로이웃 해요~').hide();
				$('#blog_neighborType').val('oneway');
			});
			$('.blog_request_div2').click(function() {
				$('#blog_neighbor_textarea').show();
				$('#blog_neighborType').val('each');
			});
			
			$('.blog-btn-apply1').click(function(){
				var result = confirm('신청을 보내시겠습니까?');
				if(result){
					$('#neighborApplyingForm').submit();
				}
			});
			$('.blog-btn-apply2').click(function(){
				var result = confirm('취소하시겠습니까? 내용은 저장되지 않습니다.');
				if(result){
					history.back();
				}
			});
		})
	</script>
</body>
</html>