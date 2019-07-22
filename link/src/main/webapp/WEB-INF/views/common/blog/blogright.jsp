<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="col-sm-12 blog_detail_right_row">
	<div class="col-sm-4">
		<strong style="color: #2f3030;">맛보기</strong> 64개의 글
	</div>
	<div class="col-sm-8 text-right">
		<span id="blog_right_open">목록 닫기</span>
	</div>
	<div class="row" id="blog_row1">
	<div class="col-sm-12">
		<div class="row">
			<div class="col-sm-12 blog_detail_right_col_1">
				<div class="col-sm-3">
					<span>글 제목</span>
				</div>
				<div class="col-sm-9 text-right">작성일</div>
			</div>
			<div class="col-sm-12 blog_detail_hr_1">
				<hr class="blog_detail_hr_1">
			</div>
		</div>
		<!--   글 제목 시작-->
		<c:forEach var="board" items="${boards }">
			<div class="row">
				<div class="col-sm-12 blog_detail_right_row_1">
					<div class="col-sm-9">
						<span><a href="/link/blog/board.do?boardNo=${board.no }">${board.title }</a></span>
					</div>
					<div class="col-sm-3 text-right">
						<span class="blog_detail_board_create"><fmt:formatDate value="${board.createDate }"/></span>
					</div>
					<div class="col-sm-12 blog_detail-hr-div">
						<hr class="blog_detail_hr_2" />
					</div>
				</div>
			</div>
		</c:forEach>
		<!--                   글 제목 끝-->

		<!--                    페이지네이션 시작-->
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
		<!--                    페이지네이션 끝-->
	</div>
	</div>
</div>
<script>
	$(function() {
		$('#blog_right_open').click(function() {
			$('#blog_row1').toggle();
			var status = $(this).html();
			if(status == '목록 열기'){
				$(this).html('목록 닫기');
			} else{
				$(this).html('목록 열기');
			}
		})
	})
</script>