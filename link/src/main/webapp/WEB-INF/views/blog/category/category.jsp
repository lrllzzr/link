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
<link rel="stylesheet" href="/link/resources/css/blog/blogcategory.css">
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
			<%@include file="../../common/blog/beautyleftnav3.jsp"%>
			<!-- 왼쪽 navi 끝 -->
			<div class="col-sm-10 blog_manage_right_row">
				<div class="row blog_manage_right_row2">
					<div class="col-sm-4">
						<span class="blog_manage_title">카테고리 설정</span>
					</div>
					<div class="col-sm-12">
						<hr class="blog_manage_hr1" />
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<span><strong>카테고리 관리 · 설정</strong></span>
					</div>
					<div class="col-sm-12">
						<hr />
					</div>
					<div class="col-sm-12 blog_category_buttoncol">
						<button class="btn btn-sm btn-default">+ 카테고리 추가</button>
						<button class="btn btn-sm btn-default">+ 구분선 추가</button>
						<button class="btn btn-sm btn-default">- 삭제</button>
					</div>
					<div class="col-sm-4">
						<div class="blog_category_div">
							<div class="row">
								<div class="col-sm-12">
									<span>카테고리 전체보기(${categorySize })</span>
								</div>
								<div class="col-sm-12">
									<hr class="blog_category_hr1" />
								</div>
							</div>
							<div class="row">
								<c:forEach var="subCat" items="${subCategories }">
									<div class="col-sm-12 blog-detail-showlist blog_category_row1">
										<div class="row">
											<div class="col-sm-12 blog_category_cat2">
												<div class="blogSubCat">
													<span class="glyphicon glyphicon-list-alt"></span> <span class="blog-detail-showall">${subCat.title }</span>
												</div>
											</div>
											<c:forEach var="cat" items="${subCat.blogCategory}">
												<div class="col-sm-12 blog_category_cat1">
													<div class="blogCat">
														<span class="blog-detail-showall">&nbsp;┗ ${cat.title }</span>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$('.blogSubCat').each(function() {
				$(this).click(function() {
					$(this).toggleClass('blogCategoryselected');
					$(this).parents('.blog-detail-showlist').siblings('.blog-detail-showlist').find('.blogSubCat').removeClass('blogCategoryselected')
					$(this).parents('.blog-detail-showlist').siblings('.blog-detail-showlist').find('.blogCat').removeClass('blogCategoryselected');
					$(this).parent().siblings('.blog_category_cat1').find('.blogCat').removeClass('blogCategoryselected');
				})
			});

			$('.blogCat').each(function() {
				$(this).click(function() {
					$(this).toggleClass('blogCategoryselected');
					// 동료 지우기
					$(this).parent().siblings('.blog_category_cat1').find('.blogCat').removeClass('blogCategoryselected');
					// 상위 지우기
					$(this).parent().siblings('.blog_category_cat2').find('.blogSubCat').removeClass('blogCategoryselected');
					$(this).parents('.blog-detail-showlist').siblings('.blog-detail-showlist').find('.blogSubCat').removeClass('blogCategoryselected');
					$(this).parents('.blog-detail-showlist').siblings('.blog-detail-showlist').find('.blogCat').removeClass('blogCategoryselected');
				});
			});
		});
	</script>
</body>
</html>

