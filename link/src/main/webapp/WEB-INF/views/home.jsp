<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Jura|Marck+Script|Russo+One|Sacramento&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/link/resources/css/main.css">
<link rel="stylesheet" href="/link/resources/css/blog/blog.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
</style>
</head>

<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${not empty LOGIN_USER }">
					<li class="dropdown"><a href="#" style="background-color:white !important;
		" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> <img class="blog-profile-img" src="/link/resources/images/blog.png" alt=""> <span
							class="blog-navbar-id" style="color:gray !important;"
						>${LOGIN_USER.nickName }</span> <span class="caret" style="color:gray !important;"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/link/home.do">Link 홈</a></li>
							<li class="divider"></li>
							<li><a href="/link/blog/main.do">블로그</a></li>
							<c:if test="${LOGIN_USER.isHaveBlog eq 'Y' }">
								<li style="margin-left: 10px;"><a href="/link/blog/mydetail.do">내 블로그</a></li>
								<li style="margin-left: 10px;"><a href="/link/blog/beautifyblog.do">내 블로그 관리</a></li>
							</c:if>
							<li class="divider"></li>
							<li><a href="#">밴드</a></li>
							<li><a href="#">가계부 </a></li>
							<li><a href="/link/jisikin/main.do">지식인</a></li>
							<li><a href="#">시리즈</a></li>
							<li><a href="#">TV</a></li>

							<li class="divider"></li>
							<li><a href="/link/logout.do">로그아웃</a></li>
						</ul></li>
				</c:if>
				<c:if test="${empty LOGIN_USER }">
					<li class=""><a class="main-login" style="color: #666666;" href="loginform.do">로그인</a></li>
				</c:if>
				<c:if test="${not empty LOGIN_USER }">
					<li class=""><a class="main-login" style="color: #666666;" href="logout.do">로그아웃</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row main-row-1">
			<!--            <img class="main-naver-img" src="resources/images/naver.PNG" alt="">-->
			<div class="col-sm-12 text-center">
				<span class="main-naver"><a href=""><span style="" class="main-null-img glyphicon glyphicon-link"></span> <span style="">L</span><span style="color: #E62600;">i</span><span style="color: #FCC800;">n</span><span
						style="color: #00B658"
					>k</span> </a></span>
			</div>
			<div class="col-sm-6 col-sm-offset-3 text-center">
				<input type="text" class="main-searchbar">
				<div class="search-shape">
					<a href=""><span class="glyphicon glyphicon-search"></span></a>
				</div>
			</div>
			<div class="col-sm-3 main-rank">
				<div>
					<a href=""> <span class="main-rankNumber">1</span> <span class="main-rankName" style="">이해훈</span> <span class="glyphicon glyphicon-chevron-down"></span>
					</a>
				</div>
			</div>
		</div>
		<hr class="main-row-hr-1" />
		<div class="row main-row-2">
			<div class="col-sm-2 text-center main-col">
				<div class="main-menu">
					<a href="/link/blog/main.do">블로그</a>
				</div>
				<a href="/link/blog/main.do"><img style="" src="resources/images/blog.png" alt=""></a>
			</div>
			<div class="col-sm-2 text-center main-col">
				<div class="main-menu">
					<a href="">BAND</a>
				</div>
				<a href=""><img src="resources/images/band.png" alt=""></a>
			</div>
			<div class="col-sm-2 text-center main-col">
				<div class="main-menu">
					<a href="/link/jisikin/main.do">지식인</a>
				</div>
				<a href="/link/jisikin/main.do"><img style="position: relative;" src="resources/images/jisik.jpg" alt=""></a>
			</div>
			<div class="col-sm-2 text-center main-col">
				<div class="main-menu">
					<a href="">시리즈</a>
				</div>
				<a href=""><img style="position: relative;" src="resources/images/video.png" alt=""></a>
			</div>
			<div class="col-sm-2 text-center main-col">
				<div class="main-menu">
					<a href="">TV</a>
				</div>
				<a href=""><img style="position: relative;" src="resources/images/tv.png" alt=""></a>
			</div>
			<div class="col-sm-2 text-center main-col">
				<div class="main-menu">
					<a href="">가계부</a>
				</div>
				<a href=""><img src="resources/images/gage.png" alt=""></a>
			</div>
		</div>

	</div>

</body>
</html>