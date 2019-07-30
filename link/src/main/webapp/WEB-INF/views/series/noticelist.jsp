<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="ko">
<head>
<title>LINK 시리즈</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
    a {color:black;}
    a:hover{color:black;}
    
</style>
</head>
<body>
<div class="container">
    <div class="page-header">
        <h1>공지사항</h1>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <table class="table">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>등록일</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="notice" items="${notices}">
                        <tr>
                            <td>${notice.no}</td>
                            <td><a href="noticedetail.do?no=${notice.no }">${notice.title}</a></td>
                            <td><fmt:formatDate value="${notice.createDate}"/></td>
                        </tr>
                    </c:forEach>
                    
                </tbody>
            </table>
        </div>
    </div>
    
    <div class="row">
		<div class="col-sm-12 text-center">
	        <nav class="text-center">
	          <ul class="pagination">
	            <li>
	              <a href="#" aria-label="Previous">
	                <span aria-hidden="true">&laquo;</span>
	              </a>
	            </li>
	            <li class="active"><a href="#">1</a></li>
	            <li><a href="#">2</a></li>
	            <li><a href="#">3</a></li>
	            <li><a href="#">4</a></li>
	            <li><a href="#">5</a></li>
	            <li>
	              <a href="#" aria-label="Next">
	                <span aria-hidden="true">&raquo;</span>
	              </a>
	            </li>
	          </ul>
	        </nav>
		</div>
    </div>
    <div class="text-right">
        <a href="noticeform.do" class="btn btn-default">글쓰기</a>
    </div>
</div> 
</body>