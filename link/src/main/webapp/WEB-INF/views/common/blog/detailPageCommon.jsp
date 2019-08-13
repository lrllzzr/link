<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="blog_board_imgs">
	<c:choose>
		<c:when test="${empty blogboardsByRange10 }">
			<div class="row">
				<div class="col-sm-12 text-center" style="margin-top:100px;">
					<p>아직 작성된 글이 없습니다.</p>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<c:forEach var="board" items="${blogboardsByRange10 }">
					<div class="col-sm-3 blog_detail_right_col4">
					<div class="row">
						<div class="col-sm-12">
							<a href="/link/blog/board.do?boardNo=${board.no }&blogNo=${blog.no}&categoryNo=${category.no}"> <img
								style="width: 100%; height: 173.88px;" src="/link/resources/images/userblogimgs/${board.mainImg }" alt=""></a>
						</div>
					</div>
					<div class="row blog_detail_board_title_row">
						<div class="col-sm-12" style="height:40px; overflow:hidden;">
							<a href="/link/blog/board.do?boardNo=${board.no }&blogNo=${blog.no}&categoryNo=${category.no}"><span class="blog_detail_board_title">${board.title }</span></a>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12 blog_detail_full">
							<a href=""> <span class="blog_detail_board_date"><fmt:formatDate value="${blog.createDate }" /> </span>
							</a>
							<a href="/link/blog/board.do?boardNo=${board.no }&blogNo=${blog.no}&categoryNo=${category.no}&isComment=Y">
							<span class="glyphicon glyphicon-tag blog_detail_tag"></span>
							<span class="blog_detail_comments">댓글 ${board.commentsCount }</span>
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</div>