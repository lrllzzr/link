<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/link/resources/css/blog/blog.css">
<link rel="stylesheet" href="/link/resources/css/main.css">
<link href="https://fonts.googleapis.com/css?family=Jura|Marck+Script|Russo+One|Sacramento&display=swap" rel="stylesheet">
</head>

<body>
	<%@include file="../common/nav.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-9">
				<div class="row blog-row-1">
					<div class="col-sm-12">
						<span class="blog-hot-topic">Hot topics</span>
					</div>
					<c:forEach var="blog" items="${blogsByVisit }">
						<a href="detail.do?blogNo=${blog.no }">
							<div class="col-sm-4 blog-row-2 text-center">
								<img src="/link/resources/images/${blog.mainImg }" alt="">
								<div class="row text-center">
									<div class="col-sm-6 blog-hottopic-info">${blog.title }</div>
								</div>
							</div>
						</a>
					</c:forEach>

				</div>
				<div class="row blog-main-row-2">
					<c:if test="${not empty LOGIN_USER }">
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-9 blog-neighbor-col">
									<span class="blog-neighbor">이웃새글</span>
								</div>
								<div class="col-sm-3">
									<div class="form-group">
										<select class="form-control" name="" id="">
											<option value=""selected;>전체이웃</option>
											<option value="">새 그룹</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<div class="blog-neighbor-div">

						<!--     이웃 새글 시작    -->
						<c:if test="${not empty LOGIN_USER }">
							<c:choose>
								<c:when test="${isHaveBlog eq 'yes' }">
									<c:if test="${not empty blogList}">
										<c:forEach var="blog" items="${blogList}">
											<div class="blog-hrdiv">
												<hr class="blog-row-hr-2" />
											</div>
											<div class="row blog-main-col-2-1 blog-main-col-2-1-1">
												<div class="col-sm-9">
													<div class="row">
														<div class="col-sm-1 blog-neighbor-col1">
															<img class="blog-row-2-profile-img" src="/link/resources/images/${blog.BLOGMAINIMG }" alt="">
														</div>
														<div class="col-sm-2 blog-neighbor-col2">
															<div class="row">
																<div class="col-sm-12">
																	<a href="">${blog.NICKNAME }</a>
																</div>
																<div class="col-sm-12">2시간전</div>
															</div>
														</div>
													</div>
													<a href="/link/blog/board.do?blogNo=${blog.NO }&categoryNo=${blog.CATEGORYNO }&boardNo=${blog.BOARDNO}">
														<div class="row blog-neighbor-box">
															<div class="col-sm-12">
																<p class="blog-neighbor-title">${blog.TITLE }</p>
															</div>
															<div class="col-sm-12 blog-neighbor-contents3">
																<div class="blog-neighbor-contents">${blog.CONTENTS }</div>
															</div>
														</div>
													</a>
												</div>
												<!--  -->
												<div class="col-sm-3">
													<a href="/link/blog/board.do?blogNo=${blog.NO }&categoryNo=${blog.CATEGORYNO }&boardNo=${blog.BOARDNO}"> <img
														style="max-width: 100%;" class="blog-neighbor-img " src="/link/resources/images/userblogimgs/${blog.BOARDMAINIMG }" alt=""
													>
													</a>
												</div>

											</div>
										</c:forEach>
									</c:if>
									<c:if test="${empty blogList }">
										<div class="blog-hrdiv">
											<hr class="blog-row-hr-2" />
										</div>
										<div class="row blog-main-col-2-1 blog-main-col-2-1-1">
											<div class="col-sm-12 text-center">
												<p>업데이트된 이웃의 새 글이 없습니다.</p>
												<p>아래 주제별 블로거 추천을 통해 관심 주제의 블로그 이웃을 만들어보세요.</p>
											</div>
										</div>
									</c:if>
								</c:when>
								<c:otherwise>
									<!--     이웃 새글 끝     -->
									<div class="blog-hrdiv">
										<hr class="blog-row-hr-2" />
									</div>
									<div class="row blog-main-col-2-1 blog-main-col-2-1-1">
										<div class="col-sm-12 text-center">
											<p>아직 블로그가 생성되지 않았습니다.</p>
											<p>블로그를 생성해보세요!</p>
										</div>
									</div>
									<!--     이웃 새글 끝  -->
								</c:otherwise>
							</c:choose>
						</c:if>
						<c:if test="${empty LOGIN_USER }">
							<div class="blog-hrdiv">
								<hr class="blog-row-hr-2" />
							</div>
							<div class="row blog-main-col-2-1 blog-main-col-2-1-1">
								<div class="col-sm-12 text-center">
									<p>로그아웃 상태입니다.</p>
									<p>로그인하여 이웃 새글을 확인해보세요.</p>
								</div>
							</div>
						</c:if>
						<!--     이웃 새글 끝     -->
					</div>

					<div class="blog-hrdiv">
						<hr class="blog-row-hr-3" />
					</div>
					<div class="row blog-hr-row">
						<div class="col-sm-12 blog_topics">
							<span id="all" class="blog_topic_selected">전체</span>
							<span data-topic="movie" class="">영화</span>
							<span data-topic="literature" class="">문학</span>
							<span data-topic="travel" class="">여행</span>
							<span data-topic="game" class="">게임</span>
							<span data-topic="programming" class="">프로그래밍</span>
							<span data-topic="streamming" class="">스트리밍</span>
						</div>
					</div>
					<div class="blog-hrdiv">
						<hr class="blog-row-hr-4" />
					</div>

					<div class="blog3topic">
						<c:forEach var="blog3" items="${blogsByType }">
							<!--                  추천 새글 시작  -->
							<div class="row blog-main-col-2-1">
								<div class="col-sm-9">
									<div class="row">
										<div class="col-sm-1 blog-neighbor-col1">
											<img class="blog-row-2-profile-img" src="/link/resources/images/${blog3.BLOGMAINIMG }" alt="">
										</div>
										<div class="col-sm-2 blog-neighbor-col2">
											<div class="row">
												<div class="col-sm-12">
													<a href="board.do?blogNo=${blog3.NO }&categoryNo=${blog3.CATEGORYNO}&boardNo=${blog3.BOARDNO}">${blog3.NICKNAME }</a>
												</div>
												<div class="col-sm-12">2시간전</div>
											</div>
										</div>
										<c:if test="${isHaveBlog eq 'yes' }">
											<div class="col-sm-2 col-sm-offset-7">
												<span class="blog-addneighbor"><a href="addNeighbor.do?blogNo=${blog3.NO }">+이웃추가</a></span>
											</div>
										</c:if>
									</div>
									<div class="row blog-neighbor-box">
										<a href="board.do?blogNo=${blog3.NO }&categoryNo=${blog3.CATEGORYNO}&boardNo=${blog3.BOARDNO}">
											<div class="col-sm-12">
												<p class="blog-neighbor-title">${blog3.TITLE }</p>
											</div>
											<div class="col-sm-12">
												<div class="blog-neighbor-contents ">${blog3.CONTENTS }</div>
											</div>
										</a>
									</div>
								</div>
								<div class="col-sm-3">
									<a href="board.do?blogNo=${blog3.NO }&categoryNo=${blog3.CATEGORYNO}&boardNo=${blog3.BOARDNO}"><img class="blog-neighbor-img "
										src="/link/resources/images/userblogimgs/${blog3.BOARDMAINIMG }" alt=""
									></a>
								</div>
							</div>
							<div class="blog-hrdiv">
								<hr class="blog-row-hr-2" />
							</div>
							<!--                  추천 새글 끝  -->
						</c:forEach>
					</div>

				</div>
			</div>
			<!--오른쪽 네브 시작-->
			<c:if test="${not empty LOGIN_USER }">
				<div class="col-sm-3 blog-col-3">
					<div class="row">
						<div class="col-sm-3 text-center">
							<img class="blog-row-2-profile-img" src="/link/resources/images/jisik.jpg" alt="">
						</div>
						<div class="col-sm-7 blog-right-col-1">
							<div class="row" style="margin-bottom: 40px;">
								<div class="col-sm-6">
									<span><a style="font-size: 15px; position: relative; top: 5px;" href="">${LOGIN_USER.id }</a></span>
								</div>
								<div class="col-sm-6 text-right">
									<span style="position: relative; top: 5px;" class="blog-rigbt-col-logout"><a href="/link/logout.do">로그아웃</a></span>
								</div>

							</div>
							<c:if test="${isHaveBlog eq 'yes' }">
								<div class="row">
									<span class="blog-right-col-info">총 ${myblog.visits }명 방문</span>
								</div>
							</c:if>
						</div>
					</div>
					<c:choose>
						<c:when test="${isHaveBlog eq 'no' }">
							<div class="row"">
								<div class="col-sm-12 text-center">
									<img style="width: 290.511px;" src="/link/resources/images/bloghome1.jpg" alt="" />
								</div>
							</div>
							<a id="makeBlogButton" href="/link/blog/makeblog.do">
								<div class="row blog-col-4" style="padding: 20px !important;">
									<div style="font-size: 15px; font-weight: bold; color: white;" class="col-sm-12 text-center">블로그 생성하러 가기</div>
								</div>
							</a>
						</c:when>
						<c:otherwise>
							<div class="row blog-col-4">
								<a id="goMyBlogButton" href="/link/blog/mydetail.do">
									<div class="col-sm-6 text-center">내 블로그</div>
								</a> <a id="writeBlogBoard" href="mywrite.do">
									<div class="col-sm-6 text-center">
										<span class="glyphicon glyphicon-pencil"></span> 글쓰기
									</div>
								</a>
							</div>
							<div class="row blog-col-5 text-center">
								<a href="">
									<div class="col-sm-4 blog-col-5-selected">내 소식</div>
								</a> <a href="">
									<div class="col-sm-4">내가 남긴 글</div>
								</a> <a href="">
									<div class="col-sm-4">이웃 목록</div>
								</a>
							</div>

							<div class="row blog-col-6 text-center">
								<div class="col-sm-12">
									<c:if test="${not empty requestList }">
										<c:forEach var="request" items="${requestList}">
											<div class="row blog-alarm">
												<div class="col-sm-10">
													<img class="blog-row-3-profile-img" src="/link/resources/images/jisik.jpg" alt=""> <a href="eachNeighbor.do">${request.NICKNAME }님이
														서로이웃을 신청했습니다.</a>
												</div>
												<div class="col-sm-1">
													<a href=""><span class="glyphicon glyphicon-remove"></span></a>
												</div>
											</div>
										</c:forEach>
									</c:if>
									<c:if test="${empty requestList }">
										<div class="row blog-alarm" style="margin-top: 10px;">
											<div class="col-sm-12">새로운 소식이 없습니다.</div>
										</div>
									</c:if>
								</div>
							</div>
							<div class="row blog-col-7">
								<div class="col-sm-12">
									<span id="blog-alarm-delete">모두 삭제</span>
								</div>
							</div>

						</c:otherwise>
					</c:choose>
				</div>
			</c:if>
			<c:if test="${empty LOGIN_USER }">
				<div class="col-sm-3 blog-col-3" style="padding-top: 0px;">
					<div class="row">
						<div class="col-sm-12 text-center">
							<img style="width: 290.511px;" src="/link/resources/images/bloghome1.jpg" alt="" />
						</div>
					</div>
					<a style="color: white; font-size: 15px;" href="/link/loginform.do">
						<div class="row blog-col-4 text-center" style="padding: 15px;">
							<strong>Link</strong>로그인
						</div>
					</a>
				</div>
			</c:if>
			<!--오른쪽 네브 끝-->
		</div>
	</div>
			<%@ include file="../common/bottom.jsp" %>
	<script>
		$(function() {
			$('.blog-neighbor-contents3 img').hide();
			$('.blog-neighbor-contents img').hide();

			$('.blog_topics span').click(
					function() {
						$(this).addClass('blog_topic_selected').siblings().removeClass('blog_topic_selected');
						var blogType = $(this).attr('data-topic');
						if (blogType == '전체') {
							blogType = "";
						}
						$.ajax({
							type : "GET",
							url : "topicAjax.do",
							data : {
								blogType : blogType
							},
							dataType : "json",
							success : function(result) {
								console.log(result);
								$('.blog3topic').empty();

								$.each(result, function(index, blog) {
									var row = "";
									row += '<div class="row blog-main-col-2-1">';
									row += '	<div class="col-sm-9">';
									row += '		<div class="row">';
									row += '			<div class="col-sm-1 blog-neighbor-col1">';
									row += '				<img class="blog-row-2-profile-img" src="/link/resources/images/'+blog.BLOGMAINIMG+'" alt="">';
									row += '			</div>';
									row += '			<div class="col-sm-2 blog-neighbor-col2">';
									row += '				<div class="row">';
									row += '					<div class="col-sm-12">';
									row += '						<a href="">' + blog.NICKNAME + '</a>';
									row += '					</div>';
									row += '					<div class="col-sm-12">2시간전</div>';
									row += '				</div>';
									row += '			</div>';
									row += '			<c:if test="${isHaveBlog eq \'yes\' }">'
									row += '				<div class="col-sm-2 col-sm-offset-7">';
									row += '					<span class="blog-addneighbor"><a href="">+이웃추가</a></span>';
									row += '				</div>';
									row += '			</c:if>';
									row += '		</div>';
									row += '		<div class="row blog-neighbor-box">';
									row += '			<a href="board.do?blogNo=' + blog.NO + '&categoryNo=' + blog.CATEGORYNO + '&boardNo=' + blog.BOARDNO + '">';
									row += '		<div class="col-sm-12">';
									row += '<p class="blog-neighbor-title">'+blog.TITLE+'</p>';
									row += '</div>';
									row += '<div class="col-sm-12">';
									row += '<div class="blog-neighbor-contents ">' + blog.CONTENTS + '</div>';
									row += '</div>';
									row += '</a>';
									row += '</div>';
									row += '</div>';
									row += '<div class="col-sm-3">';
									row += '<a href="board.do?blogNo=' + blog.NO + '&categoryNo=' + blog.CATEGORYNO + '&boardNo=' + blog.BOARDNO
											+ '"><img class="blog-neighbor-img" src="/link/resources/images/userblogimgs/'+blog.BOARDMAINIMG+'" alt=""></a>';
									row += '</div>';
									row += '</div>';
									row += '<div class="blog-hrdiv">';
									row += '<hr class="blog-row-hr-2" />';
									row += '</div>';

									$('.blog3topic').append(row);
									$('.blog-neighbor-contents3 img').hide();
									$('.blog-neighbor-contents img').hide();
									console.log('dddddddddddddddddddddddddddddddddddddddd')
								})
							}
						})
					})
		})
	</script>
</body>
</html>
