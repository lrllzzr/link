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
    <link rel="stylesheet" href="/link/resources/css/blog/blog.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinmain.css">
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinQna.css">
</head>
<body>
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
                    <dd id="todayQuestion">26,132</dd>
                    <dt class="itm2">모바일 질문</dt>
                    <dd id="todayMobileQuestion">19,500</dd>
                    <dt class="itm3">오늘의 답변</dt>
                    <dd id="todayAnswer">49,690</dd>
                    </dl>
                </div>
            </div>
                    <div class="s_body">
                        <div class="spot_directory">
                            <ul>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=11" id="subMenuOfQna">교육, 학문</a>
                                            <span>36,993</span>
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=1">컴퓨터통신</a>
                                            <span>26,723</span>	
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=2">게임</a>
                                            <span>18,142</span>
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=3">엔터테인먼트, 예술</a>
                                            <span>22,703</span>
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=8">생활</a>
                                            <span>28,913</span>
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=7">건강</a>
                                            <span>18,976</span>	
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=6">사회, 정치</a>
                                            <span>15,888,033</span>
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=4">경제</a>
                                            <span>13,770,306</span>
                                        </li>
                                        <li>		
                                            <a href="/qna/list.nhn?dirId=9">여행</a>
                                            <span>4,249,461</span>
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=10">스포츠, 레저</a>
                                            <span>3,454,822</span>
                                        </li>
                                        <li>
                                            <a href="/qna/list.nhn?dirId=5">쇼핑</a>
                                            <span>15,973,714</span>
                                        </li>
                                        <li>		
                                            <a href="/qna/list.nhn?dirId=13">쥬니버Q&amp;A</a>	
                                        </li>
                                        <li>	
                                            <a href="/qna/list.nhn?dirId=12">지역&amp;플레이스</a>	
                                        </li>
                                        <li>						
                                            <a href="/qna/list.nhn?dirId=20">고민Q&amp;A</a>			
                                        </li>
                                <li><a href="/opendic/index.nhn">오픈사전</a></li>
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
                    <th scope="col" class="title "><a href="/qna/list.nhn?sort=betPoint&amp;queryTime=2019-07-23%2013%3A57%3A47" class="option_grade _nclicks:kls_new.bybest">내공<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a>제목</th>
                    <th scope="col">분야</th>
                    <th scope="col" class="" id="listAnswerField"><a href="/qna/list.nhn?sort=answerCnt&amp;queryTime=2019-07-23%2013%3A57%3A47" class="_nclicks:kls_new.byanswer">답변<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a></th>
                    <th scope="col" class="on"><a href="/qna/list.nhn?sort=writeTime&amp;queryTime=2019-07-23%2013%3A57%3A47" class="_nclicks:kls_new.bydate">작성<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a></th>
                    </tr>
                    </thead>

                    <tbody id="au_board_list">

                        <tr>
                            <td class="title">
                                <a href="#" rel="KIN" target="_blank" class="">베스트슬립 m5 관리</a>
                            </td>
                            <td class="field"><a href="#" class="">가구, 인테리어소<span class="ls0">...</span></a></td>
                            <td class="t_num">0</td>
                            <td class="t_num">방금</td>
                        </tr>
                        <tr>
                        <td class="title">
                            <a href="#" rel="KIN" target="_blank" class="">아기 이름 평가 부탁드립니다.( _ _ )</a>
                        </td>
                        <td class="field"><a href="#" class="">작명, 이름풀이</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>
                        
                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=11&amp;dirId=1118&amp;docId=331867747" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:3,i:1118_331867747">전자기학이라 회로 이론 공부하려는데 배경지식 없이 가능한...</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=1118" class="_nclicks:kls_new.dir,r:2,i:1118_331867747">전기, 전자 공학</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>

                        <tr>
                        <td class="title">

                                <span class="power_grade type_small"><span class="blind">내공</span>100</span>



                            <a href="/qna/detail.nhn?d1id=8&amp;dirId=80101&amp;docId=331867746" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:4,i:80101_331867746">영등포구청에서 한티가는거</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=80101" class="_nclicks:kls_new.dir,r:3,i:80101_331867746">연애, 결혼</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=4&amp;dirId=401030201&amp;docId=331867745" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:5,i:401030201_331867745">메리츠걱정없는암보험 저렴한가요?</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=401030201" class="_nclicks:kls_new.dir,r:4,i:401030201_331867745">의료, 상해 보험</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>

                        <tr>
                        <td class="title">

                                <span class="power_grade type_small"><span class="blind">내공</span>10</span>



                            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1020301&amp;docId=331867744" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:6,i:1020301_331867744">포토샵 CC 체험판은 몇번 깔 수 있나요?</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=1020301" class="_nclicks:kls_new.dir,r:5,i:1020301_331867744">포토샵</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=1&amp;dirId=1010301&amp;docId=331867743" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:7,i:1010301_331867743">에즈락 b450m pr4 드라이버 설치..</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=1010301" class="_nclicks:kls_new.dir,r:6,i:1010301_331867743">LAN카드</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=7&amp;dirId=70109&amp;docId=331867742" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:8,i:70109_331867742">노인망상장애 추측</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=70109" class="_nclicks:kls_new.dir,r:7,i:70109_331867742">정신건강의학과</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=1&amp;dirId=10102&amp;docId=331867741" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:9,i:10102_331867741">알콜솜으로 노트북 닦으면</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=10102" class="_nclicks:kls_new.dir,r:8,i:10102_331867741">노트북</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=11&amp;dirId=11080404&amp;docId=331867740" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:10,i:11080404_331867740">히타치 안마의자 수리</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=11080404" class="_nclicks:kls_new.dir,r:9,i:11080404_331867740">일본어 독해, 읽<span class="ls0">...</span></a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">방금</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=8&amp;dirId=816&amp;docId=331867737" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:11,i:816_331867737">일본 담배</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=816" class="_nclicks:kls_new.dir,r:10,i:816_331867737">외국인 한국생활</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=8&amp;dirId=81302&amp;docId=331867736" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:12,i:81302_331867736">한진택배507174864420...</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=81302" class="_nclicks:kls_new.dir,r:11,i:81302_331867736">택배</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">

                                <span class="power_grade type_small"><span class="blind">내공</span>100</span>



                            <a href="/qna/detail.nhn?d1id=11&amp;dirId=11080303&amp;docId=331867735" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:13,i:11080303_331867735">영작부탁드립니다.</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=11080303" class="_nclicks:kls_new.dir,r:12,i:11080303_331867735">영어작문</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">

                                <span class="power_grade type_small"><span class="blind">내공</span>20</span>



                            <a href="/qna/detail.nhn?d1id=11&amp;dirId=11080201&amp;docId=331867734" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:14,i:11080201_331867734">한자 뜻풀이 부탁드립니다.</a>


                                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=11080201" class="_nclicks:kls_new.dir,r:13,i:11080201_331867734">한문 해석, 문법</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">

                                <span class="power_grade type_small"><span class="blind">내공</span>100</span>



                            <a href="/qna/detail.nhn?d1id=11&amp;dirId=1113&amp;docId=331867731" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:15,i:1113_331867731">수학 틀린 이유</a>


                                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=1113" class="_nclicks:kls_new.dir,r:14,i:1113_331867731">수학</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=9&amp;dirId=9020101&amp;docId=331867730" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:16,i:9020101_331867730">벳부 렌터카</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=9020101" class="_nclicks:kls_new.dir,r:15,i:9020101_331867730">일본</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">

                                <span class="power_grade type_small"><span class="blind">내공</span>100</span>



                            <a href="/qna/detail.nhn?d1id=5&amp;dirId=5020305&amp;docId=331867729" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:17,i:5020305_331867729">jackpot 케이스 hdd 장착법</a>


                                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=5020305" class="_nclicks:kls_new.dir,r:16,i:5020305_331867729">하드디스크</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">



                            <a href="/qna/detail.nhn?d1id=3&amp;dirId=31501&amp;docId=331867726" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:18,i:31501_331867726">사주 풀어주세요</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=31501" class="_nclicks:kls_new.dir,r:17,i:31501_331867726">사주, 궁합</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">

                                <span class="power_grade type_small"><span class="blind">내공</span>100</span>



                            <a href="/qna/detail.nhn?d1id=8&amp;dirId=8040301&amp;docId=331867724" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:19,i:8040301_331867724">귀를 둟었는데</a>


                                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">



                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=8040301" class="_nclicks:kls_new.dir,r:18,i:8040301_331867724">귀걸이, 피어싱</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>

                        <tr>
                        <td class="title">

                                <span class="power_grade type_small"><span class="blind">내공</span>100</span>



                            <a href="/qna/detail.nhn?d1id=6&amp;dirId=60214&amp;docId=331867725" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:20,i:60214_331867725">사회적협동조합 설립시 이사장과 임원 결격사유 질문입니다.</a>




                        </td>
                        <td class="field"><a href="/qna/list.nhn?dirId=60214" class="_nclicks:kls_new.dir,r:19,i:60214_331867725">형벌, 형집행</a></td>
                        <td class="t_num">0</td>
                        <td class="t_num">1분 전</td>
                        </tr>



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





                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=1" class="on" title="선택됨" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','1',event);">1</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=2" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','2',event);">2</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=3" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','3',event);">3</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=4" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','4',event);">4</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=5" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','5',event);">5</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=6" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','6',event);">6</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=7" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','7',event);">7</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=8" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','8',event);">8</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=9" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','9',event);">9</a>	



                        <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=10" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','10',event);">10</a>	




                    <a href="/qna/list.nhn?queryTime=2019-07-23%2013%3A57%3A47&amp;page=11" class="next ">다음페이지</a>



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
        <script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20190710_5/js/min/nhn.Kin.QnaEnd.InputQuery.js"></script>
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
                        <span class="blind">질문</span><strong class="num">15,781</strong><em class="slash sp_common">/</em><span class="blind">답변</span><strong class="num">28,849</strong>
                        <p class="date_info">2019.07.23.</p>
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