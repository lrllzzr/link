<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>Link 시리즈</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/link/resources/css/series/series.css">
    <link rel="stylesheet" href="/link/resources/css/main.css">
    
</head>
<body>
   <!-- 공통 내비게이션 시작  -->
     <nav class="navbar main-nav">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <a href="/src/main/webapp/WEB-INF/views/series/seriesmain.html">
                        <span class="series-main-javer">Link</span> <span class="series-main-series">시리즈</span>
                    </a>
                </div>
                <div class="col-sm-5 series-searchbar">
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input style="width:300px;" type="text" class="form-control" placeholder="검색">
                        </div>
                        <button type="submit" class="btn btn-green"><span class="glyphicon glyphicon-search"></span></button>
                    </form>
                </div>

                <div class="col-sm-4 col-sm-offset-1 text-right series-toprow-right">
                    <div class="series-navbar-right collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <img class="series-profile-img" src="/link/resources/images/series.png" alt="">
                                    <span class="series-navbar-id">빗취</span>
                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">내 블로그</a></li>
                                    <li><a href="#">밴드</a></li>
                                    <li><a href="#">가계부 </a></li>
                                    <li><a href="#">지식인</a></li>
                                    <li><a href="#">시리즈</a></li>
                                    <li><a href="#">TV</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">로그아웃</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="bell text-center"><a href=""><span class="glyphicon glyphicon-bell"></span></a></div>
                        <div class="envelope"><a href=""><span class="glyphicon glyphicon-envelope"></span></a></div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- 시리즈 내비게이션 -->
    <nav class="navbar navbar-default">
      <div class="container">
          <div class="navbar-header">
              <a class="navbar-brand" href="home.do">Link</a>
          </div>
          <ul class="nav navbar-nav">
              <li class="active"><a href="home.do">방송 홈</a></li>
              <li><a href="category.do">카테고리</a></li>
              <li><a href="toprank.do">인기순위 TOP 100</a></li>
              <li><a href="noticelist.do">공지사항</a></li>
              
          </ul>
          <div style="overflow: hidden; float: right; height: 50px">
              <a href="mypage/orderlist.do" style="line-height: 50px; padding: 15px;"><span class="glyphicon glyphicon-user" style="color: #777777"></span> 마이 페이지</a>
              <a href="mypage/cart.do" style="line-height: 50px; padding: 15px;"><span class="glyphicon glyphicon-shopping-cart"></span></a>
          </div>
          
      </div>
    </nav>
</body>
</html>