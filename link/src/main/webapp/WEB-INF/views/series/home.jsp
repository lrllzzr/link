<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>LINK 시리즈</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
    <style type="text/css">
        * {font: 15px NanumGothic;}

        a {
            color: black !important;
            text-decoration: none !important
        }

        a:hover {
            color: black;
        }
        
        
        #slide-box {
            max-width: 1000px;
            margin: 10px auto;
        }
		
		.likes-vod-img-size {
			width: 155px;
            height: 228px
		}

        .margin-top {margin-top: 20px;}
        
        
        .price {color: #649dfa;}

        .round {
            border: 1px solid #649dfa;
            border-radius: 20px;
        }

        .look-more {float: right;}

        .arrays {margin: 30px 0px;}

        #point {
            color: #649dfa;
            float: right;
            text-align: right;
        }
        
        .title{display: block;}
        
        .top-10{height: 60px; margin: 10px 0;}
        
    </style>
</head>

<body style="background-color: #ddd;">
<%@ include file="common/nav.jsp" %>
    <div class="container-fluid" style="background-color: white;">
        <!-- 슬라이드 -->
        <div class="row" id="slide-box">
            <div class="col-sm-1"></div>
            
            <c:forEach var="vod" items="${likesVods }">
            <div class="col-sm-2">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <a href="#"><img class="likes-vod-img-size" src="http://placehold.it/155X228"></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <h4><a href=""><strong>${vod.title }</strong></a></h4>
                        <p>${vod.actor }</p>
                        <p class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vod.price }"></fmt:formatNumber>원</p>
                    </div>
                </div>
            </div>
            </c:forEach>
            
            <!-- <div class="col-sm-2">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <a href="#"><img src="http://placehold.it/155X228"></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <h4><a href=""><strong>호텔 델루나</strong></a></h4>
                        <p>아이유, 여진구, 조현철</p>
                        <p class="price">1,650원</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <a href="#"><img src="http://placehold.it/155X228"></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <h4><a href=""><strong>호텔 델루나</strong></a></h4>
                        <p>아이유, 여진구, 조현철</p>
                        <p class="price">1,650원</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <a href="#"><img src="http://placehold.it/155X228"></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <h4><a href=""><strong>호텔 델루나</strong></a></h4>
                        <p>아이유, 여진구, 조현철</p>
                        <p class="price">1,650원</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <a href="#"><img src="http://placehold.it/155X228"></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <h4><a href=""><strong>호텔 델루나</strong></a></h4>
                        <p>아이유, 여진구, 조현철</p>
                        <p class="price">1,650원</p>
                    </div>
                </div>
            </div> -->
        </div>
    </div>

    <div class="container">
        <!-- 컨텐츠-->
        <div class="row margin-top">
            <div class="col-sm-8 col-sm-offset-1">
               <!-- 최신 방송 -->
                <div class="col-sm-12 round well">
                    <div class="row">
                        <div class="col-sm-12"> <!--  div-header 삭제함 -->
                            <strong>최신 방송</strong>
                            <div class="look-more"><a href="#">더 보기</a></div>
                        </div>
                    </div>

                    <div class="row arrays">
                    <%-- <c:forEach var="vod" items="brandNewVods"> --%>
                        <div class="col-sm-3">
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <a href="#"><img src="http://placehold.it/93X129" alt=""></a>
                                    <%-- <a href="#"><img src="/resources/images/series/vods/${vod.img }" alt=""></a> --%>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <p><strong>호텔 델루나</strong></p>
                                    <%-- <p><strong>${vod.title }</strong></p> --%>
                                    <p class="price">1,650원</p>
                                    <%-- <p class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vod.price }"></fmt:formatNumber>원</p> --%>
                                </div>
                            </div>
                        </div>
                    <%-- </c:forEach> --%>
                        <div class="col-sm-3">
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <a href="#"><img src="http://placehold.it/93X129" alt=""></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <p><strong>호텔 델루나</strong></p>
                                    <p class="price">1,650원</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <a href="#"><img src="http://placehold.it/93X129" alt=""></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <p><strong>호텔 델루나</strong></p>
                                    <p class="price">1,650원</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <a href="#"><img src="http://placehold.it/93X129" alt=""></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <p><strong>호텔 델루나</strong></p>
                                    <p class="price">1,650원</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-12 round well">
                    <div class="row">
                        <div class="col-sm-12">
                            <strong>공지사항</strong>
                            <div class="look-more"><a href="noticelist.do">더 보기</a></div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <ul class="list-group">
                        <c:forEach var="notice" items="${notices }"><li class="list-group-item">${notice.title }</li></c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="row">
                    <div class="col-sm-12 round well">
                        <div class="row">
                            <div class="col-sm-12"><strong>나의 이용정보</strong></div> <!-- div-header 삭제함 -->
                        </div>
                        <div class="row">
                            <div class="col-sm-6">나의 포인트 : </div>
                            <div class="col-sm-6" id="point"><span>91,444원</span></div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 round well">
                        <div class="row"> <!--  div-header 삭제함 -->
                           <div class="col-sm-12">
                            <strong>방송 TOP 5</strong>
                            <div class="look-more"><a href="toprank.do">더 보기</a></div>
                           </div>
                        </div>
                        
                        <div class="row">
                             <ol>
                                <li class="top-10">
                                  <div class="col-sm-3">
                                        <a href="#" class="">
                                           <img src="http://placehold.it/39X60" alt="">
                                        </a>
                                  </div>
                                  <div class="col-sm-9">
                                      <a href="#" class="title"><strong>호텔 델루나</strong></a>
                                      <small>아이유, 여진구, 조현철, ...</small>
                                  </div>
                                </li>
                                <li class="top-10">
                                  <div class="col-sm-3">
                                        <a href="#" class="">
                                           <img src="http://placehold.it/39X60" alt="">
                                        </a>
                                  </div>
                                  <div class="col-sm-9">
                                      <a href="#" class="title"><strong>호텔 델루나</strong></a>
                                      <small>아이유, 여진구, 조현철, ...</small>
                                  </div>
                                </li>
                                <li class="top-10">
                                  <div class="col-sm-3">
                                        <a href="#" class="">
                                           <img src="http://placehold.it/39X60" alt="">
                                        </a>
                                  </div>
                                  <div class="col-sm-9">
                                      <a href="#" class="title"><strong>호텔 델루나</strong></a>
                                      <small>아이유, 여진구, 조현철, ...</small>
                                  </div>
                                </li>
                                <li class="top-10">
                                  <div class="col-sm-3">
                                        <a href="#" class="">
                                           <img src="http://placehold.it/39X60" alt="">
                                        </a>
                                  </div>
                                  <div class="col-sm-9">
                                      <a href="#" class="title"><strong>호텔 델루나</strong></a>
                                      <small>아이유, 여진구, 조현철, ...</small>
                                  </div>
                                </li>
                                <li class="top-10">
                                  <div class="col-sm-3">
                                        <a href="#" class="">
                                           <img src="http://placehold.it/39X60" alt="">
                                        </a>
                                  </div>
                                  <div class="col-sm-9">
                                      <a href="#" class="title"><strong>호텔 델루나</strong></a>
                                      <small>아이유, 여진구, 조현철, ...</small>
                                  </div>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>