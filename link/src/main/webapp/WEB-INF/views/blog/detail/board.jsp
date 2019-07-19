<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/link/resources/css/blog.css">
<link rel="stylesheet" href="/link/resources/css/blogdetail.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>
	<%@include file="../../common/nav.jsp"%>
	<div class="container blog_detail_con">
		<div class="row">
			<!--  헤더 시작         -->
			<%@include file="../../common/blog/blogheader.jsp"%>
			<!--  헤더 끝     -->
			<!--좌측 nav 시작-->
			<%@include file="../../common/blog/blogleft.jsp"%>
			<!--좌측 nav 끝-->

			<div class="col-sm-9">
				<!--  우측 공통부분 헤더 시작-->
				<%@include file="../../common/blog/blogright.jsp"%>
				<!--  우측 공통부분 헤더 끝-->
				<!--                    우측 게시판 두번째 nav 시작-->
				<div class="col-sm-12 blog_detail_right_row1">
					<!--  우측 게시판 글 하나 시작-->
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-12 text-center blog_detail_main_board_contents">
							<c:forEach begin="1" end="3">
								<p class="blog_detail_board_title">서면 무한리필 착한돼지 짱짱추천! 짱짱 맛있어요!</p>
								<img src="/link/resources/images/detail_gogi1.jpg" alt="">
							</c:forEach>
							</div>
						</div>
					</div>
					<!--  우측 게시판 글 하나 끝-->
				</div>
				<!-- 우측 게시판 두번째 nav 끝-->
			</div>
		</div>

	</div>

</body>
</html>