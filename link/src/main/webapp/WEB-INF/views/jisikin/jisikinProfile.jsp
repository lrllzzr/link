<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Link 지식인 > 프로필</title>
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
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikin.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinProfile.css">
</head>
<body>
    <nav class="navbar main-nav" style="margin-bottom: 0px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <a href="/src/main/webapp/WEB-INF/views/blog/blogmain.html">
                        <span class="blog-main-javer">Link</span> <span class="blog-main-blog">지식인</span>
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
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <img class="blog-profile-img" src="/link/resources/images/blog.png" alt="">
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
    </nav>
<div class="container">
   <%@include file="jisikin-nav.jsp" %>
</div>
   
   
   <!-- 메인 컨텐츠 시작 -->
<!-- 질문 섹션-->
<div id="loaddingIndicator" style="display: none; width:100%; height:100%; position:fixed; top:0px; left:0px; background-color: transparent; z-index: 10000;"></div>
<div class="wrap wrap_my" id="wrap">
<div id="container" class="container-fluid">
	<div class="container-fluid-content">
		<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">프로필 영역</h3>

<ul class="location" id="au_location">
	<li><a href="/index.nhn">홈</a></li>
	<li class="last">
			<a href="/myinfo/index.nhn">프로필</a>	
	</li>
</ul>


<!-- Personal_Info  -->
<h2 class="blind">프로필</h2>


<div class="my_personal well" id="au_main_profile_box" style="">

	<div class="my_personal_top"></div>
	<div class="my_personal_inner">
		
		<div class="profile_section">
			<div class="profile_group">
				
					
					
					
						<a href="/people/levelup/index.nhn" class="profile_animate profile_default">
							<span class="thumbnail">
								<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200/4.png" width="100%" height="100%" alt="allman956 님의 프로필">
							</span>
							<span class="mask_bdr"></span>
						</a>
					
				
				
				
					<a href="#" onclick="nhn.Kin.Utility.nClicks('prf.imgedit', '', '', event);nhn.Kin.checkRosAndGoUrl(event, '/myinfo/namecardProfileForm.nhn?openProfilePopup=Y', '');return false;" class="edit_photo _ros" target="_blank">
						<span class="photo_edit_button">
							<span class="blind">프로필 사진 변경</span>
						</span>
					</a>
				
				
			</div>
			<div class="profile_info">
				<div class="profile_name">
					<strong class="profile_user">allman956</strong>
					
				</div>
				
				
				
				
					<div class="profile_answer_date">최초답변일 <span>2008.04.07.</span></div>
				
				
			</div>

		</div>
		<div class="profile_section2">
        </div>
			<div class="profile_section3" style="width: 700px;">
				<!-- 답변, 채택답변, 채택률 -->
				<div class="lv_area grd_lv4">
				
					<ul class="lv_cnt">
					<li><em class="tit">전체답변</em><p class="num" id="total_answer">27</p></li>
					<li><em class="tit">채택답변</em><p class="num" id="total_best">6</p></li>
					<li><em class="tit">답변채택률</em><p class="num" id="best_rate">37.5%</p></li>
					</ul>
				</div>
				
				<dl class="my_spec">
				
					<dt>내공순위</dt>
					<dd><strong>11,838,056</strong>위</dd>
				
				<dt>질문</dt>
				<dd>
					<span class="q_list">전체질문 <strong>126건</strong></span>
					<span class="q_list rec_text">답변 받은 질문 <strong>84건</strong></span>
					<span class="q_list">전체마감률 <strong>95.2%</strong></span>
					<span class="q_list rec_text">답변채택률 <strong>94%</strong></span>
				</dd>
				<dt>받은추천</dt>
				<dd>
					<span class="q_list">좋아요 <strong>6</strong></span>
				</dd>

				</dl>
				
				
				
					<div class="helper_area">
					    <div class="inner">
					        <div class="icon_area">
					            <i class="sp_common ico_helper"><img src="/link/resources/images/my-person.PNG" width="30px;" height="35px;"> alt=""></i>
					        </div>
					        <div class="content_area">
					            <em class="tit">도움을 준 사람 수 <a href="#" class="_helperLayerOpenBtn" onclick="nhn.Kin.Utility.nClicks('prf.helptip', '', '', event);"><img src="https://ssl.pstatic.net/static/kin/09renewal/ico_help.png" width="16" height="16" alt="도움말"></a></em>
					            <div class="count">
					                <span class="num">27</span>
					            </div>
					        </div>
					    </div>

					</div>

			</div>	
			
	</div>	
</div>
            <!-- 메뉴 -->
			<div class="container-fluid-content__left well">

<!--// Personal_Info  -->
<div class="snb snb_bordered snb_mykin" style="border: 2px solid #ddd;">
	<h2 class="snb_title blind">프로필</h2>
	<ul class="snb_list">
        <li>
			<a href="#" class="" id="subMenuOfMykin">    홈</a>
			
			
		</li>
        
		<li>
			<a href="#" class="my-answer" id="subMenuOfMykin">나의 답변 <span class="num">(27)</span></a>
			
			
		</li>
		<li><a href="#" class="my-q">나의 질문 <span class="num">(126)</span></a></li>
			<ul class="sub">
				<li><a href="#">받은 질문 <span class="num">(0)</span></a></li>
				<li><a href="#">보낸 질문 <span class="num">(4)</span></a></li>
			</ul>
		<li class="">
			<a href="/myinfo/namecardProfileForm.nhn">관리</a>
			<ul class="sub">
				<li><a href="/myinfo/namecardProfileForm.nhn">기본정보</a></li>
				<li><a href="/myinfo/pointHistory.nhn">내공<span class="num">(1,700)</span></a></li>
			</ul>
		</li>
	</ul>
</div>
			</div>

        
        <!-- 나의 질문/답변 -->
			<div id="content" class="container-fluid-content__right well">
				<div id="myinfoIndex_1" class="my_home" style="border: 2px solid #ddd; padding:10px;">
					

<!-- 답변 -->
<div class="profile-answer">
    <h4 class="h_my_title ">

            <img src="/link/resources/images/my-answer.PNG" width="64" height="22" alt="나의 답변">
            <span class="eng">(27)</span>
    </h4>
        <table cellspacing="0" class="boardtype2 th_border my_table" width="100%">
        <caption><span class="blind">나의 답변 목록으로 제목, 디렉토리, 채택, 표정, 작성</span></caption>
        <colgroup>
        <col>
        <col width="105">
        <col width="54">
        <col width="54">
        <col width="90">
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="title">제목</th>	
        <th scope="col">디렉토리</th>
        <th scope="col">채택</th>  
        <th scope="col">추천</th>
        <th scope="col" class="title">작성</th>
        </tr>
        <tr>
        <td colspan="5" class="blank2">&nbsp;
        </td></tr>
        </thead>
        <tbody>


        <tr>
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110207&amp;docId=32615805&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110207_32615805', '1', event);">미로찾기좀도와주세요</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>HYO~ FINISH~!
    겨우 끝냈어요~!

    근데 내가 볼때만 해도 아무도 없엇는데 위에 다른분들이 ㅡ.ㅜ....
    흑흑..
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110207">학교생활</a></td>
        <td class="field">



                <em>완료</em>

        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.06.06.</td>
        </tr>




        <tr>
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=50101&amp;docId=27203419&amp;answerNo=4" onclick="nhn.Kin.Utility.nClicks('myh.', '50101_27203419', '2', event);">제일싼 터치폰</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요

    제일싼터치폰이라면 뷰티폰이죠.. 가격은 20~30만원대이고요
    그치만 단종됫을수도,..
    풀터치가 아니라면 비키니폰도 괜찮 인건...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=50101">휴대전화</a></td>
        <td class="field">



        </td>
        <td class="t_num"><span class="recomm">2</span></td>
        <td class="t_num tc">2009.04.05.</td>
        </tr>




        <tr>
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32761011&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32761011', '3', event);">좋아하는남자애가있는데요ㅠㅇㅠ</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>만나시면 복도에서 쿨하게 안녕,잘지내냐? 등 말해보고
    아직도 맘이 있으심 잘 사귀고 있냐고 물어봐요
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.29.</td>
        </tr>




        <tr>
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=33566903&amp;answerNo=2" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_33566903', '4', event);">여자친구를사귀고싶은데..</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>무지 뭘 하고싶다는건지....ㅎㅎ;

    자신감을 갖고 그냥 고백해봐요!
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">


                <em>마감</em>


        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.29.</td>
        </tr>




        <tr>
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32763073&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32763073', '5', event);">성적에 관해서 내공50겁니다</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요~! 저도 공부에 매달려서 살려고하는 중2학생입니다.
    저도뭐 공부를 썩 잘하진 않지만 저희 학교에서 전교 5등입니다.
    자기소개...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">

                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.28.</td>
        </tr>
        
        
        <!-- 더보기 -->
        <tr class="more-answer" style="display: none;">
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32763073&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32763073', '5', event);">성적에 관해서 내공50겁니다</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요~! 저도 공부에 매달려서 살려고하는 중2학생입니다.
    저도뭐 공부를 썩 잘하진 않지만 저희 학교에서 전교 5등입니다.
    자기소개...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">

                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.28.</td>
        </tr>
        <tr class="more-answer" style="display: none;">
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32763073&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32763073', '5', event);">성적에 관해서 내공50겁니다</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요~! 저도 공부에 매달려서 살려고하는 중2학생입니다.
    저도뭐 공부를 썩 잘하진 않지만 저희 학교에서 전교 5등입니다.
    자기소개...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">

                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.28.</td>
        </tr>
        <tr class="more-answer" style="display: none;">
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32763073&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32763073', '5', event);">성적에 관해서 내공50겁니다</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요~! 저도 공부에 매달려서 살려고하는 중2학생입니다.
    저도뭐 공부를 썩 잘하진 않지만 저희 학교에서 전교 5등입니다.
    자기소개...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">

                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.28.</td>
        </tr>
        <tr class="more-answer" style="display: none;">
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32763073&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32763073', '5', event);">성적에 관해서 내공50겁니다</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요~! 저도 공부에 매달려서 살려고하는 중2학생입니다.
    저도뭐 공부를 썩 잘하진 않지만 저희 학교에서 전교 5등입니다.
    자기소개...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">

                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.28.</td>
        </tr>
        <tr class="more-answer" style="display: none;">
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32763073&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32763073', '5', event);">성적에 관해서 내공50겁니다</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요~! 저도 공부에 매달려서 살려고하는 중2학생입니다.
    저도뭐 공부를 썩 잘하진 않지만 저희 학교에서 전교 5등입니다.
    자기소개...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">

                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.28.</td>
        </tr>
        <tr class="more-answer" style="display: none;">
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32763073&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32763073', '5', event);">성적에 관해서 내공50겁니다</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요~! 저도 공부에 매달려서 살려고하는 중2학생입니다.
    저도뭐 공부를 썩 잘하진 않지만 저희 학교에서 전교 5등입니다.
    자기소개...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">

                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.28.</td>
        </tr>
        <tr class="more-answer" style="display: none;">
        <td class="qna">
            <dl class="dlist_qna">
            <dt>
                <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                <a href="/qna/mydetail.nhn?dirId=110307&amp;docId=32763073&amp;answerNo=3" onclick="nhn.Kin.Utility.nClicks('myh.', '110307_32763073', '5', event);">성적에 관해서 내공50겁니다</a>

            </dt>
            <dd>
                <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>안녕하세요~! 저도 공부에 매달려서 살려고하는 중2학생입니다.
    저도뭐 공부를 썩 잘하진 않지만 저희 학교에서 전교 5등입니다.
    자기소개...
            </dd>
            </dl>
        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110307">학교생활</a></td>
        <td class="field">

                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">



        </td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2009.03.28.</td>
        </tr>
        <!-- 더보기 -->

        </tbody>
        </table>
</div>



<!-- 질문 -->
<div class="profile-question">
    <h4 class="h_my_title">
        <img src="/link/resources/images/my-question.PNG"  width="64" height="22" alt="나의 질문">
        <span class="eng">(126)</span>

        <span class="highlight">답변채택을 기다리는 질문이 <strong>4</strong>개 있습니다.</span>
    </h4>
        <table cellspacing="0" class="boardtype2 th_border my_table" width="100%">
        <caption><span class="blind">나의 질문 목록으로 제목, 디렉토리, 채택, 답변, 표정, 작성</span></caption>
        <colgroup>
        <col>
        <col width="105">
        <col width="54">
        <col width="54">
        <col width="54">
        <col width="90">
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="title">제목</th>
        <th scope="col">디렉토리</th>
        <th scope="col">채택</th>  
        <th scope="col">답변</th>
        <th scope="col">추천</th>
        <th scope="col" class="title">작성</th>
        </tr>
        <tr>
        <td colspan="6" class="blank">&nbsp;</td>
        </tr>
        </thead>
        <tbody id="au_board_list_1">

        <tr>
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=240366662" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_240366662', '1', event);">html 소스 관련 질문드립니다.</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.12.10.</td>
        </tr>

        <tr>
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=239629275" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_239629275', '2', event);">html 홈페이지 소스 질문입니다!</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.30.</td>
        </tr>

        <tr>
        <td class="title">


            <a href="/qna/detail.nhn?d1id=11&amp;dirId=110503&amp;docId=238738739" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '110503_238738739', '3', event);">국가장학금에 대해 궁금한게있는데요..</a>




        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=110503">학사 행정, 제도</a></td>
        <td class="field">


        </td>
        <td class="t_num">1</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.17.</td>
        </tr>

        <tr>
        <td class="title">


            <a href="/qna/detail.nhn?d1id=6&amp;dirId=60302&amp;docId=235424093" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '60302_235424093', '4', event);">동반입대 문의</a>




        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=60302">입영 신청, 연기</a></td>
        <td class="field">


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">

        </td>
        <td class="t_num">1</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.09.30.</td>
        </tr>

        <tr>
        <td class="title">


            <a href="/qna/detail.nhn?d1id=6&amp;dirId=6030204&amp;docId=233156741" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '6030204_233156741', '5', event);">의경 지원 가능 여부에 대해...</a>




        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=6030204">전경, 의경</a></td>
        <td class="field">


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">

        </td>
        <td class="t_num">1</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.08.29.</td>
        </tr>
        <!-- 더보기 -->
        <tr class="more-question" style="display: none;">
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=239629275" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_239629275', '2', event);">html 홈페이지 소스 질문입니다!</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.30.</td>
        </tr>
        <tr class="more-question" style="display: none;">
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=239629275" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_239629275', '2', event);">html 홈페이지 소스 질문입니다!</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.30.</td>
        </tr>
        <tr class="more-question" style="display: none;">
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=239629275" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_239629275', '2', event);">html 홈페이지 소스 질문입니다!</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.30.</td>
        </tr>
        <tr class="more-question" style="display: none;">
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=239629275" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_239629275', '2', event);">html 홈페이지 소스 질문입니다!</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.30.</td>
        </tr>
        <tr class="more-question" style="display: none;">
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=239629275" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_239629275', '2', event);">html 홈페이지 소스 질문입니다!</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.30.</td>
        </tr>
        <tr class="more-question" style="display: none;">
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=239629275" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_239629275', '2', event);">html 홈페이지 소스 질문입니다!</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.30.</td>
        </tr>
        <tr class="more-question" style="display: none;">
        <td class="title">


            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1040205&amp;docId=239629275" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '1040205_239629275', '2', event);">html 홈페이지 소스 질문입니다!</a>


                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



        </td>
        <td class="field"><a href="/qna/list.nhn?dirId=1040205">HTML</a></td>
        <td class="field">


        </td>
        <td class="t_num">2</td>
        <td class="t_num"><span class="recomm">0</span></td>
        <td class="t_num tc">2015.11.30.</td>
        </tr>
        <!-- 더보기 -->

        </tbody>
        </table>
</div>


			</div>
		</div>
	</div>
</div>
    </div>
    </div>
<script>
    /* 나의 답변 더보기 */
    $(".my-answer").click(function(){
        $(".profile-answer").css("display","block");
        $(".more-answer").css("display","table-row");
        $(".profile-question").css("display","none");
        return false;
    })
    
    /* 나의 질문 더보기 */
    $(".my-q").click(function(){
        $(".profile-question").css("display","block");
        $(".more-question").css("display","table-row");
        $(".profile-answer").css("display","none");
        return false;
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