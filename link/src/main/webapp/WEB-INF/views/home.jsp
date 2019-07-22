<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <ul class="nav navbar-nav navbar-right">
                <li class=""><a class="main-login" style="color:#666666;" href="#">로그인</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <div class="row main-row-1">
            <!--            <img class="main-naver-img" src="resources/images/naver.PNG" alt="">-->
            <div class="col-sm-12 text-center">
                <span class="main-naver"><a href=""><span style="" class="main-null-img glyphicon glyphicon-link"></span>
                        <span style="">L</span><span style="color:#E62600;">i</span><span style="color:#FCC800;">n</span><span style="color:#00B658">k</span> </a></span>
            </div>
            <div class="col-sm-6 col-sm-offset-3 text-center">
                <input type="text" class="main-searchbar">
                <div class="search-shape">
                    <a href=""><span class="glyphicon glyphicon-search"></span></a>
                </div>
            </div>
            <div class="col-sm-3 main-rank">
               <div>
               <a href="">
                <span class="main-rankNumber">1</span>
                <span class="main-rankName" style="">이해훈</span>
                <span class="glyphicon glyphicon-chevron-down"></span>
                </a>
                </div>
            </div>
        </div>
        <hr class="main-row-hr-1" />
        <div class="row main-row-2">
            <div class="col-sm-2 text-center main-col">
                <div class="main-menu"><a href="/link/blog/main.do">블로그</a></div>
                <a href="/link/blog/main.do"><img style="" src="resources/images/blog.png" alt=""></a>
            </div>
            <div class="col-sm-2 text-center main-col">
                <div class="main-menu"><a href="">BAND</a></div>
                <a href=""><img src="resources/images/band.png" alt=""></a>
            </div>
            <div class="col-sm-2 text-center main-col">
                <div class="main-menu"><a href="">지식인</a></div>
                <a href=""><img style="position: relative;" src="resources/images/jisik.jpg" alt=""></a>
            </div>
            <div class="col-sm-2 text-center main-col">
                <div class="main-menu"><a href="">시리즈</a></div>
                <a href=""><img style="position: relative;" src="resources/images/video.png" alt=""></a>
            </div>
            <div class="col-sm-2 text-center main-col">
                <div class="main-menu"><a href="">TV</a></div>
                <a href=""><img style="position: relative;" src="resources/images/tv.png" alt=""></a>
            </div>
            <div class="col-sm-2 text-center main-col">
                <div class="main-menu"><a href="">가계부</a></div>
                <a href=""><img src="resources/images/gage.png" alt=""></a>
            </div>
        </div>
	</div>

</body>
</html>
