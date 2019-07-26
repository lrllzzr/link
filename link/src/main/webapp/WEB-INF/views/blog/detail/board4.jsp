<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../common/blog/blogColorHeader.jsp"%>

<body>
	<%@include file="../../common/nav.jsp"%>
	<div class="container blog_detail_con">
		<div class="row">
			<!--  헤더 시작         -->
			<%@include file="../../common/blog/blogheader.jsp"%>
			<!--  헤더 끝     -->
			<%@include file="../../common/blog/blogLayout.jsp"%>
			
				<!--                    우측 게시판 두번째 nav 시작-->
				<div class="col-sm-12 blog_detail_right_row1">
					<!--  우측 게시판 글 하나 시작-->
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-12 blog_detail_main_board_contents">
								<div class="page-header">
									<h2>${board.title }</h2>
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
			<!--좌측 nav 시작-->
			<%@include file="../../common/blog/blogrightForLayout4.jsp"%>
			<!--좌측 nav 끝-->
			</div>
			<%@include file="../../common/blog/blogLeftFor3and4.jsp"%>
			
		</div>

	</div>

</body>
</html>