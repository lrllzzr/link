<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>LINK 시리즈</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="page-header">
    	<h1>공지사항 상세정보</h1>
    </div>
    
    <div class="row">
    	<div class="col-sm-12">
    		<table class="table">
    			<tbody>
	    			<tr>
	    				<th>제목</th>
	    				<td>${notice.title }</td>
	    				<th>작성일</th>
						<td><fmt:formatDate value="${notice.createDate }"/></td>					   				
	    			</tr>
	    			<tr>
	    			    <th colspan="4">내용</th>
	    			</tr>
	    			<tr>
	    			    <td>${notice.contents}</td>
	    			</tr>
    			</tbody>
    		</table>
    	</div>
    </div>
    
    
</div>
</body>
</html>