<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Link 지식인 > 답변하기</title>
    <link rel="shortcut icon" type="image/x-icon" href="/link/resources/images/shortcut-icon.PNG">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/link/resources/css/blog/blog.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinmain.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinQna.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinQuestion.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinAnswer.css">
</head>
<body>
    <%@ include file="../common/nav.jsp" %>
<div class="container">
   <%@include file="jisikin-nav.jsp" %>
</div>
   
   
   <!-- 메인 컨텐츠 시작 -->
<!-- 질문 섹션-->
<div class="container">
    <div class="row ">
        <div class="col-sm-9 well">
            <div class="answer_wrap">
                <div class="tc-panel tc-selected">
				<!-- 내용 시작 -->
<h4 class="blind">답변을 기다리는 질문</h4>
<div class="content_wrap _noanswer_wrap row  section_answer">
	<div class="directory_area _qna_menu col-sm-2" style="width:190px">
		<div class="directory_box _list_area">
			<ul class="directory_list _qna_list">
				
					
						<li dirid="0" class="on"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '0', '1', event);">전체<span class="blind _selected">질문 목록 선택됨</span></a></li>						
					
						<li dirid="11"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '11', '2', event);">교육, 학문</a></li>						
					
						<li dirid="1"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '1', '3', event);">컴퓨터통신</a></li>						
					
						<li dirid="2"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '2', '4', event);">게임</a></li>						
					
						<li dirid="3"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '3', '5', event);">엔터테인먼트, 예술</a></li>						
					
						<li dirid="8"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '8', '6', event);">생활</a></li>						
					
						<li dirid="7"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '7', '7', event);">건강</a></li>						
					
						<li dirid="6"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '6', '8', event);">사회, 정치</a></li>						
					
						<li dirid="4"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '4', '9', event);">경제</a></li>						
					
						<li dirid="9"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '9', '10', event);">여행</a></li>						
					
						<li dirid="10"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '10', '11', event);">스포츠, 레저</a></li>						
					
						<li dirid="5"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '5', '12', event);">쇼핑</a></li>						
					
						<li dirid="13"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '13', '13', event);">쥬니버Q&amp;A</a></li>						
					
						<li dirid="12"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '12', '14', event);">지역&amp;플레이스</a></li>						
					
						<li dirid="20"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '20', '15', event);">고민Q&amp;A</a></li>						
					
				
				
			</ul> 
		</div>
	</div>
	    <span class="answer-border"></span>
	<div class="content_area _dir_content col-sm-9" style="display: block;">
		
		
		
		<div class="heading_area _dir_content_title" style="display: block;">
			
			<h5 class="tit ellipsis _heading_title">
		
			<a href="/qna/list.nhn" onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dirn', '0', '', event);"><strong>전체</strong></a>

	</h5>
			
			<div class="search_area _heading_search" onclick="nhn.Kin.Utility.nClicks('nql_nlg.search', '', '', event);">
				<input type="text" class="search_input _search_input" title="검색어 입력">
				<a href="#"><span class="glyphicon glyphicon-search"></span></a>
			</div>
		</div>
		
		
		<div class="answer_list _noanswer_list" style="display: block;"><div class="answer_box _noanswerItem no_tag first">
		<div class="tit_wrap ">
			<a href="/qna/detail.nhn?d1id=3&amp;dirId=31505&amp;docId=332077452&amp;mode=answer" rel="KIN" target="_blank">
				
				<span class="tit_txt">건물 붕괴꿈</span>
	
						<p class="txt">꿈에서 학교안에있었는데 건물이 무너질것같았어요 근데 친구가 짐싸라고 학교무너질수도있다라길래 짐싸서 뛰어나오다가 머리에 물방울떨어지는걸 느끼고 엄청뛰어가서 바깥으로 대피를했어요 근데 결국 건물이 붕괴가 안돼서 다시 들어가는 꿈을 꿨는데 무슨꿈일까요 ,,?&gt;</p>
			</a>
		</div>

		<div class="answer_update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="#">꿈, 해몽</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('31505,332077452')">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="#" rel="KIN" class="lnk_answer" target="_blank">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>
		
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="#" rel="KIN" target="_blank">

				<span class="tit_txt">제가 성대결절이라 약을 먹고있는데요...</span>

						<p class="txt">제가 성대결절이라 약을 먹고있는데요 다이어트도 하는중인데 다이어트보조제랑 같이 먹으면서 해도 될까요? 다이어트보조제는 식전에 먹는거에요!</p>

			</a>
		</div>

		<div class="answer_update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="#" target="_blank">의약외품</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('70402,332077451')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '70402_332077451', '2', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=7&amp;dirId=70402&amp;docId=332077451" rel="KIN" class="lnk_answer" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '70402_332077451', '2', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70402,332077451,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>
		
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.nhn?d1id=8&amp;dirId=81101&amp;docId=332077449&amp;mode=answer" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '81101_332077449', '3', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,81101,332077449,'answerCntNew');">
				
				<span class="tit_txt">하이브리드버스 cng차량 언덕길에서...</span>
				
				
				
				

				
					
						<p class="txt">하이브리드버스 cng차량 언덕길에서 출력이 떨어지면서 속도도 떨어짐 ㆍ터보 인터쿨러 엑츄레터 다 교환 답변해주세요</p>
					
				
			</a>
		</div>

		
			

			<div class="tag_wrap">
				
					
						<a href="/tag/tagDetail.nhn?tag=%EA%B2%80%EC%83%89%EC%A7%88%EB%AC%B8" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '81101_332077449', '3', event);">#검색질문</a>
					
						<a href="/tag/tagDetail.nhn?tag=%ED%86%B5%ED%95%A9%EA%B2%80%EC%83%89%EA%B6%81%EA%B8%88%EC%A6%9D" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '81101_332077449', '3', event);">#통합검색궁금증</a>
					
						<a href="/tag/tagDetail.nhn?tag=%ED%86%B5%ED%95%A9%EA%B2%80%EC%83%89%EC%A7%88%EB%AC%B8%ED%95%98%EA%B8%B0" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '81101_332077449', '3', event);">#통합검색질문하기</a>
					
				
			</div>
		

		<div class="answer_update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.nhn?dirId=81101" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '81101', '3', event);">자동차모델</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('81101,332077449')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '81101_332077449', '3', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=8&amp;dirId=81101&amp;docId=332077449" rel="KIN" class="lnk_answer" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '81101_332077449', '3', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,81101,332077449,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>
		
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.nhn?d1id=8&amp;dirId=80601&amp;docId=332077448&amp;mode=answer" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '80601_332077448', '4', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,80601,332077448,'answerCntNew');">
				
				<span class="tit_txt">짝남에게 선물</span>
				
				
				
				

				
					
						<p class="txt">짝남이 생일인데 어떤 선물을 줘야 좋아할까요?ㅜㅜ</p>
					
				
			</a>
		</div>

		
			

			<div class="tag_wrap">
				
					
						<a href="/tag/tagDetail.nhn?tag=%EC%84%A0%EB%AC%BC" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '80601_332077448', '4', event);">#선물</a>
					
						<a href="/tag/tagDetail.nhn?tag=%EC%B6%94%EC%B2%9C" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '80601_332077448', '4', event);">#추천</a>
					
				
			</div>
		

		<div class="answer_update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.nhn?dirId=80601" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '80601', '4', event);">수집</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('80601,332077448')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '80601_332077448', '4', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=8&amp;dirId=80601&amp;docId=332077448" rel="KIN" class="lnk_answer" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '80601_332077448', '4', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,80601,332077448,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>
		
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.nhn?d1id=7&amp;dirId=70111&amp;docId=332077447&amp;mode=answer" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '70111_332077447', '5', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70111,332077447,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>50</span>
				
				<span class="tit_txt">피부 붉은자국</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
					
						<p class="txt">무릎 안쪽으로 붉은점 같은게생겼어요 오돌토돌한 느낌도없고 아프거나 가렵지도 않고 아무느낌 없는데 뭘까요?</p>
					
				
			</a>
		</div>

		
			

			<div class="tag_wrap">
				
					
						<a href="/tag/tagDetail.nhn?tag=%ED%94%BC%EB%B6%80%EA%B3%BC" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '70111_332077447', '5', event);">#피부과</a>
					
						<a href="/tag/tagDetail.nhn?tag=%ED%94%BC%EB%B6%80%EC%A7%88%ED%99%98" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '70111_332077447', '5', event);">#피부질환</a>
					
						<a href="/tag/tagDetail.nhn?tag=%ED%94%BC%EB%B6%80%EB%B3%91" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '70111_332077447', '5', event);">#피부병</a>
					
						<a href="/tag/tagDetail.nhn?tag=%ED%94%BC%EB%B6%80%ED%8A%B8%EB%9F%AC%EB%B8%94" class="tag" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.tag', '70111_332077447', '5', event);">#피부트러블</a>
					
				
			</div>
		

		<div class="answer_update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.nhn?dirId=70111" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '70111', '5', event);">피부과</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('70111,332077447')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '70111_332077447', '5', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=7&amp;dirId=70111&amp;docId=332077447" rel="KIN" class="lnk_answer" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '70111_332077447', '5', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70111,332077447,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>
		
		
	</div></div>

<!-- 페이징 -->
		<div id="pagingArea0" class="paging_area paging_control_type1 _pagingArea" style="display: block;">
		
		
			<a href="#" class="number _page _param('1') on" title="선택됨" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '1', event);">1</a>
		
			<a href="#" class="number _page _param('2')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '2', event);">2</a>
		
			<a href="#" class="number _page _param('3')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '3', event);">3</a>
		
			<a href="#" class="number _page _param('4')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '4', event);">4</a>
		
			<a href="#" class="number _page _param('5')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '5', event);">5</a>
		
			<a href="#" class="number _page _param('6')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '6', event);">6</a>
		
			<a href="#" class="number _page _param('7')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '7', event);">7</a>
		
			<a href="#" class="number _page _param('8')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '8', event);">8</a>
		
			<a href="#" class="number _page _param('9')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '9', event);">9</a>
		
			<a href="#" class="number _page _param('10')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '10', event);">10</a>
		
		
			<a href="#" class="next _nextPage _param('11')" onclick="nhn.Kin.Utility.nClicks('nql_nlg.next', '', '11', event);">다음</a>
		
	</div>
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
    /* 나도 답변하기 */
    $('._noanswerItem').hover(function(){
        $(this).find('.lnk_wrap').css("display", "block");
    }, function(){
        $(this).find('.lnk_wrap').css("display", "none");
    })
    
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