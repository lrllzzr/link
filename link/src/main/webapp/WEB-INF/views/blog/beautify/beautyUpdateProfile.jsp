<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/link/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/link/resources/css/blog/blog.css">
    <link rel="stylesheet" href="/link/resources/css/blog/beautymain.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
</head>

<body>
<%@include file="../../common/nav.jsp"%>
    <div class="container blog_beauty_con">
    <!-- 헤더 시작  -->
   <%@include file="../../common/blog/beautyheader.jsp"%>     
     <!-- 헤더 끝  -->
        <div class="row">
     		<!-- 왼쪽 navi 시작  -->
            <%@include file="../../common/blog/beautyleftnav.jsp"%> 
            <!-- 왼쪽 navi 끝 -->
            <div class="col-sm-10 blog_manage_right_row">
                <div class="row">
                    <div class="col-sm-4">
                        <span class="blog_manage_title">프로필 정보</span>
                    </div>
                    <div class="col-sm-12">
                        <hr class="blog_manage_hr1" />
                    </div>
                </div>
                <form action="">
                <div class="row blog_manage_right_row2">
                    <div class="col-sm-2">
                        <strong>이름</strong>
                    </div>
                    <div class="col-sm-8">
                    	<span>안병민</span>
                    </div>
                    <div class="col-sm-2">
                    	<select class="form-control" name="" id="">
                    		<option value="">비공개</option>
                    		<option value="">전체공개</option>
                    		<option value="">이웃공개</option>
                    	</select>
                    </div>
                    <div class="col-sm-12">
                        <hr>
                    </div>
                </div>
                <div class="row blog_manage_right_row2">
                    <div class="col-sm-2">
                        <strong>성별</strong>
                    </div>
                    <div class="col-sm-8">
                    	<span>남자</span>
                    </div>
                    <div class="col-sm-2">
                    	<select class="form-control" name="" id="">
                    		<option value="">비공개</option>
                    		<option value="">전체공개</option>
                    		<option value="">이웃공개</option>
                    	</select>
                    </div>
                    <div class="col-sm-12">
                        <hr>
                    </div>
                </div>
                

                
                <div class="row ">
                    <div class="col-sm-12">
                        <hr class="blog_beauty_boldhr">
                    </div>
	                <div class="col-sm-12 text-center blog_beauty_bottombtndiv">
		                <button type="submit" class="btn blog_beuaty_submit_button">확인</button>
	                </div>
                </div>
            </form>
            </div>
        </div>
    </div>

</body></html>

