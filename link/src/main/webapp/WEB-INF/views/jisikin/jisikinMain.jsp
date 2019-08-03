<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Link 지식인</title>
    <link rel="shortcut icon" type="image/x-icon" href="/link/resources/images/shortcut-icon.PNG">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/link/resources/css/blog/blog.css">
	<link rel="stylesheet" href="/link/resources/css/jisikin/jisikinmain.css">
	<link rel="stylesheet" href="/link/resources/css/jisikin/jisikinQna.css">
</head>
<body>
    <%@ include file="../common/nav.jsp" %>
<div class="container">
   <%@include file="jisikin-nav.jsp" %>
   
   <!-- 메인 컨텐츠 시작 -->
    
<!-- 첫번째 섹션-->
    <div class="row well">
       <div class="col-sm-3 jisik-section-1">
            <div class="row">
               <img src="/link/resources/images/jisikin-event1.PNG" style="height: 150px; width:100%;">
            </div>
            <div class="row" style="height: 50px;">
                  여름이 좋은 이유는?
            </div>
       </div>
       <div class="col-sm-3 jisik-section-1">
           <div class="row">
               <img src="/link/resources/images/jisikin-event1.PNG" style="height: 150px; width:100%;">
            </div>
            <div class="row" style="height: 50px;">
                  여름이 좋은 이유는?
            </div>
       </div>
       <div class="col-sm-3 jisik-section-1">
           <div class="row">
               <img src="/link/resources/images/jisikin-event1.PNG" style="height: 150px; width:100%;">
            </div>
            <div class="row" style="height: 50px;">
                  여름이 좋은 이유는?
            </div>
       </div>
       <div class="col-sm-3">
<!-- 이벤트 캐러셀 -->
           <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img src="/link/resources/images/detail_gogi1.jpg" alt="..." style="height: 200px; width: 100%;">
              <div class="carousel-caption">
                오늘의 첫 번째 이벤트!
              </div>
            </div>
            <div class="item">
              <img src="/link/resources/images/detail_gogi1.jpg" alt="..." style="height: 200px; width: 100%;">
              <div class="carousel-caption">
                오늘의 첫 번째 이벤트!
              </div>
            </div>
            <div class="item">
              <img src="/link/resources/images/detail_gogi2.jpg" alt="..." style="height: 200px; width: 100%;">
              <div class="carousel-caption">
                오늘의 두 번째 이벤트!
              </div>
            </div>
            <div class="item">
              <img src="/link/resources/images/detail_gogi3.jpg" alt="..." style="height: 200px; width: 100%;">
              <div class="carousel-caption">
                오늘의 세 번째 이벤트!
              </div>
            </div>
            <div class="item">
              <img src="/link/resources/images/flower3.jpg" alt="..." style="height: 200px; width: 100%;">
              <div class="carousel-caption">
                오늘의 네 번째 이벤트!
              </div>
            </div>
          </div>
        </div>
<!-- 이벤트 캐러셀 끝-->
       </div>
   </div>
   
<!-- 두번째 섹션-->
    <div class="row">
        <div class="col-sm-9">
            <div class="row">
                <div class="col-sm-6 well">
                    <strong>지식iN 통계 답변자</strong>
                    <nav class="text-center answer_cate">
                        <ul class="pagination">
                            <li>
                              <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                            <li><a href="#">교육,학문</a></li>
                            <li><a href="#">게임</a></li>
                            <li><a href="#">생활</a></li>
                            <li><a href="#">사회,정치</a></li>
                            <li><a href="#">경제</a></li>
                            <li>
                              <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                          </ul>
                    </nav>
                    <img src="/link/resources/images/jisikin-test-chart.PNG" alt="">
                </div>
                <div class="col-sm-6 well">
                    <a href="#" class="jisikin-section-2-qna">많이 본 Q&A</a>
                    <span class="title_bar"></span>
                    <a href="#" class="jisikin-section-2-qna">많이 한 질문 키워드</a>
                    <div class="ranking-section-area">
                        <ul class="ranking-section">
                            <li class="ranking-item">
                                <span class="no">1</span>
                                <a href="#" class="ranking-title">현아 이 사진 고화질좀 주세요 ㅠ</a>
                                <a href="#" class="text">현아 이 사진 고화질좀 주세요..</a>
                                <span class="recommend-num">조회수 5008</span>
                                <span class="reply-num">답변수 1</span>
                            </li>
                            <li class="ranking-item">
                                <span class="no">2</span>
                                <a href="#" class="ranking-title">현아 이 사진 고화질좀 주세요 ㅠ</a>
                                <a href="#" class="text">현아 이 사진 고화질좀 주세요..</a>
                                <span class="recommend-num">조회수 5008</span>
                                <span class="reply-num">답변수 1</span>
                            </li>
                            <li class="ranking-item">
                                <span class="no">3</span>
                                <a href="#" class="ranking-title">현아 이 사진 고화질좀 주세요 ㅠ</a>
                                <a href="#" class="text">현아 이 사진 고화질좀 주세요..</a>
                                <span class="recommend-num">조회수 5008</span>
                                <span class="reply-num">답변수 1</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="answer-wrab row well">
                <div id="noanswer_tab" class="title_area">
                    <ul style="width: 100%;" class="text-center">
                        <li style="width: 40%;" class="tc-tab text-center"><a href="#" class="title on" onclick="" id="contentsOfMain">답변을 기다리는 질문</a></li>
                        <li style="width: 18%;" class="tc-tab"><span class="bar2"></span></li>
                        <li style="width: 40%;" class="tc-tab text-center"><a href="#" class="title" onclick="">답변을 기다리는 관심질문</a></li>
                    </ul>
                </div>
                <div class="row" style="padding-top: 40px;">
                    <div class="col-sm-3">
                        <div class="directory_area _qna_menu">
                            <div class="directory_box _list_area">
                                <ul class="directory_list _qna_list">
                                    <li><a href="#">전체</a></li>
                                    <li><a href="#">교육,학문</a></li>
                                    <li><a href="#">컴퓨터통신</a></li>
                                    <li><a href="#">게임</a></li>
                                    <li><a href="#">엔터테인먼트,예술</a></li>
                                    <li><a href="#">생활</a></li>
                                    <li><a href="#">건강</a></li>
                                    <li><a href="#">사회,정치</a></li>
                                    <li><a href="#">경제</a></li>
                                    <li><a href="#">여행</a></li>
                                    <li><a href="#">스포츠,레저</a></li>
                                    <li><a href="#">쇼핑</a></li>
                                    <li><a href="#">쥬니버Q&A</a></li>
                                    <li><a href="#">지역&플레이스</a></li>
                                    <li><a href="#">고민Q&A</a></li>
                                    <li><a href="#">오픈사전</a></li>
                                </ul> 
                            </div>
                        </div>
                    </div>
                    <span class="border"></span>
                    <div class="col-sm-9">
                        <div class="content_area">
                            <div class="heading_area">
<!--                                <div class="heading_title">
                                    <h5 class="tit ellipsis">
                                     <a href="#"><strong>전체</strong></a></h5>
                                </div>-->
                                <div class="sort_list_group_right">
                                   <h5 class="tit ellipsis">
                                     <a href="#"><strong>전체</strong></a></h5>
                                    <ul class="sort_list_module _sortOptionList">
                                        <li class="is_active _answer"><a href="#" role="button" class="_sort_option _param('answer')"><i class="ico_sort _sort_option _param('answer')"></i>답변적은순</a></li>
                                        <li class="_recent"><a href="#" role="button" class="_sort_option _param('recent')"><i class="ico_sort _sort_option _param('recent')"></i>최신순</a></li>
                                        <li class="_betPoint"><a href="#" role="button" class="_sort_option _param('betPoint')"><i class="ico_sort _sort_option _param('betPoint')"></i>내공높은순</a></li>
                                    </ul>
				                </div>
                            </div>
                            <div class="answer_list" style="padding-top: 40px; display: block;">
                                <div class="answer_box">
                                    <div class="tit_wrap ">
                                        <a href="#" rel="KIN" target="_blank">
                                                <span class="power_grade"><span class="blind">내공</span>100</span>
                                            <span class="tit_txt">일본노래인데 영어로 번역해서 누가불렀는데</span>

                                        </a>
                                    </div>
                                    <div class="update_info">
                                        <span class="num_answer">답변 <em>0</em></span>
                                        <span class="info"><a href="#">번역, 통역</a></span>
                                        <span class="info">방금</span>
                                    </div>
                                </div>
                                
                                <div class="answer_box">
                                    <div class="tit_wrap">
                                        <a href="#" rel="KIN" target="_blank">
                                                <span class="power_grade"><span class="blind">내공</span>50</span>

                                            <span class="tit_txt">이제 그만 디자인하고싶다 직워 죽을 것 같아요!!</span>
                                        </a>
                                    </div>
                                    <div class="update_info">
                                        <span class="num_answer">답변 <em>0</em></span>
                                        <span class="info"><a href="#">번역, 통역</a></span>
                                        <span class="info">2분전</span>
                                    </div>
                                </div>
                                
                                <div class="answer_box">
                                    <div class="tit_wrap">
                                        <a href="#" rel="KIN" target="_blank">
                                                <span class="power_grade"><span class="blind">내공</span>50</span>

                                            <span class="tit_txt">이제 그만 디자인하고싶다 직워 죽을 것 같아요!!</span>
                                        </a>
                                    </div>
                                    <div class="update_info">
                                        <span class="num_answer">답변 <em>0</em></span>
                                        <span class="info"><a href="#">번역, 통역</a></span>
                                        <span class="info">2분전</span>
                                    </div>
                                </div>
                                
                                <div class="answer_box">
                                    <div class="tit_wrap">
                                        <a href="#" rel="KIN" target="_blank">
                                                <span class="power_grade"><span class="blind">내공</span>50</span>

                                            <span class="tit_txt">이제 그만 디자인하고싶다 직워 죽을 것 같아요!!</span>
                                        </a>
                                    </div>
                                    <div class="update_info">
                                        <span class="num_answer">답변 <em>0</em></span>
                                        <span class="info"><a href="#">번역, 통역</a></span>
                                        <span class="info">2분전</span>
                                    </div>
                                </div>
                                
                                <div class="answer_box">
                                    <div class="tit_wrap">
                                        <a href="#" rel="KIN" target="_blank">
                                                <span class="power_grade"><span class="blind">내공</span>50</span>

                                            <span class="tit_txt">이제 그만 디자인하고싶다 직워 죽을 것 같아요!!</span>
                                        </a>
                                    </div>
                                    <div class="update_info">
                                        <span class="num_answer">답변 <em>0</em></span>
                                        <span class="info"><a href="#">번역, 통역</a></span>
                                        <span class="info">2분전</span>
                                    </div>
                                </div>
                                
                                <div class="answer_box">
                                    <div class="tit_wrap">
                                        <a href="#" rel="KIN" target="_blank">
                                                <span class="power_grade"><span class="blind">내공</span>50</span>

                                            <span class="tit_txt">이제 그만 디자인하고싶다 직워 죽을 것 같아요!!</span>
                                        </a>
                                    </div>
                                    <div class="update_info">
                                        <span class="num_answer">답변 <em>0</em></span>
                                        <span class="info"><a href="#">번역, 통역</a></span>
                                        <span class="info">2분전</span>
                                    </div>
                                </div>
                                
                                <div class="answer_box">
                                    <div class="tit_wrap">
                                        <a href="#" rel="KIN" target="_blank">
                                                <span class="power_grade"><span class="blind">내공</span>50</span>

                                            <span class="tit_txt">이제 그만 디자인하고싶다 직워 죽을 것 같아요!!</span>
                                        </a>
                                    </div>
                                    <div class="update_info">
                                        <span class="num_answer">답변 <em>0</em></span>
                                        <span class="info"><a href="#">번역, 통역</a></span>
                                        <span class="info">2분전</span>
                                    </div>
                                </div>
                                
                                <div class="answer_box">
                                    <div class="tit_wrap">
                                        <a href="#" rel="KIN" target="_blank">
                                                <span class="power_grade"><span class="blind">내공</span>50</span>

                                            <span class="tit_txt">이제 그만 디자인하고싶다 직워 죽을 것 같아요!!</span>
                                        </a>
                                    </div>
                                    <div class="update_info">
                                        <span class="num_answer">답변 <em>0</em></span>
                                        <span class="info"><a href="#">번역, 통역</a></span>
                                        <span class="info">2분전</span>
                                    </div>
                                </div>
                            </div>                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-3 aside-content">
            <c:choose>
       	<c:when test="${empty LOGIN_USER}">
            <div class="aside-login"">
               <p class="top_text">질문과 답변을 하고 싶다면,</p>
                <button type="text" class="btn btn-default" onclick ="location.href = '/link/loginform.do'">
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
       	</c:when>
       	<c:otherwise>
			<div class="aside-login" style="background-color: #f8f8f8; border: 1px solid #e3e3e3;">
				<div id="aside_login" class="aside_myinfo">
					<h2 class="blind">
						NAVER <em>로그인</em> 영역
					</h2>
					<div class="my_wrap">
						<a href="/myinfo/index.nhn">
							<div class="my_photo">
								<img
									src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/4.png"
									alt="프로필이미지" class="img" width="50" height="50">
							</div>
							<div class="my_service">
								<p class="user_id ellipsis">${LOGIN_USER.id }</p>
								<p class="user_mykin">
									프로필 바로가기 <span>&gt;</span>
								</p>
							</div>
						</a> <span class="btn_login_area"> <a
							href="/link/logout.do"
							class="btn_login">로그아웃</a>
						</span>
						<div class="mykin_wrap _tab_myarea">
							<div class="mykin_tab_content tc-panel tc-selected">
								<h4 class="blind">나의 지식iN</h4>
								<div class="scroll_area _panel">
									<div class="gradeup_info">
										<div class="lv_area grd_lv4">
											<div class="mylv">
												<div class="gauge" id="level_guage">
													<div class="grd_wrap">

														<div class="inner" style="width: 14%;">
															<div class="grd_bar">
																<span class="grd_action"></span>
															</div>
														</div>
													</div>
													<div class="my_level_num" style="padding-top: 40px;">
														<strong style="display: block;">내공:</strong> <strong
															style="display: block;">${LOGIN_USER.mentalPoint }</strong>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
       	</c:otherwise>
       </c:choose>
       
       
            <div style="margin-top: 5px;">
                <div class="aside aside_tag well">
                    <h4>지식iN 인기태그</h4>
                    <div class="tag_wrap">
                    		<c:forEach var="tag" items="${toptag }">
	                            <a href="#" class="tag">#${tag.tagName }</a>
                    		</c:forEach>
                    </div>
                </div>
                <div class="aside aside_statistics well">
                    <h4>오늘의 질문과 답변</h4>
                    <div class="stats stats_today">
                        <span class="blind">질문</span><strong class="num">${countToday }</strong><em class="slash sp_common">/</em><span class="blind">답변</span><strong class="num">28,849</strong>
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
    $(document).ready(function(){
         
        $('.dropdown,.dropdown-menu').hover(function(){

          if($(window).width()>=768){
            $(this).addClass('open').trigger('shown.bs.dropdown', relatedTarget)
            return false;
          }
          
        },function(){
          if($(window).width()>=768){
            $(this).removeClass('open').trigger('hidden.bs.dropdown', relatedTarget)
            return false;
          }
        })
          
      })


</script>
</body>
</html>