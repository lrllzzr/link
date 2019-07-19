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
	<!-- 네비게이션 시작  -->
	<%@include file="../../common/nav.jsp"%>
	<!-- 네비게이션 끝  -->
	<div class="container blog_detail_con">
		<div class="row">
			<!--  헤더 시작         -->
			<%@include file="../../common/blog/blogheader.jsp"%>
			<!--  헤더 끝     -->
			<!--좌측 nav 시작-->
			<%@include file="../../common/blog/blogleft.jsp"%>
			<!--좌측 nav 끝-->

			<!--                    우측 게시판 시작-->
			<div class="col-sm-9">
				<!--  우측 공통부분 헤더 시작-->
				<%@include file="../../common/blog/blogright.jsp"%>
				<!--  우측 공통부분 헤더 끝-->
				<!--                    우측 게시판 두번째 nav 시작-->
				<div class="col-sm-12 blog_detail_right_row1">
					<!--  우측 게시판 글 하나 시작-->
					<c:forEach begin="1" end="5">
					<div class="col-sm-4 blog_detail_right_col4">
						<div class="row">
							<div class="col-sm-12">
								<img src="/link/resources/images/detail_gogi1.jpg" alt="">
							</div>
						</div>
						<div class="row blog_detail_board_title_row">
							<div class="col-sm-12 ">
								<span class="blog_detail_board_title">서면 무한리필 착한돼지 짱짱추천! 짱짱 맛있어요!</span>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 blog_detail_full">
								<a href=""> <span class="blog_detail_board_date">2017.3.3</span>
								</a> <a href=""> <span class="glyphicon glyphicon-tag blog_detail_tag"></span> <span class="blog_detail_comments">댓글 4</span>
								</a>
							</div>
						</div>
					</div>
					</c:forEach>
					<!--  우측 게시판 글 하나 끝-->

					<!--우측 두번째 페이지네이션 시작-->
					<div class="row">
						<div class="col-sm-12 text-center">
							<nav>
								<ul class="pagination">
									<li><a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li><a class="blog_detail_page_1_selected" href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
									<li><a href="#">7</a></li>
									<li><a href="#">8</a></li>
									<li><a href="#">9</a></li>
									<li><a href="#">10</a></li>
									<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<!--우측 두번째 페이지네이션 시작-->
				</div>
				<!--                    우측 게시판 두번째 nav 끝-->
			</div>
			<!--                    우측 게시판 끝-->
		</div>
	</div>

</body>
</html>