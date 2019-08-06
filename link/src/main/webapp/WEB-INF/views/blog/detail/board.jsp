<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../common/blog/blogColorHeader.jsp"%>

<body>
	<%@include file="../../common/nav.jsp"%>
	<div class="container blog_detail_con">
		<div class="row">
			<!--  헤더 시작         -->
			<%@include file="../../common/blog/blogheader.jsp"%>
			<!--  헤더 끝     -->
			<!--좌측 nav 시작-->
			<%@include file="../../common/blog/blogLayoutForInfo.jsp"%>
			<!--좌측 nav 끝-->
			<%@include file="../../common/blog/blogLayout.jsp"%>
			<!--  우측 공통부분 헤더 시작-->
			<%@include file="../../common/blog/blogright.jsp"%>
			<!--  우측 공통부분 헤더 끝-->
			<!--                    우측 게시판 두번째 nav 시작-->
			<div class="col-sm-12 blog_detail_right_row1">
				<!--  우측 게시판 글 하나 시작-->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-12 blog_detail_main_board_contents">
							<div class="page-header">
								<h2>${board.title }</h2>
								<div class="row">
									<div class="col-sm-12 text-right">
										<span>작성일: ${board.createDate }</span>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-12">${board.contents }</div>
							</div>

						</div>
					</div>
				</div>
				<!--  우측 게시판 글 하나 끝-->
			</div>
			<!-- 우측 게시판 두번째 nav 끝-->
			<div class="row">
				<div class="col-sm-12 blog_board_comment_box1">
					<span class="blog_board_comment1"><span class="glyphicon glyphicon-heart heart1" style="color: ${isLiked eq 'Y' ? 'red;' : ''}"></span>
					<span class="blog_likes1" >
						<span data-isLiked="${isLiked }" data-boardNo = "${board.no }" data-categoryNo = "${board.categoryNo }" data-blogNo = "${param.blogNo }" id="blog_addBoardLike">공감 ${boardLikes}</span>
					</span>
					 <span id="blog_menu_down1" class="glyphicon glyphicon-menu-down down1"
					></span></span> <span class="blog_board_comment2"><span class="glyphicon glyphicon-pencil heart1"></span> <span class="blog_likes1">댓글(6)</span>
						<span class="glyphicon glyphicon-menu-down down1"></span></span>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-12 blog_likes_box1" style="border: 1px solid lightgray; padding: 15px;">
						<div class="row" style="margin-bottom: 20px;">
							<div class="col-sm-12">
								<span style="font-size: 15px;">이 글에 공감한 블로거</span>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6" style="margin-bottom: 20px;">
								<div class="row">
									<c:forEach var="like" items="${blogBoardLikes }">
										<div class="col-sm-2">
											<img class="blog-row-2-profile-img" src="/link/resources/images/${like.MAINIMG }" alt="" /> <span></span>
										</div>
										<div class="col-sm-6">
											<div class="row">
												<div class="col-sm-12">${like.BLOGTITLE }</div>
											</div>
											<div class="row">
												<div class="col-sm-12">${like.BLOGDESCRIPTION }</div>
											</div>
										</div>
										<c:if test="${not empty LOGIN_USER }">
											<div class="col-sm-4 text-center">
												<span style="border: 1px solid lightgray; padding: 5px; position: relative; top: 10px;"><a
													href="addNeighbor.do?blogNo=${like.BLOGNO }"
												>+이웃추가</a></span>
											</div>
										</c:if>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script>
		$(function(){
			$('.blog_likes_box1').hide();
			$('#blog_menu_down1').click(function(){
				$('.blog_likes_box1').toggle();
			})
			$('#blog_addBoardLike').click(function(){
				if('${LOGIN_USER}'== ""){
					var result = confirm('로그인이 필요한 서비스입니다. 로그인 페이지로 이동하시겠습니까?');
					var host = location.host;
					var returnUrl = location.pathname;
					var queryString = location.search.substr(1).replace(/&/g, ',');
					
					if(result){
						location.href = '/link/loginform.do?returnUrl='+returnUrl+'&queryString='+queryString;
						return false;
					}
					return false;
				}
				var boardNo = $(this).attr('data-boardNo');
				var categoryNo = $(this).attr('data-categoryNo');
				var blogNo = $(this).attr('data-blogNo');
				var isLiked = $(this).attr('data-isLiked');
				
				if(isLiked == 'Y'){
					var result = confirm('공감을 취소하시겠습니까?');
					if(result){
						location.href = 'addNewBlogLike.do?boardNo='+boardNo+'&categoryNo='+categoryNo+'&blogNo='+blogNo+'&action=cancel';
						return false;
					}
				} else{
					var result = confirm("공감하시겠습니까?");
					if(result){
						location.href = 'addNewBlogLike.do?boardNo='+boardNo+'&categoryNo='+categoryNo+'&blogNo='+blogNo+'&action=add';
						return false;
					}
				}
			})
		})
	</script>
</body>
</html>