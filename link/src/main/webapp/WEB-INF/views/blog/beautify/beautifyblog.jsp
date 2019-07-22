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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
.blog_layout_row1 {
	padding: 20px;
}

.blog_layout_row1 .col-sm-2 {
	padding: 10px;
	margin: 0px 70px 0px 0px;
	border: 1px solid gray;
	background: linear-gradient(to right, rgb(240, 240, 240),
		rgb(237, 237, 237));
}

.layout_div {
	padding: 20px;
}

.layout_div2>div {
	background-color: white;
}

.layout_row1 {
	width: 100%;
	height: 20px;
	border: 1px solid gray;
	background: linear-gradient(to top, white, lightgray);
}

.layout_row2 {
	width: 100%;
	padding: 0px 10%;
	margin-top: 2px;
	height: 15px;
	border: 1px solid gray;
	background: linear-gradient(to bottom, #666666, lightgray);
}

.layout_row3 {
	float: left;
	width: 20%;
	margin-top: 3px;
	height: 90px;
	border: 1px solid gray;
	background-color: white;
}

.layout_row4 {
	float: left;
	width: 75%;
	margin-left: 5%;
	margin-top: 3px;
	height: 90px;
	border: 1px solid gray;
	background-color: white;
}

.layout_row5 {
	float: left;
	width: 75%;
	margin-top: 3px;
	height: 90px;
	border: 1px solid gray;
}

.layout_row6 {
	float: left;
	width: 20%;
	margin-top: 3px;
	margin-left: 5%;
	height: 90px;
	border: 1px solid gray;
}

.layout_row7 {
	float: left;
	width: 15%;
	height: 130px;
	border: 1px solid gray;
	background: linear-gradient(to top, white, lightgray);
}

.layout_row8 {
	float: left;
	width: 80%;
	margin-left: 5%;
	height: 15px;
	border: 1px solid gray;
	background: linear-gradient(to bottom, #666666, lightgray);
}

.layout_row9 {
	float: left;
	width: 50%;
	margin-top: 3px;
	height: 112px;
	margin-left: 5%;
	border: 1px solid gray;
	background-color: white;
}

.layout_row10 {
	float: left;
	width: 25%;
	margin-top: 3px;
	margin-left: 5%;
	height: 112px;
	border: 1px solid gray;
	background-color: white;
}

.blog_beauty_col1 {
	background-color: #8b9094;
	height: 800px;
	margin-bottom: 20px;
}

.beauty_yellow {
	color: yellow;
}

.beautify_form {
	margin-top: 15px;
}

#layout1, #layout2, #layout3, #layout4 {
	cursor: pointer;
}

.beautify_menu1 {
	border-radius: 7px;
	color: gray;
	font-size: 12px;
	background-color: #f5f5f5;
	cursor: pointer;
	margin: 5px 0px;
	padding: 10px 15px;
	text-align: center;
}

.beautify_menu3 {
	border-radius: 7px;
	color: gray;
	font-size: 12px;
	background-color: #f5f5f5;
	margin: 5px 0px;
	padding: 50px;
	text-align: center;
	height: 600px;
}

.beautify_menu2 {
	border-radius: 7px;
	color: gray;
	background-color: #f5f5f5;
	cursor: pointer;
	padding: 7px 15px;
	margin-bottom: 5px;
}

.blog_beauty_con {
	margin-bottom: 60px;
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
			<%@include file="../../common/blog/beautyleftnav2.jsp"%>
			<!-- 왼쪽 navi 끝 -->
			<form action="">
				<div class="col-sm-10 blog_manage_right_row">
					<div class="row">
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-4">
									<span class="blog_manage_title">레이아웃 & 위젯 설정</span>
								</div>
								<div class="col-sm-12">
									<hr class="blog_manage_hr1" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="row blog_layout_row1">
										<div class="col-sm-2" id="layout1">
											<div class="layout_div2">
												<div class="layout_row1"></div>
												<div class="layout_row2"></div>
												<div class="layout_row3"></div>
												<div class="layout_row4"></div>
											</div>
										</div>
										<div class="col-sm-2" id="layout2">
											<div class="layout_div2">
												<div class="layout_row1"></div>
												<div class="layout_row2"></div>
												<div class="layout_row5"></div>
												<div class="layout_row6"></div>
											</div>
										</div>
										<div class="col-sm-2" id="layout3">
											<div class="layout_div2">
												<div class="layout_row7"></div>
												<div class="layout_row8"></div>
												<div class="layout_row9"></div>
												<div class="layout_row10"></div>
											</div>
										</div>
										<div class="col-sm-2" id="layout4">
											<div class="layout_div2">
												<div class="layout_row7"></div>
												<div class="layout_row8"></div>
												<div class="layout_row10"></div>
												<div class="layout_row9"></div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
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
															<div class="col-sm-12 beautify_menu1">프로필영역</div>
															<div class="col-sm-12 beautify_menu1">카테고리</div>
															<div class="col-sm-12 beautify_menu1">블로그정보</div>
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
										<button type="submit" class="btn blog_beuaty_submit_button">적용</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-2"></div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script>
		$(function() {
			$("#box").sortable();
			$("#box").disableSelection();
		});
	</script>
</body>
</html>

