<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="ko">
<head>
<title>네이버 시리즈</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
   /*  .carousel-control {
        width: 4%
    } */
    
    /********** SLIDER **********/
.slider {
  max-width: 940px;
  margin: 0px auto 30px auto;}

.slide-viewer {
    position: relative; /* needed for IE7 */
    overflow: hidden;
    height: 430px;}

.slide-group {
    width: 100%;
    height: 100%;
    position: relative;}

.slide {
    width: 100%;
    height: 100%;
    display: none;
    position: absolute;}

.slide:first-child {
    display: block;}


/********** BUTTONS **********/
.slide-buttons {
  text-align: center;}

.slide-btn {
  border: none;
  background: none;
  color: #000;
  font-size: 200%;
  line-height: 0.5em;}

.slide-btn.active, .slide-btn:hover {
  color: #ed8e6c;
  cursor: pointer;}
  
  
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
    <div class="text-center">
        <!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">
        Indicators
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

        Wrapper for slides
        <div class="carousel-inner">
            <div class="item active">
                <ul class="list-group">
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                </ul>
            </div>

            <div class="item">
                <ul class="list-group">
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                </ul>
            </div>

            <div class="item">
                <ul class="list-group">
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                    <div class="col-sm-3" onclick="location.href='www.naver.com/'"><li class="list-group-item"><img src="no_images.jpg" style="width:100%;"><p>맛있는 녀석들</p><p>김준현, 유민상, 김민경, ...<p><p>구매 1,600원</li></div>
                </ul>
            </div>
        </div>

        Left and right controls
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
        </div> -->
   <section>

      <div class="slider">
        <div class="slide-viewer">
          <div class="slide-group">
            <div class="slide slide-1">
              <img src="http://placehold.it/172X234"/>
              <img src="http://placehold.it/172X234"/>
              <img src="http://placehold.it/172X234"/>
              <img src="http://placehold.it/172X234"/>
            </div>
            <div class="slide slide-2">
              <img src="http://placehold.it/940X430"/>
            </div>
            <div class="slide slide-3">
              <img src="http://placehold.it/940X430"/>
            </div>
            <div class="slide slide-4">
              <img src="http://placehold.it/940X430"/>
            </div>
          </div>
        </div>
        <div class="slide-buttons"></div>
      </div>

    </section>
       
    </div>
    <div class="row">
        <div class="col-sm-8">
            <div class="row">
               <div class="col-sm-6">
                <img src="http://placehold.it/300X130">
                </div>
              <div class="col-sm-6">
                <img src="http://placehold.it/300X130">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6" >
                    최신방송
                </div>
                <div class="col-sm-6 text-right">
                    더보기 >
                </div>
                <div class="col-sm-12" style="text-align: center">
                    <div class="row">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                    </div>
                    <div class="row">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                    </div>
                </div>
            </div>
            
            
            <div class="row">
                <div class="col-sm-6">
                    할인방송
                </div>
                <div class="col-sm-6 text-right">
                    더보기 >
                </div>
                <div class="col-sm-12" style="text-align: center">
                    <div class="row">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                    </div>
                    <div class="row">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                        <img src="../no_images.jpg" width="100" height="180">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                   <div class="row">
                       <div class="col-sm-6">이벤트</div>
                       <div class="col-sm-6 text-right">더보기 ></div>
                   </div>
                    <div class="row">
                       <ul class="list-group">
                           <li class="list-group-item">이벤트1</li>
                           <li class="list-group-item">이벤트2</li>
                           <li class="list-group-item">이벤트3</li>
                       </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                   <div class="row">
                       <div class="col-sm-6">공지사항</div>
                       <div class="col-sm-6 text-right">더보기 ></div>
                   </div>
                    <div class="row">
                        <ul class="list-group">
                           <li class="list-group-item">공지사항1</li>
                           <li class="list-group-item">공지사항2</li>
                           <li class="list-group-item">공지사항3</li>
                       </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-sm-4">
        <div class="row">
            <div class="col-sm-12">나의 이용정보</div>
            <div class="col-sm-6">N포인트</div>
            <div class="col-sm-6 text-right">xxx,xxx원</div>
            <div class="col-sm-12 text-center">포인트 충전하기</div>
        </div>
        <div class="row store-top-10">
            <div class="col-sm-6">방송 스토어 TOP 10</div>
            <div class="col-sm-6 text-right">더보기></div>
            <table class="table table-bordered table-condensed">
                <tbody>
                    <tr>
                        <td rowspan="2"><img src="no_images.jpg" width="40px"; height="50px";></td>
                        <td>제목</td>
                    </tr>
                    <tr>
                        <td>주연배우들</td>
                    </tr>
                    
                    <tr>
                        <td rowspan="2"><img src="no_images.jpg" width="40px"; height="50px";></td>
                        <td>제목</td>
                    </tr>
                    <tr>
                        <td>주연배우들</td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
        </div>
    </div>
</div>
<script>
    $('.carousel').carousel({
      interval: 3000
    })
    
    $('.slider').each(function() {              // 모든 슬라이더를 찾는다
  var $this   = $(this);                    // 현재 슬라이더를 저장한다
  var $group  = $this.find('.slide-group'); // 모든 슬라이드의 부모 요소를 찾는다
  var $slides = $this.find('.slide');       // 모든 슬라이드를 저장하는 jQuery 객체를 생성한다
  var buttonArray  = [];                    // 탐색 버튼을 저장할 배열을 생성한다
  var currentIndex = 0;                     // 현재 슬라이드의 인덱스 번호를 저장한다
  var timeout;                              // 자동 슬라이드의 간격을 지정한다

  function move(newIndex) {          // 이전 슬라이드에서 새 슬라이드로 이동한다
    var animateLeft, slideLeft;      // 변수를 선언한다

    advance();                       // 슬라이드가 이동할 때 advanced() 함수를 다시 호출한다

	// 현재 슬라이드가 보여지고 있으며 애니메이션이 진행 중이면 아무것도 하지 않는다
    if ($group.is(':animated') || currentIndex === newIndex) {  
      return;
    }

    buttonArray[currentIndex].removeClass('active'); // 아이템에서 클래스를 제거한다
    buttonArray[newIndex].addClass('active');        // 새 아이템에 클래스를 추가한다

    if (newIndex > currentIndex) {   // 새 슬라이드의 인덱스가 현재 슬라이드의 인덱스보다 크면
      slideLeft = '100%';            // 새 슬라이드를 오른쪽에 배치한다
      animateLeft = '-100%';         // 현재 슬라이드 그룹을 왼쪽으로 이동한다
    } else {                         // 그렇지 않으면
      slideLeft = '-100%';           // 새 슬라이드를 왼쪽에 배치한다Sit the new slide to the left
      animateLeft = '100%';          // 현재 슬라이드 그룹을 오른쪽으로 이동한다
    }
	// 새 슬라이드를 왼쪽(인덱스가 작은 경우) 또는 오른쪽 (인덱스가 큰 경우)에 배치한다
    $slides.eq(newIndex).css( {left: slideLeft, display: 'block'} );

    $group.animate( {left: animateLeft}, function() {    // 슬라이드에 애니메이션을 적용하고
      $slides.eq(currentIndex).css( {display: 'none'} ); // 이전 슬라이드를 숨긴다
      $slides.eq(newIndex).css( {left: 0} ); // 새 슬라이드의 위치를 지정한다
      $group.css( {left: 0} );               // 슬라이드 그룹의 위치를 지정한다
      currentIndex = newIndex;               // 새로운 이미지의 인덱스를 currentIndex 변수에 저장한다
    });
  }

  function advance() {                     // 타이머를 설정한다
    clearTimeout(timeout);                 // 이전 타이머를 제거한다
    timeout = setTimeout(function() {      // 새로운 타이머를 설정한다
      if (currentIndex < ($slides.length - 1)) { // 슬라이드 < 전체 슬라이드
        move(currentIndex + 1);            // 다음 슬라이드로 이동한다
      } else {                             // 그렇지 않으면
        move(0);                           // 첫 번째 슬라이드로 이동한다
      }
    }, 4000);                              // 대기할 시간을 밀리 초로 지정한다
  }

  $.each($slides, function(index) {
	// button 요소를 생성한다
    var $button = $('<button type="button" class="slide-btn">&bull;</button>');
    if (index === currentIndex) {    // 인덱스가 현재 아이템의 인덱스와 동일하면
      $button.addClass('active');    // active 클래스를 추가한다
    }
    $button.on('click', function() { // 버튼의 이벤트 핸들러를 등록한다
      move(index);                   // move() 함수를 호출한다
    }).appendTo('.slide-buttons');   // 버튼을 가지고 있는 요소로 돌아간다
    buttonArray.push($button);       // 버튼 배열에 추가한다
  });

  advance();                          // 스크립트의 초기화가 완료되었으므로 advance() 메뉴를 홏루하여 슬라이드가 이동하게 한다


});
</script>
</body>