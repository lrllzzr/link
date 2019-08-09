<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <nav class="navbar main-nav navbar-fixed-top">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <a href="home.do">
                        <span class="blog-main-javer">Link</span><span class="blog-main-blog">TV</span>
                    </a>
                </div>
                <div class="col-sm-5 blog-searchbar">
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input style="width:300px;" type="text" class="form-control" placeholder="검색">
                        </div>
                        <button type="submit" class="btn btn-green"><span class="glyphicon glyphicon-search"></span></button>
                    </form>
                </div>

                <div class="col-sm-4 col-sm-offset-1 text-right blog-toprow-right">
                    <div class="blog-navbar-right collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                        <c:if test="${not empty LOGIN_USER}">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <img class="blog-profile-img" src="/link/resources/images/tv.png" style="width: 25px;" alt="">
                                    <span class="blog-navbar-id" style="vertical-align:bottom">${LOGIN_USER.name }</span>
                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="/link/blog/main.do">블로그</a></li>
                                    <li><a href="">밴드</a></li>
                                    <li><a href="#">가계부 </a></li>
                                    <li><a href="#">지식인</a></li>
                                    <li><a href="#">시리즈</a></li>
                                    <li><a href="/link/tv/home.do">TV</a></li>
                                    <li class="divider"></li>
                                    <li><a href="/link/logout.do">로그아웃</a></li>
                                </ul>
                            </li>
                            </c:if>
                            <c:if test="${empty LOGIN_USER}">
                            <li><a class="blog-navbar-id" href="/link/loginform.do">로그인</a></li>
                        	</c:if>
                        </ul>
                        <c:if test="${not empty LOGIN_USER}">
                        <div class="bell"><a href=""><span class="glyphicon glyphicon-bell"></span></a></div>
                        <div class="envelope"><a href=""><span class="glyphicon glyphicon-envelope"></span></a></div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    
 <!----------------------------------------네비<------------------------------->  
    