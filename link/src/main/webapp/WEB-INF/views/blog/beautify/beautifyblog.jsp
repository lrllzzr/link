<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/link/resources/css/bootstrap.css">
<link rel="stylesheet" href="/link/resources/css/blog/blog.css">
<link rel="stylesheet" href="/link/resources/css/blog/beautymain.css">
<link rel="stylesheet" href="/link/resources/css/blog/beautifyblog.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<body>
	<%@include file="../../common/nav.jsp"%>
	<div class="container blog_beauty_con">
		<!-- 헤더 시작  -->
		<%@include file="../../common/blog/beautyheader.jsp"%>
		<!-- 헤더 끝  -->
		<div class="row">
			<!-- 왼쪽 navi 시작  -->
			<%@include file="../../common/blog/beautyleftnav2.jsp"%>
			<!-- 왼쪽 navi 끝 -->
			<!-- <form action=""> -->
			<div class="col-sm-10 blog_manage_right_row">
				<%@include file="../../common/blog/commonFourLayout.jsp"%>
				<div class="row">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-12">
								<div class="blog_beauty_col1">
									<div class="col-sm-12">
										<div class="col-sm-12 beautify_form">
											<div class="text-center">
												<span class="beauty_yellow" style="font-variant: small-caps; font-weight: bold;">마우스로 드래그해서 원하는 위치에 놓으세요.</span>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-2 col-sm-offset-9 text-center">
												<div class="beautify_menu1">네이버메뉴</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-10 col-sm-offset-1 text-center">
												<div class="beautify_menu2">메뉴형태</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-2 col-sm-offset-1">
												<div class="row">
													<div class="col-sm-12" id="box">
														<div id="profile" class="col-sm-12 beautify_menu1">프로필영역</div>
														<div id="category" class="col-sm-12 beautify_menu1">카테고리</div>
														<div id="bloginfo" class="col-sm-12 beautify_menu1">블로그정보</div>
													</div>
												</div>
											</div>
											<div class="col-sm-8">
												<div class="beautify_menu3">글 영역(넓게)</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 text-center blog_beauty_bottombtndiv">
									<button id="blog_beauty_apply_button" type="submit" class="btn blog_beuaty_submit_button">적용</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</div>
			<!-- </form> -->
		</div>
	</div>
	<script>
		$(function() {
			$("#box").sortable();
			$("#box").disableSelection();

			$('#blog_beauty_apply_button').click(function() {
				var firstCol = $('#box div:nth-child(1)').attr('id');
				var secondCol = $('#box div:nth-child(2)').attr('id');
				var thirdCol = $('#box div:nth-child(3)').attr('id');
				location.href = 'beautifyblog.do?firstCol=' + firstCol + '&secondCol=' + secondCol + '&thirdCol=' + thirdCol;
			})
		});
	</script>
</body>
</html>

