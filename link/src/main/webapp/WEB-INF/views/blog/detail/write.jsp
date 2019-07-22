<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Bootstrap</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/link/resources/css/blog/blog.css">
<link rel="stylesheet" href="/link/resources/css/blog/blogdetail.css">
<link rel="stylesheet" href="/link/resources/css/blog/bootstrap.css">
<script type="text/javascript" src="/link/resources/js/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
a:hover,
a:focus{
	text-decoration: none;
}
	body{
		background-color: lightgray;
	    color: #666666;
	}
</style>
</head>

<body>
	<!-- 네비게이션 시작  -->
	<%@include file="../../common/nav.jsp"%>
	<!-- 네비게이션 끝  -->
	<div class="container blog_detail_con">
		<div class="row">
			<!--  헤더 시작         -->
			<%@include file="../../common/blog/blogheader.jsp"%>
			<!--  헤더 끝     -->
			<!--좌측 nav 시작-->
			<%@include file="../../common/blog/blogleft.jsp"%>
			<!--좌측 nav 끝-->

			<!--                    우측 게시판 시작-->
			<div class="col-sm-9">
				<!-- 우측 게시판 글쓰기 시작-->
				<div class="col-sm-12 blog_detail_right_row1">
					<div class="row">
						<form action="write.do" method="post">
							<div class="col-sm-12">
								<div class="form-group">
									<div class="page-header">
										<h2>글쓰기</h2>
									</div>
									<label for="">제목</label><input name="title" style="width:723px;" type="text" class="form-control blog_write_title" />
								</div>
								<div class="form-group">
									<label for="">내용</label>
									<textarea name="contents" id="textAreaContent" rows="20" cols="100" placeholder=""></textarea>
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-default">등록</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- 우측 게시판 글쓰기 끝-->
			</div>
			<!--                    우측 게시판 끝-->
		</div>
	</div>
<script type="text/javascript">
$(function(){
	$('#textAreaContent').keyup(function(){
		var text = $(this).text();
		if(text == ""){
			$(this).text('본문에 #을 이용하여 태그를 사용해보세요!').css('color','gray');
		} else{
			$(this).text('');
		}
	})
})
/* 	Smart Editor */
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "textAreaContent",
	   	sSkinURI: "/link/resources/js/se2/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	 
	//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	function submitContents(elClickedObj) {
	    // 에디터의 내용이 textarea에 적용된다.
	    oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
	 
	    // 에디터의 내용에 대한 값 검증은 이곳에서
	    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
	  
	    try {
	        elClickedObj.form.submit();
	    } catch(e) {
	     
	    }
	}
	 
	// textArea에 이미지 첨부
	function pasteHTML(filepath){
		 setTimeout(function() {
			 var sHTML = '<img src="/link/resources/images/userblogimgs/'+filepath+'">';
		    oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
			 
		 }, 5000);
	}
</script>
</body>
</html>