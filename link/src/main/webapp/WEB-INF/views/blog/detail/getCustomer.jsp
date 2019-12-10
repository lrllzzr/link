<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Link 블로그</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../../resources/css/blog.css">
    <link rel="stylesheet" href="../../../../resources/css/blogdetail.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
      table {
      	width:100%;
        border: 1px solid gray;
        text-align: center;
      }
      td,th{
      	border: 1px solid gray;
      	text-align: center;
      	padding: 20px;
      }
      .selected{
      	font-weight: bold;
      }
    </style>
</head>
<body>
   <nav class="navbar navbar-default">
      <div class="container-fluid">
         <ul class="nav navbar-nav navbar-right">
            <c:if test="${not empty LOGIN_USER }">
               <li class="dropdown"><a href="#" style="background-color: white !important;" class="dropdown-toggle" data-toggle="dropdown"
                  role="button" aria-expanded="false"> <img class="blog-profile-img" style="width:25px !important; height:25px; border-radius: 50%;" src="/link/resources/images/${LOGIN_USER.img }" alt=""> <span class="blog-navbar-id"
                     style="color: gray !important; font-size:13px; font-weight: bold;">${LOGIN_USER.nickName }</span> <span class="caret" style="color: gray !important;"></span></a>
                  <ul class="dropdown-menu" role="menu">
                     <li><a href="/link/home.do">Link 홈</a></li>
                     <li class="divider"></li>
                     <li><a href="/link/blog/main.do">블로그</a></li>
                     <c:if test="${LOGIN_USER.isHaveBlog eq 'Y' }">
                        <li style="margin-left: 10px;"><a href="/link/blog/mydetail.do">내 블로그</a></li>
                        <li style="margin-left: 10px;"><a href="/link/blog/beauty.do">내 블로그 관리</a></li>
                     </c:if>
                     <li class="divider"></li>

                     <li><a href="/link/band/main.do">밴드</a></li>
                     <li><a href="/link/jisikin/main.do?sort=1&categoryNo=0">지식인</a></li>
                     <li><a href="/link/accountbook/expense.do">가계부 </a></li>
                     <li><a href="/link/series/home.do">시리즈</a></li>
                     <li><a href="/link/tv/home.do">TV</a></li>
                     <li><a href="/link/blog/getip.do">사용자 관리</a></li>
                     <li class="divider"></li>
                     <li><a class="blognav_logout_btn" href="/link/logout.do">로그아웃</a></li>
                  </ul></li>
            </c:if>
            <c:if test="${empty LOGIN_USER }">
               <li class=""><a class="main-login blogmain_login" style="color: #666666;" href="loginform.do">로그인</a></li>
            </c:if>
            <c:if test="${not empty LOGIN_USER }">
               <li class=""><a class="main-login blognav_logout_btn" style="color: #666666; padding:15px !important;" href="logout.do">로그아웃</a></li>
            </c:if>
         </ul>
      </div>
   </nav>
<div class="container" style ="margin-top: 20px;">
<c:choose>
<c:when test="${LOGIN_USER.id eq 'admins' }">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 text-center">
				<table>
					<thead>
						<tr>
							<c:if test="${not empty clientIP}">
									<th>시간</th>
									<th>IP</th>
									<th>ID</th>
									<th>관리</th>
							</c:if>
						</tr>
					</thead>
					<tbody>
					<c:if test="${not empty clientIP }">
						<c:forEach var="client" items="${clientIP}">
							<tr>
								<td><fmt:formatDate value="${client.TIMES }" pattern="yyyy년 MM월 dd일 HH:mm:ss"/> </td>
								<td>IP: ${client.IP }</td>
								<td>${client.USERID }</td>
								<td><button class="delete_btn btn btn-sm btn-default" data-ipNo='${client.IPNO }'>삭제</button></td>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${empty clientIP }">
						<tr>
						<td>정보가 없습니다.</td>
						</tr>
					</c:if>
					</tbody>
				</table>
			</div>
			<c:if test="${not empty clientIP }">
			<div class="col-sm-12 text-center paginationDiv">
				<ul class="pagination">
				<c:choose>
					<c:when test="${pagination.first }">
						<li class="disabled"><a href="#">&laquo;</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="" data-pno="${pagination.page-1 }"><span>&laquo;</span></a></li>
					</c:otherwise>
				</c:choose>
					<c:forEach var="num" begin="${pagination.begin }" end="${pagination.end }">
						<c:choose>
							<c:when test="${num eq pagination.page }">
								<li><a class="selected" data-pno="${num }">${num }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#" data-pno="${num }">${num }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${pagination.last }">
							<li class="disabled"><a href="#">&raquo;</a></li>
						</c:when>
						<c:otherwise>
						    <li class="page-item"><a data-pno="${pagination.page+1 }" href="#">&raquo;</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			</c:if>
		</div>
</c:when>
<c:otherwise>
	<script type="text/javascript">history.back();</script>
</c:otherwise>
</c:choose>
</div>
<script type="text/javascript">
$(function(){
	$('body').on('click','.pagination a',
		function(){
		var isAble = $(this).parents('li').attr('class');
		if(isAble == 'disabled'){
			return;
		}
		var pno = $(this).attr('data-pno');
		$.ajax({
			type:"GET",
			url:"ipAjax.do",
			data:{
				pno : pno
			},
			success : function(result){
				$('tbody').empty();
				$.each(result.ipList, function(index, ip){
					var row = '';
					row += '<tr>';
					row += '<td>'+ip.TIMES+'</td>';
					row += '<td>IP: '+ip.IP+'</td>';
					row += '<td><button class="delete_btn btn btn-sm btn-default" data-ipNo='+ip.IP_NO+'>삭제</button></td>';
					row += '</tr>';
					row += '';
					$('tbody').append(row);
				});
				
				$('.paginationDiv').empty();
				var pagination = result.pagination;
				var row2 = '';
				row2 += '<ul class="pagination">';
				if(pagination.first){
					row2 += '<li class="disabled"><a href="#">&laquo;</a></li>';
				} else{
					row2 += '<li><a href="" data-pno="'+(pagination.page-1)+'"><span>&laquo;</span></a></li>';
				}
				for(var i=pagination.begin; i<= pagination.end; i++){
					if(pagination.page == i){
						row2 += '<li><a class="selected" data-pno="'+i+'">'+i+'</a></li>';
					} else{
						row2 += '<li><a href="#" data-pno="'+i+'">'+i+'</a></li>';
					}
				}
				if(pagination.last){
					row2 += '<li class="disabled"><a href="#">&raquo;</a></li>';	
				} else{
					row2 += '<li class=""><a href="#" data-pno='+(pagination.page+1)+'>&raquo;</a></li>';
				}
				row2 += '</ul>';
				$('.paginationDiv').append(row2);
			}
		})
		return false;
	});
	$('body').on('click','.delete_btn',function(){
		var ipNo = $(this).attr('data-ipNo');
		location.href='deleteIp.do?ip='+ipNo;
	});
})
</script>
</body>
</html>