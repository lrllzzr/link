<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Link 지식인 > 명예의 전당</title>
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
	<link rel="stylesheet" href="/link/resources/css//jisikin/jisikinRank.css">
</head>
<body>
    <%@ include file="../common/nav.jsp" %>
<div class="container">
   <%@include file="jisikin-nav.jsp" %>
</div>
   
   
   <!-- 메인 컨텐츠 시작 -->
<!-- 질문 섹션-->
<div class="container">
   <!-- 질문 키워드 랭킹 -->
    <div class="row wrap_hall">
        <div class="section_keyword_qa grid_inner">
	<div class="uio_top">
		<h4 class="tit">질문키워드</h4>
	</div>
	<div class="article_list graph_data">
		
		<ul class="top_list">
			
			<li class="list_divide first">
				<a href="#" class="list_item" onclick="nhn.Kin.Utility.nClicks('hfh.tpkw', '', '', event);">
					<div class="list_body">
						<span class="rank"><em>1</em></span>
						<div class="heading">
							<strong class="tit ellipsis">${toptag[0].tagName }</strong>
							<p class="text"><em class="num">${toptag[0].countTag }</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i></p>
						</div>
					</div>
				</a>
			</li>
			
			<li class="list_divide ">
				<a href="#" class="list_item" onclick="nhn.Kin.Utility.nClicks('hfh.tpkw', '', '', event);">
					<div class="list_body">
						<span class="rank"><em>2</em></span>
						<div class="heading">
							<strong class="tit ellipsis">${toptag[1].tagName }</strong>
							<p class="text"><em class="num">${toptag[1].countTag }</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i></p>
						</div>
					</div>
				</a>
			</li>
			
			<li class="list_divide last">
				<a href="#" class="list_item" onclick="nhn.Kin.Utility.nClicks('hfh.tpkw', '', '', event);">
					<div class="list_body">
						<span class="rank"><em>3</em></span>
						<div class="heading">
							<strong class="tit ellipsis">${toptag[2].tagName }</strong>
							<p class="text"><em class="num">${toptag[2].countTag }</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i></p>
						</div>
					</div>
				</a>
			</li>
			
		</ul>
	</div>
	<!-- //cont -->
</div>
    </div>
    <!-- 채택왕 -->
    <div class="row wrap_hall" style="margin-top : 20px;">
        <div class="section_ranking grid_inner _cheerUpArea"  style="height: 400px;">
	<div class="uio_top">
		
		<ul class="tab_area_sub" role="tablist">
			<li class="on" aria-selected="true"><a href="#" class="_eliteUserBtn" onclick="nhn.Kin.Utility.nClicks('hfh.kgtab', '', '', event);"><h4 class="tit"><span>채택왕</span></h4></a></li>
			
		</ul>
	</div>

	<!-- 채택왕 -->
	<div class="section_adoption _eliteUserArea">
		<h5 class="blind">연도별 채택왕 프로필</h5>
		<div class="article_list">
			<ul class="top_list">
				
				<li class="list_divide first">
					<div class="list_item top_item1">
						
							<a href="/profile/index.nhn?u=WNhgDBa7TPRC3Clv9i37QoHueDE1B4fLuvByXRoNQ%2BA%3D" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>1</em></span>
								<div class="thmb_profile">
									<div class="thmb">
										
											<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/18.png" alt="프로필이미지">
										
										
										<span class="mask"></span>
									</div>
								</div>
								<div class="list_body">
									<div class="writer_sec">
										<span class="writer no_badge"><em class="ellipsis">slm6****</em></span>
									</div>
									<p class="desc ellipsis">꼼꼼한 수학 문제풀이!</p>
									<div class="information_section">
										<p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">고1수학</span></span></p>
										<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis">3,879</span></span></p>
									</div>
								</div>
							</a>
						
						
					</div>
					<div class="list_side">
						
							
							<div class="recommend ">
								<button class="_cheerUp _param('WNhgDBa7TPRC3Clv9i37QoHueDE1B4fLuvByXRoNQ+A=')" onclick="nhn.Kin.Utility.nClicks('hfh.kglike', '', '', event);">
									<i class="sp_hall sp_like">좋아요</i>
									<span class="num _count">883</span>
								</button>
							</div>
						
					</div>
				</li>
				
				<li class="list_divide ">
					<div class="list_item top_item2">
						
							<a href="/profile/index.nhn?u=hnsBZMSj%2FrOz1A4RW3PKYWShKVNukVRN6KOa62yQCxw%3D" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>2</em></span>
								<div class="thmb_profile">
									<div class="thmb">
										
											<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/17.png" alt="프로필이미지">
										
										
										<span class="mask"></span>
									</div>
								</div>
								<div class="list_body">
									<div class="writer_sec">
										<span class="writer no_badge"><em class="ellipsis">까다로운C선생</em></span>
									</div>
									<p class="desc ellipsis">경제분야 최강 마스터</p>
									<div class="information_section">
										<p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">신용카드</span></span></p>
										<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis">2,633</span></span></p>
									</div>
								</div>
							</a>
						
						
					</div>
					<div class="list_side">
						
							
							<div class="recommend ">
								<button class="_cheerUp _param('hnsBZMSj/rOz1A4RW3PKYWShKVNukVRN6KOa62yQCxw=')" onclick="nhn.Kin.Utility.nClicks('hfh.kglike', '', '', event);">
									<i class="sp_hall sp_like">좋아요</i>
									<span class="num _count">63</span>
								</button>
							</div>
						
					</div>
				</li>
				
				<li class="list_divide last">
					<div class="list_item top_item3">
						
							<a href="/profile/index.nhn?u=fWv47ttQZ%2FXm1ftRDX9h46Gs4ZAZIflifeEAKrOdie0%3D" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>3</em></span>
								<div class="thmb_profile">
									<div class="thmb">
										
											<img src="https://kin-phinf.pstatic.net/20190513_219/1557757741605MLODS_JPEG/1557757741489.jpeg?type=w200" alt="프로필이미지">
										
										
										<span class="mask"></span>
									</div>
								</div>
								<div class="list_body">
									<div class="writer_sec">
										<span class="writer no_badge"><em class="ellipsis">야옹토끼</em></span>
									</div>
									<p class="desc ellipsis">뷰티 궁금증 해결해요</p>
									<div class="information_section">
										<p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">기초화장품</span></span></p>
										<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis">2,336</span></span></p>
									</div>
								</div>
							</a>
						
						
					</div>
					<div class="list_side">
						
							
							<div class="recommend ">
								<button class="_cheerUp _param('fWv47ttQZ/Xm1ftRDX9h46Gs4ZAZIflifeEAKrOdie0=')" onclick="nhn.Kin.Utility.nClicks('hfh.kglike', '', '', event);">
									<i class="sp_hall sp_like">좋아요</i>
									<span class="num _count">29</span>
								</button>
							</div>
						
					</div>
				</li>
				
			</ul>
		</div>
	</div>
	<!-- //채택왕 -->
    <!-- 성지글 -->
    <div class="section_shrine">
	<h4 class="blind">성지글</h4>
	<div class="content">
		
		<div class="slide _legendQna" style="display: none;">
			<a href="/qna/detail.nhn?d1id=7&amp;dirId=703&amp;docId=25239646" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">이런 방법이!!</span></p>
					<p class="desc"><span class="ellipsis">엉덩이땀, 의자에 앉기만하면 축축하게 젖어요... 아우 너무 불편해요 .....ㅜㅜ</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>281</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>1,243</em></span>
				</div>
			</a>
		</div>
		
		<div class="slide _legendQna" style="display: none;">
			<a href="/qna/detail.nhn?d1id=13&amp;dirId=13050304&amp;docId=123569767" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">잠 안 오게 하는 법</span></p>
					<p class="desc"><span class="ellipsis">잠안오게하는법!!!!!ㅠㅠ</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>685</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>3,323</em></span>
				</div>
			</a>
		</div>
		
		<div class="slide _legendQna" style="display: none;">
			<a href="/qna/detail.nhn?d1id=3&amp;dirId=30213&amp;docId=117624918" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">엉엉엉엉 엉엉엉엉</span></p>
					<p class="desc"><span class="ellipsis">이거 뭐에요?</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>155</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>710</em></span>
				</div>
			</a> 
		</div>
		
		<div class="slide _legendQna active" style="display: block;">
			<a href="/qna/detail.nhn?d1id=3&amp;dirId=30202&amp;docId=317046519" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">이분이 초콜릿 가게를?!</span></p>
					<p class="desc"><span class="ellipsis">혹시 방시혁 초콜렛가게 차렸나요..?</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>197</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>187</em></span>
				</div>
			</a>
		</div>
		
		<div class="slide _legendQna" style="display: none;">
			<a href="/qna/detail.nhn?d1id=13&amp;dirId=130403&amp;docId=138897542">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">한글의 위대함</span></p>
					<p class="desc"><span class="ellipsis">Im yours 가사 발음</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>342</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>1,878</em></span>
				</div>
			</a>
		</div>
		
	</div>

	<div class="nav_area">
		<a href="#" class="prev sp_hall _legendPrevBtn" >이전</a>
		<a href="#" class="next sp_hall _legendNextBtn" >다음</a>
	</div>
</div>
</div>
    </div>
</div>

<script>
    /* 성지글 이전 다음 */
    $("._legendPrevBtn").click(function(){
        
        if ($("._legendQna.active").index() == 0) {
             $("._legendQna.active").removeClass('active').hide();
             $('._legendQna').eq($('._legendQna').length-1).addClass('active').show();
        } else {
            $("._legendQna.active").removeClass('active').hide()
            .prev().addClass('active').show();
        }
        return false;
    })
    
    $("._legendNextBtn").click(function(){
        
        if ($("._legendQna.active").index() == $("._legendQna").length-1) {
             $("._legendQna.active").removeClass('active').hide();
             $('._legendQna').eq(1).addClass('active').show();
        } else {
            $("._legendQna.active").removeClass('active').hide()
            .next().addClass('active').show();
        }
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