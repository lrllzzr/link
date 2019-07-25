<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar main-nav">
        <div class="container blog_remove_color">
            <div class="row">
                <div class="col-sm-2">
                    <a href="/link/home.do">
                        <span class="blog-main-javer">Link</span>
                    </a>
                    <a href="/link/blog/main.do">
                        <span class="blog-main-blog">블로그</span>
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
                        <c:if test="${empty LOGIN_USER }">
                        	 <li class="blogmain_login_li"><a class="blogmain_login" style="background-color:#649dfa;" href="/link/loginform.do">로그인 </a></li>
                        </c:if>
                        <c:if test="${not empty LOGIN_USER }">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <img class="blog-profile-img" src="/link/resources/images/blog.png" alt="">
                                    <span class="blog-navbar-id">${LOGIN_USER.nickName }</span>
                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="/link/home.do">Link 홈</a></li>
                                <li class="divider"></li>
                                    <li><a href="/link/blog/main.do">블로그</a></li>
                                    <li style="margin-left: 10px;"><a href="/link/blog/mydetail.do">내 블로그</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">밴드</a></li>
                                    <li><a href="#">가계부 </a></li>
                                    <li><a href="#">지식인</a></li>
                                    <li><a href="#">시리즈</a></li>
                                    <li><a href="#">TV</a></li>
                                    
                                    <li class="divider"></li>
                                    <li><a href="/link/logout.do">로그아웃</a></li>
                                </ul>
                            </li>
                            </c:if>
                        </ul>
                        <div class="bell text-center"><a href=""><span class="glyphicon glyphicon-bell"></span></a></div>
                        <div class="envelope"><a href=""><span class="glyphicon glyphicon-envelope"></span></a></div>
                    </div>
                </div>
            </div>
        </div>
    </nav>