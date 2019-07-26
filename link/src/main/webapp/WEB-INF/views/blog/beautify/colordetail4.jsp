<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../common/blog/blogColorHeader.jsp"%>
<body>
	<div class="container blog_detail_con">
		<div class="row">
			<!--  헤더 시작         -->
			<%@include file="../../common/blog/blogheader.jsp"%>
			<!--  헤더 끝     -->
			<!--                    우측 게시판 시작-->
			<%@include file="../../common/blog/blogLayout.jsp"%>
				
				<!--                    우측 게시판 두번째 nav 시작-->
				<div class="col-sm-12 blog_detail_right_row1">
					<!--  우측 게시판 글 하나 시작-->
					<c:forEach var="board" items="${blogBoards }">
					<div class="col-sm-3 blog_detail_right_col4">
						<div class="row">
							<div class="col-sm-12">
								<a  href="/link/blog/board.do?boardNo=${board.no }&blogNo=${blog.no}&categoryNo=${category.no}">
									<img style="width:100%; height:173.88px;" src="/link/resources/images/userblogimgs/${board.mainImg }" alt="">
								</a>
							</div>
						</div>
						<div class="row blog_detail_board_title_row">
							<div class="col-sm-12">
								<span class="blog_detail_board_title">${board.title }</span>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 blog_detail_full">
								<a href=""> <span class="blog_detail_board_date"><fmt:formatDate value="${blog.createDate }"/> </span>
								</a> <a href=""> <span class="glyphicon glyphicon-tag blog_detail_tag"></span>
								<span class="blog_detail_comments">댓글 4</span>
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
				<!--  우측 공통부분 헤더 시작-->
				<%@include file="../../common/blog/blogrightForLayout4.jsp"%>
				<!--  우측 공통부분 헤더 끝-->
			</div>
			<!--                    우측 게시판 끝-->
			<!--좌측 nav 시작-->
			<%@include file="../../common/blog/blogLayoutForInfo.jsp"%>
			<!--좌측 nav 끝-->
		</div>
	</div>
	<script>
		$('a').click(function() {
			return false;
		});
	</script>
</body>
</html>