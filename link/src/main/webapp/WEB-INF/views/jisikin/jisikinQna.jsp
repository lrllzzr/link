<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Link 지식인 > Q&A</title>
    <link rel="shortcut icon" type="image/x-icon" href="/link/resources/images/shortcut-icon.PNG">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="/link/resources/js/jquery.timeago.js"></script>
    <script src="/link/resources/js/jquery.timeago.ko.js"></script>
    <link rel="stylesheet" href="/link/resources/css/blog/blog.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinmain.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinQna.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script>
	
		var app = angular.module('myApp', []);
		
		app.controller('categoryCtrl', function($scope, $http){
            // $scope에 boxoffice라는 이름으로 빈 배열을 저장한다.
            $scope.categories = [];
            
            $scope.searchCategories = function(categoryNo){
                
                var url = "byCategory.do?categoryNo="+categoryNo;
                
                $http.get(url)
                    .then(function(response){
                    	$(".list2").empty();
                    	
                        var data = response.data;   // 응답데이터 조회
                        console.log(data);
                        $scope.jisikinByCategory = data;
                }, function(){
                    alert("조회 중 오류가 발생하였습니다.");
                })
            }
            
        })
	</script>
</head>
<body  ng-app="myApp" ng-controller="categoryCtrl">
    <%@ include file="../common/nav.jsp" %>
<div class="container">
   <%@include file="jisikin-nav.jsp" %>
   
   <!-- 메인 컨텐츠 시작 -->
    
<!-- 첫번째 섹션-->
   <div class="row">
       <div class="col-sm-9 well wrap_qna">
       <div class="spot_area" style="width: 100%;">
            <div class="spot_area_inner">
            <div class="s_header">
                <h2>Q&amp;A</h2>
                <div class="ques_cnt">
                    <dl>
                    <dt class="itm">오늘의 새 질문</dt>
                    <dd id="todayQuestion">${countToday }</dd>
                    <dt class="itm3" style="background-position:0 -24px;">오늘의 답변</dt>
                    <dd id="todayAnswer">49,690</dd>
                    </dl>
                </div>
            </div>
                    <div class="s_body">
                        <div class="spot_directory">
                            <ul style="padding-left:50px;">
                            	<c:forEach var="c" items="${categoriesParent }">
                            		<li style="list-style:square !important;">
                            			<a class="a-category" href="#" data-value="${c.no }" ng-click="searchCategories('${c.no}')" >${c.name }</a>
                            		</li>
                            	</c:forEach>
                            </ul>
                        </div>
                        <!-- 인기(지역) 시작-->	
                        <!-- 인기(지역) 끝 -->
                        <!-- 인기 태그 -->
                        <!-- 인기 태그 -->
                    </div>
        </div>
       </div>
       <div class="">
            <div id="list_noanswer" class="qna_list_noanswer">
                <div class="board_box">

                <h3 class="blind">새 질문 게시판</h3>
                    <table cellspacing="0" class="boardtype2" width="100%">
                    <caption><span class="blind">새 질문 게시글 1페이지 목록</span></caption>
                    <colgroup>
                    <col>
                    <col width="94">
                    <col width="47">
                    <col width="66">
                    </colgroup>

                    <thead>
                    <tr>
                    <th scope="col" class="title "><a href="#" class="option_grade _nclicks:kls_new.bybest">내공<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a>제목</th>
                    <th scope="col">분야</th>
                    <th scope="col" class="" id="listAnswerField"><a href="#" class="_nclicks:kls_new.byanswer">답변<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a></th>
                    <th scope="col" class="on"><a href="#" class="_nclicks:kls_new.bydate">작성<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a></th>
                    </tr>
                    </thead>

                    <tbody id="au_board_list">

						<tr ng-repeat="question in jisikinByCategory">
							<td class="title">
	                                <a href="#" rel="KIN" target="_blank" class="">{{question.title}}</a>
	                            </td>
	                            <td class="field"><a href="#" class="">{{question.category.name}}</a></td>
	                            <td class="t_num">0</td>
	                            <td class="t_num tg">{{question.createTime }}</td>
	                        </tr>
	                 </tbody>
	                        
	                 <tbody id="au_board_list" class="list2">

						<c:forEach var="all" items="${allJisikin }">
	                        <tr>
	                            <td class="title">
	                                <a href="#" rel="KIN" target="_blank" class="">${all.title }</a>
	                            </td>
	                            <td class="field"><a href="#" class="">${all.category.name }</a></td>
	                            <td class="t_num">0</td>
	                            <td class="t_num tg">${all.createTime }</td>
	                        </tr>
						</c:forEach>

                    </tbody>
                    </table>	
                    

        <ww:if test="false">

        </ww:if>
        <ww:else>

        </ww:else>



        <div class="paging space _tag_pager" style="display: none;">
            <div class="nav" style="display:block;"> <p class="btn"><a href="#" class="pr-prev _pre"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_prev.gif" width="23" height="23" alt="이전" title="이전"></a><a href="#" class="pr-next _next"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_next.gif" width="22" height="23" alt="다음" title="다음"></a></p></div>
        </div>
        <div class="paginate _default_pager">

                        <a href="#" class="on" title="선택됨">1</a>	
                        <a href="#">2</a>	
                        <a href="#">3</a>	
                        <a href="#">4</a>	
                        <a href="#">5</a>	
                        <a href="#">6</a>	
                        <a href="#">7</a>	
                        <a href="#">8</a>	
                        <a href="#">9</a>	
                        <a href="#">10</a>	
                    <a href="#" class="next ">다음페이지</a>

        </div>

        <div class="search">
            <form name="bottom_search" id="bottom_search" method="get">
            <input type="hidden" name="cs" value="utf8">
            <fieldset>
                <legend>검색영역</legend>            



                    <label for="svc_type" class="blind">지식 분류 선택</label>
                    <select name="section" id="svc_type">
                    <option value="qna" selected="">Q&amp;A</option>
                    <option value="junior">쥬니버Q&amp;A</option>
                    <option value="worry">고민Q&amp;A</option>
                    <option value="local">지역&amp;플레이스</option>
                    </select>




                <input type="text" accesskey="s" title="검색어" class="keyword" name="query" id="au_input_query">
                <input type="image" alt="검색" src="https://ssl.pstatic.net/static/kin/09renewal/btn_search.gif" id="au_search_submit">
            </fieldset>
            </form>
        </div>
            </div>
        </div>  
       </div>
   </div>
       <div class="col-sm-3 aside-content">
            <div class="aside-login" style="display: none;">
               <p class="top_text">질문과 답변을 하고 싶다면,</p>
                <button type="text" class="btn btn-default">
                    <img src="/link/resources/images/link_logo.PNG" alt="" style="width: 50%;"><strong>로그인</strong>
                </button>
                <div class="row sign_area">
                    <div class="info_find">
                        <a href="#" class="" target="_blank">아이디 찾기</a>
                        <span class="bar"></span>
                        <a href="#" target="_blank">비밀번호 찾기</a>
                    </div>

                    <div class="sign_in">
                        <a href="#">회원가입</a>
                    </div>
			    </div>
            </div>
            <div class="aside-login" style="background-color: #f8f8f8; border: 1px solid #e3e3e3;">
                <div id="aside_login" class="aside_myinfo">
	<h2 class="blind">NAVER <em>로그인</em> 영역</h2>
	
		<div class="my_wrap">
			<a href="/myinfo/index.nhn" onclick="nhn.Kin.Utility.nClicks('kmy_lgd.id','','',event);">
				<div class="my_photo">
					<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/4.png" alt="프로필이미지" class="img" width="50" height="50">
				</div>
				<div class="my_service">
					<p class="user_id ellipsis">allman956</p>
					<p class="user_mykin">프로필 바로가기 <span>&gt;</span></p>
				</div>
			</a>
			<span class="btn_login_area">
				<a href="https://nid.naver.com/nidlogin.logout?retrul=https%3A%2F%2Fkin.naver.com%2Fqna%2Flist.nhn" onclick="nhn.Kin.Utility.nClicks('kmy_lgd.out', '', '', event);" class="btn_login">로그아웃</a>
			</span>
		<div class="mykin_wrap _tab_myarea">
					<div class="mykin_tab_content tc-panel tc-selected"><h4 class="blind">나의 지식iN</h4><div class="scroll_area _panel"><div class="gradeup_info">
		<div class="lv_area grd_lv4">
			<div class="mylv">
				<div class="gauge" id="level_guage">
					<div class="grd_wrap">
						
						<div class="inner" style="width: 14%;">
							<div class="grd_bar"><span class="grd_action"></span></div>
						</div>
					</div>
					<div class="my_level_num"  style="padding-top: 40px;">
					    <strong style="display: block;">내공:</strong> <strong style="display:block;">1,704</strong>
					</div>
				</div>
			</div>
		</div>
	</div></div></div>
			
		</div>
		</div>
	
	
	
			
	
	<!-- 관심키워드 추가 레이어 -->

</div>
            </div>
            <div style="margin-top: 5px;">
                <div class="aside aside_tag well">
                    <h4>지식iN 인기태그</h4>
                    <div class="tag_wrap">
                            <a href="#" class="tag">#안병민</a>
                            <a href="#" class="tag">#블라디보스톡</a>
                            <a href="#" class="tag">#중앙HTA</a>
                            <a href="#" class="tag">#모텔</a>
                            <a href="#" class="tag">#메인보드</a>
                            <a href="#" class="tag">#필터</a>
                            <a href="#" class="tag">#사주풀이</a>
                            <a href="#" class="tag">#식품공학과</a>
                            <a href="#" class="tag">#디포유</a>
                            <a href="#" class="tag">#네이버지도</a>
                    </div>
                </div>
                <div class="aside aside_statistics well">
                    <h4>오늘의 질문과 답변</h4>
                    <div class="stats stats_today">
                        <span class="blind">질문</span><strong class="num">${countToday }</strong><em class="slash sp_common">/</em><span class="blind">답변</span><strong class="num">28,849</strong>
                        <!--  오늘날짜 뿌리기 -->
                        <c:set var="now" value="<%=new java.util.Date()%>" />
                        <p class="date_info"><fmt:formatDate value="${now }" pattern="yyyy.MM.dd"/></p>
                    </div>
                    <h4>누적 답변수</h4>
                    <div class="stats stats_accum">
                        <strong class="num">329,673,356</strong>
                        <p class="date_info">since 2019</p>
                    </div>
                </div>
            </div>
        </div>
   </div>
</div>

<script>
	$(".a-category").click(function(){
		var categoryNo = $(this).attr("data-value");
		console.log(categoryNo);
		
		/* $.ajax({
			url:"byCategory.do",
			data:{categoryNo:categoryNo},
			dateType:"JSON",
			success:function(result){

			}
		})
		
		return false; */
	})
	
	

     $(document).ready(function(){
         
        $('.dropdown,.dropdown-menu').hover(function(){

          if($(window).width()>=768){
            $(this).addClass('open')
            return false;
          }
          
        },function(){
          if($(window).width()>=768){
            $(this).removeClass('open')
            return false;
          }
        })
        
        // timeAgo
         $(".tg").each(function(){
            var timeago_t = jQuery.timeago( new Date(parseInt($(this).text())));
            console.log(timeago_t);
            $(this).text(timeago_t);
         });
         

     });

</script>
</body>
</html>