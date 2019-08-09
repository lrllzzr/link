<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Link 검색키워드 > 통합검색 </title>
    <link rel="shortcut icon" type="image/x-icon" href="/link/resources/images/shortcut-icon.PNG">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/link/resources/css/search/searchMain.css">
	<link rel="stylesheet" href="/link/resources/css/blog/blog.css">
</head>
<body>
        <div class="container-fluid" style="margin-top: 30px;">
            <div class="row navbar main-nav">
                <div class="col-sm-6 col-sm-offset-1" style="z-index: 100;">
                    <form id="nx_search_form" name="search" action="" method="GET" style="width: 702px;">
                <h1 class="search_logo"><a href="" class="spnew logo_naver"><img src="/link/resources/images/link_logo.PNG" alt="링크_로고"></a></h1>
                <fieldset class="greenwindow" style="width: 503px;">
                    <div class="greenbox"> <span class="keyword"> <input type="text" id="nx_query" name="query" class="box_window" maxlength="255" accesskey="s" value="" autocomplete="off" title="검색어 입력"> </span> 
                    </div>
                    <button type="submit" class="bt_search"><span class="
                    glyphicon glyphicon-search"></span></button>
                    <!-- 자동완성 -->
                    <div id="nautocomplete" class="autocomplete"> 

                        <!-- 펼쳤을 때 -->
                        <a href="#" class="bt_atcp _btn_arw unfold"><span class="blind _text">자동완성 접기</span><span class="ico_arrow spnew"><img src="/link/resources/images/search_auto_complete.png" alt=""></span></a> 

                        <!-- 접었을 때-->
                        <a href="#" class="bt_atcp _btn_arw fold"><span class="blind _text">자동완성 펼치기</span><span class="ico_arrow spnew"><img src="/link/resources/images/search_auto_complete_unfold.png" alt=""></span></a> 
                    </div>
                    
                    <!-- 자동검색 박스 -->
                    <div class="ly_atcmp" id="nx_autoframe_top" style="display: none;">
                       <div class="api_atcmp_wrap _atcmp" style="display: block">
                            <div class="words _words expand" style="display: block;"> <div class="_atcmp_result_wrap"> <ul class="_resultBox" style="display: block;">
                               <li class="_item"><a href="#">MFC</a></li>
                                <li class="_item"><a href="#">MFC가 뭐고</a></li>
                                <li class="_item"><a href="#">웹 개발?</a></li>
                                <li class="_item"><a href="#">MFC로??!</a></li></ul>
                            </div>
                            </div>
                           
                       </div>
                       
                    </div>
                    
                </fieldset>
            </form>
                </div>

                <div class="col-sm-4 text-right blog-toprow-right">
                    <div class="blog-navbar-right collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li class="dropdown" id="my_saying">
                                <a href="#" class="dropdown-toggle myfirst" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <img class="blog-profile-img" src="/link/resources/images/default_profile.PNG" alt="">
                                    <span class="blog-navbar-id">빗취</span>
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
        
        
        <!-- 검색 결과 창 -->
        <div class="container-fluid">
            <div class="row search-category">
                <ul class="search-category-list">
                    <li><a href="#" id="totalsearch" class="category-btn cat-on">통합검색</a></li>
                    <li><a href="#" id="jisikinsearch" class="category-btn">지식IN</a></li>
                    <li><a href="#" id="imagesearch" class="category-btn">이미지</a></li>
                    <li><a href="#" id="blogsearch" class="category-btn">블로그</a></li>
                    <li><a href="#" id="tvsearch" class="category-btn">TV</a></li>
                    <li><a href="#" id="seriessearch" class="category-btn">SERIES</a></li>
                    <li><a href="#" id="bandsearch" class="category-btn">BAND</a></li>
                    <li><a href="#" class="search-opt btn">검색옵션<img src="/link/resources/images/search_auto_complete_unfold.png" alt="" width="15px;"></a></li>
                </ul>
            </div>
            <div class="row search-category search-opt-box">
                <div class="sort-area">
                    <select name="sort" id="sort-box">
                        <option value="" selected disabled>정렬</option>
                        <option value="recent">최신순</option>
                        <option value="gal">관련순</option>
                    </select> 
                </div>
                <div class="sort-area">
                    <select name="days" id="sort-box">
                        <option value="" selected disabled>기간</option>
                        <option value="day">1일</option>
                        <option value="week">1주일</option>
                    </select>  
                </div>
                <div class="sort-area">
                    <select name="section" id="sort-box">
                        <option value="" selected disabled>영역</option>
                        <option value="total">전체</option>
                        <option value="title">제목</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row search-content">
                <div class="col-sm-7 col-sm-offset-1 search-result">
                    <div class="row related_content">
                        <span class="tit_relate  _related_keyword_lis">연관검색어
                        <img src="/link/resources/images/search-notice.PNG" width="15px" alt=""></span>
                        <ul>
                            <li><a href="#">링크</a></li>
                            <li><a href="#">연관검색어</a></li>
                            <li><a href="#">할수있을까</a></li>
                            <li><a href="#">디자인그만하고싶다</a></li>
                        </ul>
                    </div>
                    
                    
                <!-- 검색 메인 결과내역들 -->
                    <div class="row result-section result-jisikin">
                        <div class="row section_head">
                            <h2>지식iN</h2>
                            <span class="title_num">8,796건</span>
                        </div>
                        <div class="jisikin-section-content">
                            <ul class="jisikin-list">
                                <li>
                                    <dl>
                                        <dt class="title">
                                            <img src="/link/resources/images/jisikin-Q2.png" width="15" alt="">
                                            <a href="#" class="jisikin-list-title"><span class="keyword">MFC</span>가 뭔지 알려주세요!</a>
                                            <span class="create_date">2019.06.02</span>
                                        </dt>
                                        <dd class="content">
                                            프로그래밍언어 중에 <span class="keyword">MFC</span>가 뭔가요??
                                        </dd>
                                        <dd class="answer">
                                            <p class="p-answer">
                                            <img src="/link/resources/images/jisikin-A2.png" width="15" alt=""> 
                                            <span class="keyword">MFC</span>는 C프로그래머의 편리를 위해 나온거지만 구조가 다소 복잡하여 처음 배우려면 머리아픕니다~ (저는그랫어요;) 그래도 익숙해지면 이것처럼 편한게 없다니 열심히 공부중입니다~는 C프로그래머의 편리를 위해 나온거지요 이제 아시겠습니까? 예?????</p>
                                        </dd>
                                        <dd class="cat">컴퓨터사전 > IT</dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt class="title">
                                            <img src="/link/resources/images/jisikin-Q2.png" width="15" alt="">
                                            <a href="#" class="jisikin-list-title"><span class="keyword">MFC</span>란 무엇인가?.. 자세히 좀 알켜주세요.. 최대한 빨리요</a>
                                            <span class="create_date">2019.07.29</span>
                                        </dt>
                                        <dd class="content">
                                            c++ 인가요... <span class="keyword">MFC</span>를 작성 해서 비주얼 컴파일러로 실행 하는건가요..구체적으로 알켜주세요
                                        </dd>
                                        <dd class="answer">
                                            <p class="p-answer">
                                            <img src="/link/resources/images/jisikin-A2.png" width="15" alt=""> 
                                            <span class="keyword">MFC</span>가 궁금하시다구요?
                                            우선 약자그대로 뜻을본다면
                                            Microsoft Foundation Class로서
                                            마이크로소프트에서 개발한 기본 클래스 라이브러리입니다.</p>
                                        </dd>
                                        <dd class="cat">용어해설 > 컴퓨터/통신</dd>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                        <div class="section-more">
                            <a href="#">지식iN 더보기></a>
                        </div>
                    </div>
                    <div class="row result-section result-blog">
                        <div class="section_head">
                            <h2>블로그</h2>
                            <span class="title_num">9,796건</span>
                        </div>
                        <div class="jisikin-section-content">
                            <ul class="jisikin-list blog-list">
                                <li>
                                    <div class="search-blog-img">
                                        <img src="/link/resources/images/search-blog-ex1.jpg" alt="">
                                    </div>
                                    <dl>
                                        <dt class="title">
                                            <a href="#" class="jisikin-list-title"><span class="keyword">MFC</span>는 무엇일까요?</a>
                                            <span class="create_date">2014.11.02</span>
                                        </dt>
                                        <dd class="content">
                                            윈도우계열에 제공되는 API함수들은 모두C언어로 작성되어있습니다
                                            <span class="keyword">MFC</span>는 API함수를 사용하여 좀더쉽게 윈도우즈 프로그래밍을 하기위해
                                            만들어졌습니다. 기반언어는C++이고요
                                        </dd>
                                        <dd class="cat blog-title">CmelCmel 개발자 세상</dd>
                                    </dl>
                                </li>                             
                                <li>
                                   <div class="search-blog-img">
                                        <img src="/link/resources/images/search-blog-ex2.jpg" alt="">
                                    </div>
                                    <dl>
                                        <dt class="title">
                                            <a href="#" class="jisikin-list-title"><span class="keyword">MFC</span>란?</a>
                                            <span class="create_date">2016.06.12</span>
                                        </dt>
                                        <dd class="content">
                                            <span class="keyword">MFC</span>를 소개 해드리겠습니다.
                                            Mass Flow Controler의 줄임말이죠  이제부터는 <span class="keyword">MFC</span>라고 말씀드리겠습니다.
                                            제가 사용해봤던 제품들은 Bronkhorst, Brooks, MKP 등이 있었지요
                                            사용하시는 분들마다 선호하시는 Maker에 따라 호불호가 나눠지는듯 합니다만
                                            개인적으로는 기능이나 정밀도에서는 크게 차이가 나지 않는것 같았습니다.
                                        </dd>
                                        <dd class="cat blog-title">CmelCmel 개발자 세상</dd>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                        <div class="section-more">
                            <a href="#">blog 더보기></a>
                        </div>
                    </div>
                    <div class="row result-section result-series">
                        <div class="section_head">
                            <h2>시리즈</h2>
                            <span class="title_num">1건</span>
                        </div>
                        <div class="jisikin-section-content">
                            <ul class="jisikin-list vod-list">
                                <li>
                                    <div class="search-blog-img">
                                        <img src="/link/resources/images/search-series-poster.PNG" width="150" height="200" alt="">
                                    </div>
                                    <dl>
                                        <dt class="title">
                                            <a href="#" class="jisikin-list-title"><span class="keyword vod-title">MFC</span></a>
                                            <span class="create_date">개봉일  : 2014.11.02</span>
                                        </dt>
                                        <dd class="content">
                                            <p class="descript"><span style="color:gray">내용</span>
                                                아버지의 죽음에 대한 죄책감에 시달리던 ‘심바’는 의욕 충만한 친구들 ‘품바’와 ‘티몬’의 도움으로 희망을 되찾는다.
                                            </p>
                                        </dd>
                                        <dd class="cat blog-title">
                                            <span class="running-time">상영시간<em>2시간20분</em></span>
                                            <span class="grade">관람등급<em>12세 관람가</em></span>
                                            <span class="actor">배우<em>존 파브로</em></span>
                                        </dd>
                                    </dl>
                                </li>                             
                            </ul>
                        </div>
                        <div class="section-more">
                            <a href="#">상세보기></a>
                        </div>
                    </div>
                    <div class="row result-section result-band">
                        <div class="section_head">
                            <h2>BAND</h2>
                            <span class="title_num">1,796건</span>
                        </div>
                        <div class="jisikin-section-content">
                            <ul class="jisikin-list">                         
                                <li>
                                    <dl>
                                        <dt class="title">
                                            <p class="band-title">BAND명 : </p><a href="#" class="jisikin-list-title"><span class="keyword">재헌이의 MFC</span>세상</a>
                                            <span class="create_date">/ 창설일 : 2016.01.14</span>
                                        </dt>
                                        <dd class="content">
                                            <span class="keyword">MFC</span>를 소개 해드리겠습니다.
                                            Mass Flow Controler의 줄임말이죠  이제부터는 <span class="keyword">MFC</span>라고 말씀드리겠습니다.
                                            제가 사용해봤던 제품들은 Bronkhorst, Brooks, MKP 등이 있었지요
                                            사용하시는 분들마다 선호하시는 Maker에 따라 호불호가 나눠지는듯 합니다만
                                            개인적으로는 기능이나 정밀도에서는 크게 차이가 나지 않는것 같았습니다.
                                        </dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt class="title">
                                            <p class="band-title">BAND명 : </p><a href="#" class="jisikin-list-title"><span class="keyword">재헌이의 MFC</span>세상</a>
                                            <span class="create_date">/ 창설일 : 2016.01.14</span>
                                        </dt>
                                        <dd class="content">
                                            <span class="keyword">MFC</span>를 소개 해드리겠습니다.
                                            Mass Flow Controler의 줄임말이죠  이제부터는 <span class="keyword">MFC</span>라고 말씀드리겠습니다.
                                            제가 사용해봤던 제품들은 Bronkhorst, Brooks, MKP 등이 있었지요
                                            사용하시는 분들마다 선호하시는 Maker에 따라 호불호가 나눠지는듯 합니다만
                                            개인적으로는 기능이나 정밀도에서는 크게 차이가 나지 않는것 같았습니다.
                                        </dd>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                        <div class="section-more">
                            <a href="#">BAND 더보기></a>
                        </div>
                    </div>
                    <div class="row result-section result-tv">
                        <div class="section_head">
                            <h2>TV</h2>
                            <span class="title_num">4,506건</span>
                        </div>
                        <div class="jisikin-section-content">
                            <ul class="jisikin-list blog-list">
                                <li>
                                    <div class="search-blog-img">
                                       <a href="#" class="video">
                                            <img src="/link/resources/images/search-video-ex1.jpg" width="140px;" alt="">
                                            <span class="runtime"><span class="blind">재생시간</span>1분 18초</span>
                                            <span class="spmv ico play">동영상 바로보기</span>
                                       </a>
                                    </div>
                                    <dl>
                                        <dt class="title">
                                            <a href="#" class="jisikin-list-title">아이티동스쿨 <span class="keyword">MFC</span>강좌 샘플 영상</a>
                                        </dt>
                                        <dd class="content">
                                        
                                        </dd>
                                        <dd class="cat blog-title video-title">달님 블로그<span class="create_date video_date">2019.02.12</span></dd>
                                    </dl>
                                </li>                             
                                <li>
                                   <div class="search-blog-img">
                                       <a href="#" class="video">
                                            <img src="/link/resources/images/search-video-ex2.jpg" width="140px;" alt="">
                                            <span class="runtime"><span class="blind">재생시간</span>12분 58초</span>
                                            <span class="spmv ico play">동영상 바로보기</span>
                                       </a>
                                    </div>
                                    <dl>
                                        <dt class="title">
                                            <a href="#" class="jisikin-list-title"><span class="keyword">MFC</span>란?</a>
                                        </dt>
                                        <dd class="content">
                                            <span class="keyword">MFC</span>를 소개 해드리겠습니다.
                                            Mass Flow Controler의 줄임말이죠  이제부터는 <span class="keyword">MFC</span>라고 말씀드리겠습니다.
                                            제가 사용해봤던 제품들은 Bronkhorst, Brooks, MKP 등이 있었지요
                                            사용하시는 분들z마다 선호하시는 Maker에 따라 호불호가 나눠지는듯 합니다만
                                            개인적으로는 기능이나 정밀도에서는 크게 차이가 나지 않는것 같았습니다.
                                        </dd>
                                        <dd class="cat blog-title video-title">청주지웰해상기지<span class="create_date video_date">2019.04.12</span></dd>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                        <div class="section-more">
                            <a href="#">TV 더보기></a>
                        </div>
                    </div>
                    <div class="row result-section result-image">
                        <div class="section_head">
                            <h2>이미지</h2>
                            <span class="title_num">26건</span>
                        </div>
                        <div class="search-blog-img">
                           <a href="#">
                            <img src="/link/resources/images/search-img-ex1.jpg" alt="">
                            </a>
                        </div>
                        <div class="search-blog-img">
                            <a href="#">
                            <img src="/link/resources/images/search-img-ex2.jpg" alt="">
                            </a>
                        </div>
                        <div class="search-blog-img">
                            <a href="#">
                            <img src="/link/resources/images/search-img-ex3.jpg" alt="">
                            </a>
                        </div>
                        <div class="search-blog-img">
                            <a href="#">
                            <img src="/link/resources/images/search-img-ex4.jpg" alt="">
                            </a>
                        </div>
     
                        <div class="section-more">
                            <a href="#">이미지 더보기></a>
                        </div>
                    </div>
                    <div class="row paging-row" style="display: none;">
                        <div class="paging" style="padding-left:0px;">             <a href="#" class="paging-strong">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">5</a>
                            <a href="#">6</a>
                            <a href="#">7</a>
                            <a href="#">8</a>
                            <a href="#">9</a>
                            <a href="#">10</a>
                            <a class="next" href="#">다음페이지</a> 
                        </div>
                    </div>
                <!-- 내역 끝 -->
                </div>
                <div class="col-sm-4 search-ranking">
                    <div class="search-rank">
                        <div class="rank-head">
                            <h2>일간검색순위</h2>
                        </div>
                        <div class="rank-list">
                            <ol>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">1</em>
                                            <span class="tit">MFC</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">2</em>
                                            <span class="tit">디자인 극혐띠</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">3</em>
                                            <span class="tit">코딩하고싶어</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">4</em>
                                            <span class="tit">이제 그만하자</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">5</em>
                                            <span class="tit">널사랑한다는말도~</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">6</em>
                                            <span class="tit">똑바로못하면서~~</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">7</em>
                                            <span class="tit">후우우우우우</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">8</em>
                                            <span class="tit">줫이킴이</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">9</em>
                                            <span class="tit">부릅니다</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="bx bx_item">
                                        <span class="keyword">
                                            <em class="num">10</em>
                                            <span class="tit">디자인 그만하자</span>
                                        </span>
                                    </a>
                                </li>
                            </ol>
                            <div class="realtime_srch_area">
                                <p class="dsc">
                                    <time>2019.07.28</time>
                                    . 기준
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script>
    /* 페이징 */
    $(".paging a").click(function(){
        $(this).siblings().removeClass("paging-strong");
        $(this).addClass("paging-strong");
    })
    
    /* 검색 섹션 보이기/감추기 */
    $("#totalsearch").click(function(){
        $(".result-section").css("display", "block");
        $(".paging-row").css("display","none");
        return false;
    })
    
    $("#jisikinsearch, .result-jisikin .section-more").click(function(){
        $(".result-jisikin").css("display", "block");
        $(".result-jisikin").siblings().css("display", "none");
        $(".result-jisikin .section-more").css("display", "none");
        $(".paging-row").css("display","block");
        return false;
    })
    
    $("#blogsearch, .result-blog .section-more").click(function(){
        $(".result-blog").css("display", "block");
        $(".result-blog").siblings().css("display", "none");
        $(".result-blog .section-more").css("display", "none");
        $(".paging-row").css("display","block");
        return false;
    })
    
    $("#seriessearch, .result-series .section-more").click(function(){
        $(".result-series").css("display", "block");
        $(".result-series").siblings().css("display", "none");
        $(".result-series .section-more").css("display", "none");
        $(".paging-row").css("display","block");
        return false;
    })
    
    $("#bandsearch, .result-band .section-more").click(function(){
        $(".result-band").css("display", "block");
        $(".result-band").siblings().css("display", "none");
        $(".result-band .section-more").css("display", "none");
        $(".paging-row").css("display","block");
        return false;
    })
    
    $("#tvsearch, .result-tv .section-more").click(function(){
        $(".result-tv").css("display", "block");
        $(".result-tv").siblings().css("display", "none");
        $(".result-tv .section-more").css("display", "none");
        $(".paging-row").css("display","block");
        return false;
    })
    
    $("#imagesearch, .result-image .section-more").click(function(){
        $(".result-image").css("display", "block");
        $(".result-image").siblings().css("display", "none");
        $(".result-image .section-more").css("display", "none");
        $(".paging-row").css("display","block");
        return false;
    })
    
    /* 검색 옵션 상세 펼치기 */
    $(".search-opt-box").toggle("hide");
    
    $(".search-opt").click(function(){
        $(".search-opt-box").toggle();
    })
    
    /* 해당 카테고리 불켜기 */
    $(".category-btn").click(function(){
        $(this).parent().siblings().find("a").removeClass("cat-on");
        $(this).addClass("cat-on");
        return false;   
    })
    
    /* 자동완성 펼치기 접기 */
    $("#nx_query").focus(function(){ 
        $(".unfold").css("display", "block");
        $("#nx_autoframe_top").css("display", "block");
        $(".fold").css("display", "none");
    });
    
    $("#nx_query").blur(function(){
        $(".unfold").css("display", "none");
        $("#nx_autoframe_top").css("display", "none");
        $(".fold").css("display", "block");
    });
</script>
</body>
</html>