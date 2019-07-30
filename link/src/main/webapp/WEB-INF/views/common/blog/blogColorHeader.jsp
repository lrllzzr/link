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
a{
	color:${blog.atagColor};
}
a:hover{
	text-decoration: none;
}
body{
	background-color: ${blog.bodyColor};
}
.pagination li a{
	color:${blog.pageNumColor} !important;
	background-color: ${blog.pageNumBackgroundColor} !important;
	border-color : ${blog.pageNumColor};
}
hr{
	border-color:${blog.hrColor};
}
.blog_detail_neighborplus {
	border: 1px solid gray;
}
.blog-detail-subtitle{
    color: ${blog.atagColor};
}
.blog_detail_con {
	background: no-repeat center/100% 100%
		url("/link/resources/images/blogthemes/${blog.theme}");
	min-height: 1500px;
}

.blog_main_left_row {
	border: 1px solid #ccc;
	padding-bottom: 100px;
	background-color: rgba(${blog.backgroundColor},${blog.opacity});
	color:${blog.fontColor};
}
.blog_main_left_row_bottom{
	border: 1px solid #ccc;
	padding-bottom: 30px;
	background-color: rgba(${blog.backgroundColor},${blog.opacity});
	color:${blog.fontColor};
}
.blog_detail_right_row {
	background-color: rgba(${blog.backgroundColor},${blog.opacity});
	color:${blog.fontColor};
}

.blog_detail_right_row1 {
	background-color: rgba(${blog.backgroundColor},${blog.opacity});
	color:${blog.fontColor};
}
</style>
</head>