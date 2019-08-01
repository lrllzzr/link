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
							<li role="presentation" class="active"><a href="#">받은신청</a></li>
							<li role="presentation"><a href="#">보낸신청</a></li>
							<li role="presentation"><a href="#">안내메시지</a></li>
						</ul>
					</div>
					<div class="col-sm-12">
						<table class="table blog_table">
						<colgroup>
							<col width="25%">
							<col width="35%">
							<col width="20%">
							<col width="20%">
						</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox"></input>신청한 사람</th>
									<th class="text-center">메시지</th>
									<th class="text-center">신청일</th>
									<th class="text-center">관리</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox"></input>호야(asdkjl)</td>
									<td>이웃신청합니다</td>
									<td class="text-center">19.07.01</td>
									<td class="text-center">
										<button class="btn btn-default btn-sm">수락</button>
										<button class="btn btn-default btn-sm">거절</button>
									</td>
								</tr>

								<tr class="blogselectAllTd">
									<td class="blogselectAllTd">
										<span class="blog_selectAll_span"><input type="checkbox"></input>전체선택</span>
										<button class="btn btn-default btn-sm">수락</button>
										<button class="btn btn-default btn-sm">거절</button>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$('.blog_beuaty_submit_button').click(function() {
				if ($('.blog_manage_input').val() == "") {
					alert('블로그명은 필수입력 사항입니다.');
					return false;
				}
				if ($('#blogNickName').val() == "") {
					alert('별명을 입력해야 합니다.');
					return false;
				}
				if ($('#blogDescription').val() == "") {
					alert('소개글을 적어주세요.');
					return false;
				}
				var result = confirm('적용하시겠습니까?');
				if (result) {
					$('#updateBlogForm').submit();
				}
			})
			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						$('#blogImg').attr('src', e.target.result);
					}

					reader.readAsDataURL(input.files[0]);
				}
			}

			$("#mainImg").change(function() {
				readURL(this);
			});
		})
	</script>
</body>
</html>

