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
<script>
		$(function() {
			$('.blog_page_bum2').click(event, function() {
				event.preventDefault();
				var page = $(this).text();
				var blogNo = $('#blog_board_title1').attr('data-blogNo');
				var categoryNo = $('#blog_board_title1').attr('data-categoryNo');

				$.ajax({
					type : "GET",
					url : "paginationAjax10.do",
					data : {
						pno10 : page,
						categoryNo : categoryNo
					},
					success : function(result) {
						console.log(result.pno10);
						$('#' + result.pno10 + "_2").addClass('blog_detail_page_1_selected').parent().siblings().find('a').removeClass('blog_detail_page_1_selected');
						$('#blog_board_imgs').empty();
						$.each(result.blogboardsByRange10, function(index, board) {
							var row = '<div class="col-sm-3 blog_detail_right_col4">';
							row += '		<div class="row">';
							row += '			<div class="col-sm-12">';
							row += '				<a href="/link/blog/board.do?boardNo=' + board.no + '&blogNo=' + blogNo + '&categoryNo=' + categoryNo + '"> <img';
							row += '				style="width: 100%; height: 173.88px;" src="/link/resources/images/userblogimgs/'+board.mainImg+'" alt=""></a>';
							row += '			</div>';
							row += '		</div>';
							row += '		<div class="row blog_detail_board_title_row">';
							row += '			<div class="col-sm-12">';
							row += '				<span class="blog_detail_board_title">'+board.title+'</span>';
							row += '			</div>';
							row += '		</div>';
							row += '		<div class="row">';
							row += '			<div class="col-sm-12 blog_detail_full">';
							row += '				<a href=""> <span class="blog_detail_board_date">'+board.createDate+'</span>';
							row += '				</a> <a href=""> <span class="glyphicon glyphicon-tag blog_detail_tag"></span> <span class="blog_detail_comments">댓글 4</span>';
							row += '				</a>';
							row += '			</div>';
							row += '		</div>';
							row += '</div>';

							$('#blog_board_imgs').append(row);
						})
					}
				})
				return false;
			});
		})
	</script>
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
	color:${blog.pageNumColor} ;
	background-color: ${blog.pageNumBackgroundColor} !important;
	border-color : ${blog.pageNumBorderColor};
}
.pagination li a.blog_detail_page_1_selected{
	font-weight: bold;
	color:black !important;
}
.pagination li a:hover,.pagination li a:focus
{
	color:${blog.pageNumColor} ;
	background-color: ${blog.pageNumBackgroundColor} !important;
	border-color : ${blog.pageNumBorderColor};
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
/* .blog_detail_page_1_selected{
	font-weight: bold;
	color:black !important;
	border: 1px solid black !important;
} */
</style>
</head>