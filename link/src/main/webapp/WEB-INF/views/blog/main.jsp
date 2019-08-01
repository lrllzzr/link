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
					<c:forEach var="blog" items="${blogs }">
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
					<div class="blog-neighbor-div">

						<!--     이웃 새글 시작    -->
						<c:choose>
							<c:when test="${isHaveBlog eq 'yes' }">
								<c:forEach var="blog" items="${neighborBlogs}">
									<div class="blog-hrdiv">
										<hr class="blog-row-hr-2" />
									</div>
									<div class="row blog-main-col-2-1 blog-main-col-2-1-1">
										<div class="col-sm-9">
											<div class="row">
												<div class="col-sm-1 blog-neighbor-col1">
													<img class="blog-row-2-profile-img" src="/link/resources/images/${blog.mainImg }" alt="">
												</div>
												<div class="col-sm-2 blog-neighbor-col2">
													<div class="row">
														<div class="col-sm-12">
															<a href="">${blogUser.nickName }</a>
														</div>
														<div class="col-sm-12">2시간전</div>
													</div>
												</div>
											</div>
											<div class="row blog-neighbor-box">
												<a href="">
													<div class="col-sm-12">
														<p class="blog-neighbor-title">간헐적 단식 스타트~! 저탄고지식단으로 고구마아몬드스무디 만들기</p>
													</div>
													<div class="col-sm-12">
														<p class="blog-neighbor-contents">이웃 새글 스타트~~이웃 새글 스타트~~이웃 새글 스타트~~이웃 새글 스타트~~이웃 새글 스타트~~</p>
													</div>
												</a>
											</div>
										</div>
										<div class="col-sm-3">
											<a href=""><img class="blog-neighbor-img " src="/link/resources/images/smooth.jfif" alt=""></a>
										</div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<!--     이웃 새글 끝     -->
								<div class="blog-hrdiv">
									<hr class="blog-row-hr-2" />
								</div>
								<div class="row blog-main-col-2-1 blog-main-col-2-1-1">
									<div class="col-sm-9">
										<div class="row">
											<div class="col-sm-1 blog-neighbor-col1">
												<img class="blog-row-2-profile-img" src="/link/resources/images/blog.png" alt="">
											</div>
											<div class="col-sm-2 blog-neighbor-col2">
												<div class="row">
													<div class="col-sm-12">
														<a href="">이웃맘</a>
													</div>
													<div class="col-sm-12">2시간전</div>
												</div>
											</div>
										</div>
										<div class="row blog-neighbor-box">
											<a href="">
												<div class="col-sm-12">
													<p class="blog-neighbor-title">간헐적 단식 스타트~! 저탄고지식단으로 고구마아몬드스무디 만들기</p>
												</div>
												<div class="col-sm-12">
													<p class="blog-neighbor-contents">이웃 새글 스타트~~이웃 새글 스타트~~이웃 새글 스타트~~이웃 새글 스타트~~이웃 새글 스타트~~</p>
												</div>
											</a>
										</div>
									</div>
									<div class="col-sm-3">
										<a href=""><img class="blog-neighbor-img " src="/link/resources/images/smooth.jfif" alt=""></a>
									</div>
								</div>
								<!--     이웃 새글 끝  -->
							</c:otherwise>
						</c:choose>
						<!--     이웃 새글 끝     -->
					</div>

					<div class="blog-hrdiv">
						<hr class="blog-row-hr-3" />
					</div>
					<div class="row blog-hr-row">
						<div class="col-sm-12">
							<span>전체</span> <span>방송</span> <span>인테리어</span> <span>문학</span>
						</div>
					</div>
					<div class="blog-hrdiv">
						<hr class="blog-row-hr-4" />
					</div>

					<!--                  추천 새글 시작  -->
					<div class="row blog-main-col-2-1">
						<div class="col-sm-9">
							<div class="row">
								<div class="col-sm-1 blog-neighbor-col1">
									<img class="blog-row-2-profile-img" src="/link/resources/images/band.png" alt="">
								</div>
								<div class="col-sm-2 blog-neighbor-col2">
									<div class="row">
										<div class="col-sm-12">
											<a href="">웅이맘</a>
										</div>
										<div class="col-sm-12">2시간전</div>
									</div>
								</div>
								<div class="col-sm-2 col-sm-offset-7">
									<span class="blog-addneighbor"><a href="">+이웃추가</a></span>
								</div>
							</div>
							<div class="row blog-neighbor-box">
								<a href="">
									<div class="col-sm-12">
										<p class="blog-neighbor-title">간헐적 단식 스타트~! 저탄고지식단으로 고구마아몬드스무디 만들기</p>
									</div>
									<div class="col-sm-12">
										<p class="blog-neighbor-contents">간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~! Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Consequatur, officiis.</p>
									</div>
								</a>
							</div>
						</div>
						<div class="col-sm-3">
							<a href=""><img class="blog-neighbor-img " src="/link/resources/images/goguma.jfif" alt=""></a>
						</div>
					</div>
					<div class="blog-hrdiv">
						<hr class="blog-row-hr-2" />
					</div>


					<!--                  추천 새글 끝  -->
					<!--                  추천 새글 시작  -->
					<div class="row blog-main-col-2-1">
						<div class="col-sm-9">
							<div class="row">
								<div class="col-sm-1 blog-neighbor-col1">
									<img class="blog-row-2-profile-img" src="/link/resources/images/band.png" alt="">
								</div>
								<div class="col-sm-2 blog-neighbor-col2">
									<div class="row">
										<div class="col-sm-12">
											<a href="">추천맘</a>
										</div>
										<div class="col-sm-12">2시간전</div>
									</div>
								</div>
								<div class="col-sm-2 col-sm-offset-7">
									<span class="blog-addneighbor"><a href="">+이웃추가</a></span>
								</div>
							</div>
							<div class="row blog-neighbor-box">
								<a href="">
									<div class="col-sm-12">
										<p class="blog-neighbor-title">간헐적 단식 스타트~! 저탄고지식단으로 고구마아몬드스무디 만들기</p>
									</div>
									<div class="col-sm-12">
										<p class="blog-neighbor-contents">간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~! Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Consequatur, officiis.</p>
									</div>
								</a>
							</div>
						</div>
						<div class="col-sm-3">
							<a href=""><img class="blog-neighbor-img " src="/link/resources/images/goguma.jfif" alt=""></a>
						</div>
					</div>
					<div class="blog-hrdiv">
						<hr class="blog-row-hr-2" />
					</div>
					<!--                  추천 새글 끝  -->
					<!--                  추천 새글 시작  -->
					<div class="row blog-main-col-2-1">
						<div class="col-sm-9">
							<div class="row">
								<div class="col-sm-1 blog-neighbor-col1">
									<img class="blog-row-2-profile-img" src="/link/resources/images/band.png" alt="">
								</div>
								<div class="col-sm-2 blog-neighbor-col2">
									<div class="row">
										<div class="col-sm-12">
											<a href="">웅이맘</a>
										</div>
										<div class="col-sm-12">2시간전</div>
									</div>
								</div>
								<div class="col-sm-2 col-sm-offset-7">
									<span class="blog-addneighbor"><a href="">+이웃추가</a></span>
								</div>
							</div>
							<div class="row blog-neighbor-box">
								<a href="">
									<div class="col-sm-12">
										<p class="blog-neighbor-title">간헐적 단식 스타트~! 저탄고지식단으로 고구마아몬드스무디 만들기</p>
									</div>
									<div class="col-sm-12">
										<p class="blog-neighbor-contents">간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~!간헐적단식 스타트~! Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Consequatur, officiis.</p>
									</div>
								</a>
							</div>
						</div>
						<div class="col-sm-3">
							<a href=""><img class="blog-neighbor-img " src="/link/resources/images/goguma.jfif" alt=""></a>
						</div>
					</div>
					<div class="blog-hrdiv">
						<hr class="blog-row-hr-2" />
					</div>
					<!--                  추천 새글 끝  -->


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
									<span class="blog-right-col-info">오늘 0명 방문</span>
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
									<div class="row blog-alarm">
										<div class="col-sm-10">
											<img class="blog-row-3-profile-img" src="/link/resources/images/jisik.jpg" alt=""> <a href="">호야님이 서로이웃을 신청했습니다.</a>
										</div>
										<div class="col-sm-1">
											<a href=""><span class="glyphicon glyphicon-remove"></span></a>
										</div>
									</div>
									<div class="row blog-alarm">
										<div class="col-sm-10">
											<img class="blog-row-3-profile-img" src="/link/resources/images/jisik.jpg" alt=""> <a href="">호야님이 서로이웃을 신청했습니다.</a>
										</div>
										<div class="col-sm-1">
											<a href=""><span class="glyphicon glyphicon-remove"></span></a>
										</div>
									</div>
									<div class="row blog-alarm">
										<div class="col-sm-10">
											<img class="blog-row-3-profile-img" src="/link/resources/images/jisik.jpg" alt=""> <a href="">호야님이 서로이웃을 신청했습니다.</a>
										</div>
										<div class="col-sm-1">
											<a href=""><span class="glyphicon glyphicon-remove"></span></a>
										</div>
									</div>
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
	<script>
		
	</script>
</body>
</html>
