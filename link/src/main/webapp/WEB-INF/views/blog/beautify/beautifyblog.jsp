<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/link/resources/css/bootstrap.css">
<link rel="stylesheet" href="/link/resources/css/blog.css">
<link rel="stylesheet" href="/link/resources/css/blog/beautymain.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
	height: 500px;
}

.blog_beauty_col1 span {
	color: yellow;
}

#layout1, #layout2, #layout3, #layout4 {
	cursor: pointer;
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
						<div class="col-sm-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="blog_beauty_col1">
										<div class="col-sm-12">
											<div class="text-center">
												<span>마우스로 드래그해서 원하는 위치에 놓으세요.</span>
											</div>
										</div>
										<div class="col-sm-3">하이하이</div>
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

</body>
</html>

