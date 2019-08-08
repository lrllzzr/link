<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<title>Link : TV 메인</title>
<link rel="shortcut icon" type="image/x-icon"
	href="../../../resources/images/shortcut-icon.PNG">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="/mj/kurly/images/header_footer/tab-logo02.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
.navbar-nav>li>a:hover, .navbar-nav>li>a {
	background-color: indigo;
}

.nav .open>a, .nav .open>a:focus, .nav .open>a:hover {
	background-color: indigo;
}

a:hover, a:focus {
	text-decoration: none;
}

.main-nav {
	background-color: indigo;
}

.blog-main-javer {
	position: relative;
	top: 5px;
	font-size: 15px;
	color: white;
	font-weight: 800;
}

.blog-main-blog {
	position: relative;
	top: 8px;
	font-size: 24px;
	color: white;
}

.btn-green {
	background-color: white;
	color: white;
	padding: 2px 6px;
}

.glyphicon-search {
	font-size: 23px;
	color: black;
}

.blog-navbar-id {
	color: white;
	position: relative;
	bottom: 3px;
	font-size: 13px;
	font-weight: bold;
	margin-right: 10px;
	cursor: pointer;
}

.glyphicon-triangle-bottom {
	margin-left: 5px;
}

.blog-navbar-img {
	position: relative;
	bottom: 3px;
	width: 30px;
}

.blog-navbar-right {
	position: relative;
}

.glyphicon glyphicon-triangle-bottom {
	color: white;
	font-size: 7px;
}

.bell {
	display: inline-block;
	position: relative;
	width: 60px;
	height: 50px;
	border-right: 1px solid white;
	border-left: 1px solid white;
	padding-right: 5px;
}

.envelope {
	display: inline-block;
	position: relative;
	width: 60px;
	height: 50px;
	border-right: 1px solid white;
}

.glyphicon-bell {
	color: white;
	position: relative;
	font-size: 20px;
	padding: 13px;
}

.glyphicon-envelope {
	color: white;
	position: relative;
	font-size: 20px;
	padding: 12px 20px;
}

.caret {
	color: white;
}

ul, li {
	list-style: none;
}

.tv-side-menu {
	border: 1px solid #CECECE;
	cursor: pointer;
	width: 180px;
	padding: 15px 30px 15px 30px;
	border-radius: 20px;
	margin: 2px;
	font-family: Georgia, "맑은 고딕";
	text-align: center;
}

.tv-side-menu:hover {
	color: white;
	background-color: indigo;
}

.tv-side-menubar {
	position: fixed;
	top: 150px;
	left: 100px;
	font-size: 15px;
}

.tv-side-menu a {
	text-decoration: none;
	color: black;
}

.tv-content-header {
	font-size: 20px;
	text-align: left;
	margin-top: 50px;
}

.tv-content-header a {
	text-decoration: none;
	color: black;
}

/*---------------------------네브-------------------------------------------------*/
/* width */
::-webkit-scrollbar {
	width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
	box-shadow: inset 0 0 5px gray;
	border-radius: 3px;
}

/* Handle */
::-webkit-scrollbar-thumb {
	background: #CECECE;
	border-radius: 2px;
}

-------------------------
.tv-detail-video {
	width: 980px;
	height: 550px;
}

#myVideo {
	border-radius: 5px;
	
}

.tv-detail-title {
	border-top: 2px solid indigo;
	margin-top: 50px;
	border-bottom: 2px solid indigo;
	padding: 20px;
}

.tv-detail-chanel {
	border-bottom: 1px solid #CECECE;
}

.tv-detail-clip {
	border-bottom: 1px solid #CECECE;
	text-align: center;
}

.btn-detail-like {
	font-size: 30px;
	color: pink;
	cursor: pointer;
}

.btn-detail-like:hover {
	color: red;
}

.btn-detail-comment {
	font-size: 30px;
	color: skyblue;
	cursor: pointer;
}

.btn-detail-comment:hover {
	color: blue;
}

.btn-detail-later {
	font-size: 30px;
	color: #CECECE;
	cursor: pointer;
}

.btn-detail-later:hover {
	color: black;
}

.tv-clip-list {
	overflow: auto;
	height: 800px;
}

.clip-list-palytime {
	position: absolute;
	left: 0px;
	bottom: 46px;
	border: 1px solid black;
	color: white;
	background-color: black;
}

.clip-list-video {
	width: 100%;
}

.tv-detail-comment {
	border-top: 2px solid #CECECE;
	margin-top: 20px;
	margin-bottom: 20px;
}

.comment-tumbsup {
	display: inline-block;
	margin-left: 650px;
	padding: 2px;
	border: 1px solid indigo;
	cursor: pointer;
}

.comment-tumbsdown {
	display: inline-block;
	margin-left: 20px;
	padding: 2px;
	border: 1px dashed gray;
	cursor: pointer;
}

.clip-list-title {
	margin-top: 5px;
}

.clip-list-palylike-box {
	text-align: left;
	color: gray;
	border-bottom: 1px solid #CECECE;
}

.clip-list-video-box {
	position: relative;
	cursor: pointer;
	margin-top: 10px;
}

.tv-detail-video-dummy {
	border: 1px solid;
	width: 980px;
	height: 550px;
	display: none;
}
 .active {
 	
 	border: 2px dashed indigo;

 }
</style>

</head>

<body>
	<%@include file="common/nav.jsp"%>


	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<div>
				<ul class="tv-side-menubar">
					<li class="tv-side-menu" onclick="location.href='home.do'">홈</li>
					<li class="tv-side-menu"
						onclick="location.href='rank.do?category=best'">인기</li>
					<li class="tv-side-menu"
						onclick="location.href='history.do?sort=recent'">최근 본 동영상</li>
					<li class="tv-side-menu"
						onclick="location.href='history.do?sort=later'">나중에 볼 동영상</li>
					<li class="tv-side-menu"
						onclick="location.href='history.do?sort=like'">좋아요 한 동영상</li>
					<li class="tv-side-menu" onclick="location.href='mychannel.do'">내채널 가기</li>
				</ul>
			</div>


			<!--사이드메뉴 끝------------------------------------->




			<div>
    <div class="tv-detail-content">
        <div class="row">
            <div class="col-sm-10">
                <h3 class="tv-detail-chanel">${video.tvPlaylist.tvChannel.title}</h3>
                <div class="row">
                    <div class="col-sm-12 tv-detail-video">
                        <video id="myVideo" preload="metadata" autoplay="autoplay" controls disablePictureInPicture controlsList="nodownload" style="width: 100%; height: 550px;">
                            <source src="/link/resources/images/tvdb/video/${video.videoName}.mp4" type="video/mp4">
                        </video>
                    </div>
                    <div class="col-sm-12 tv-detail-video-dummy"></div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div>
                                <h2 class="tv-detail-title">${video.title}</h2>
                                <div class="pull-right">
                                    <span class="glyphicon glyphicon-heart btn-detail-like"></span><strong>${video.likes }</strong>
                                    <span class="glyphicon glyphicon-comment btn-detail-comment"></span><strong>${video.comments }</strong>
                                    <span class="glyphicon glyphicon-time btn-detail-later" data-vno=${video.no }></span>
                                </div>
                            </div>
                            <div style="color: gray">
                                <span class="glyphicon glyphicon-play"></span><em>${video.views }</em>
                                <span>등록일 :</span><em>
                                    <fmt:formatDate value="${video.createDate}" pattern="yyyy-MM-dd" /></em>
                            </div>
                            <div style="margin-top: 50px;">
                                <div>
                                    <p>${video.contents }</p>

                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row" style="margin-top: 100px;">
                        <div class="col-sm-12">
                            <form action="addComment.do?vno=${param.vno} " class="form-group">
                                <label>댓글</label>
                                <textarea class="form-control comment-textarea" style="resize: none;" id="" rows="5"></textarea>
                                <div><span class="word-check">0</span>/200</div>
                                <button class="btn btn-info pull-right btn-comment-insert" type="submit">등록</button>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="tv-detail-comment">
                                <label>민지</label>
                                <div>안녕하세요</div>
                                <span style="color: gray">등록일 : 2019-08-18</span>
                                <div class="comment-tumbsup">
                                    <span class="glyphicon glyphicon-thumbs-up">좋아요</span><em>10</em>
                                </div>
                                <div class="comment-tumbsdown">
                                    <span class="glyphicon glyphicon-thumbs-down">싫어요</span><em>30</em>
                                </div>
                            </div>
                            
                            

                        </div>
                    </div>
                </div>
            </div>
            <div>
                <h3 class="tv-detail-clip">재생목록</h3>
            </div>
            <div class="col-sm-2 tv-clip-list">
                <c:forEach var="list" items="${playlist}">
                    <div class="clip-list-video-box ${param.vno eq list.no ? 'active' : '' }">
                        <img class="clip-list-video" src="/link/resources/images/tvdb/${list.thumbnail }"  style="width: 100%;" onclick="location.href='detail.do?vno=${list.no}'"><span class="clip-list-palytime">
                            <c:choose>
                                <c:when test="${list.playTime gt 60}">
                                    <c:if test="${list.playTime div 60 gt 60 }">
                                        <fmt:parseNumber value="${list.playTime div 60 div 60}" integerOnly="true"></fmt:parseNumber>:
                                        <fmt:parseNumber value="${list.playTime div 60 - 60}" integerOnly="true"></fmt:parseNumber>:
                                        <fmt:parseNumber value="${list.playTime mod 60}"></fmt:parseNumber>
                                    </c:if>
                                    <fmt:parseNumber value="${list.playTime div 60}" integerOnly="true"></fmt:parseNumber>:
                                    <c:choose>
                                        <c:when test="${list.playTime mod 60 < 10 }">
                                            0<fmt:parseNumber value="${list.playTime mod 60}"></fmt:parseNumber>
                                        </c:when>
                                        <c:otherwise>
                                            <fmt:parseNumber value="${list.playTime mod 60}"></fmt:parseNumber>
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                                <c:otherwise>
                                    0:0:<fmt:parseNumber value="${list.playTime}" integerOnly="true"></fmt:parseNumber>
                                </c:otherwise>
                            </c:choose>
                        </span>
                      	<c:choose>
							<c:when test="${fn:length(list.title) > 12}">
                             	<div class="clip-list-title">${fn:substring(list.title,0,11)}…</div>
                             </c:when>
                             <c:otherwise>
                             	<div class="clip-list-title">${list.title}</div>
                             </c:otherwise> 
                        </c:choose>
                        <div class="clip-list-palylike-box">
                            <span class="glyphicon glyphicon-play clip-list-play">${list.views }</span>
                            <span class="clip-list-like"> ♡ ${list.likes}</span>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

</div>
</div>








	
	<script>
	
		// 스크롤 이벤트 화면 위치 변경
		
		$(window).on(
				"scroll",
				function() {
					var x = $(window).scrollTop();
					if ($(window).scrollTop() >= 680) {
						console.log(x);
						$(".tv-detail-video-dummy").show();
						$("#myVideo").css("position", 'fixed')
								.css("right", 100).css("width", 400).css(
										"bottom", 100);
					}
					if ($(window).scrollTop() <= 680) {
						$(".tv-detail-video-dummy").hide();
						$("#myVideo").css("position", '').css("right", '').css(
								"width", '100%').css("bottom", '');
					}
				})
				
				// 페이지 준비되면 active 위치로  스크롤 이동
				$(document).ready(function () {
					var x = $(".active").index();
					$(".tv-clip-list").scrollTop(175*x);
					
					var words = $(".comment-textarea").val().length;
					if(words == 0 || words > 200){
						$(".btn-comment-insert").attr("disabled", true);
					}
					
				})
				
				
			// 댓글 글자수 체크
			
			
			$(".comment-textarea").on("keyup", function () {
				var words = $(this).val().length;
				$(".word-check").text(words);
				
				if(words == 0 || words > 200){
					$(".btn-comment-insert").attr("disabled", true);
				} else{
					
					$(".btn-comment-insert").attr("disabled", false);
				}
			})
			
			
			// 나중에 보기 AJAX
	$(".btn-detail-later").on("click", function(event) {
	
		var vno = $(this).attr("data-vno");
		console.log(vno);
		 $.ajax({
			type:"POST",
			url:"addLater.do",
			data:{"vno":vno},
			dataType:"text",
			success:function(result){
				console.log(result);
				if(result =='fail'){
					/* alert('이미 나중에 보기 한 영상입니다.'); */
					$("#modalFail").modal({
						backdrop: true
					});
				}
				if(result =='success'){
					/* alert('나중에 보기에 영상을 담았습니다.'); */
					$("#modalSuccess").modal({
						backdrop: true
					});
				}
			
			}
		}) 
		return false;
})
		
		
		/*var x = $("#myVideo");
		
		 $(document).ready(function(){
		 var z=  document.getElementById("myVideo");
		 var w =z.duration; 
		 alert(w);
		
		 });*/

		/*   $(document).ready(function(){
		$("#myVideo").one(
		  "timeupdate", 
		  function(event){
		      if(this.duration>60){
		          if(this.duration/60 > 60){
		              
		              var PT = parseInt(this.duration/60/60)+':'+parseInt(this.duration/60-60)+":"+parseInt(this.duration%60);
		              alert(PT);
		          }else{
		              
		              alert("0:"+parseInt(this.duration/60)+':'+parseInt(this.duration%60));
		          }
		          
		      } else{
		          alert("0:"+"0:"+parseInt(this.duration));
		      }
		      
		  });
		}); */
	</script>
</body>
</html>
