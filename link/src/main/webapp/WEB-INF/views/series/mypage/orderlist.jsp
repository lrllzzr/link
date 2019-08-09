<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Link : 시리즈</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
    .td-title-episode {font-weight: bold;}
    .img-size{width: 40px; height: 60px;}
</style>
</head>
<body>
<%@ include file="../common/jstl.jsp" %>
<%@ include file="../common/nav.jsp" %>
<div class="container">
    <div class="col-sm-12">
        <h1>${LOGIN_USER.nickName }님의 포인트 <fmt:formatNumber type="number" maxFractionDigits="3" value="${LOGIN_USER.point }"></fmt:formatNumber>원</h1>
        <ul class="nav nav-pills nav-justified">
            <li class="active"><a href="orderlist.do">구입내역</a></li>
            <li><a href="like.do">좋아요 한 작품</a></li>
        </ul>
        
        <table class="table table-hover table-condensed" style="margin-top: 20px;">
           <colgroup>
               <col width="3%">
               <col width="5%">
               <col width="75%">
               <col width="*%">
           </colgroup>
            <thead>
                <tr>
                    <th>구매일자</th>
                    <th>제목</th>
                    <th> </th>
                    <th>다운로드</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2019.07.18.</td>
                    <td><a href="#"><img class="img-size" src="/link/resources/images/series/vods/ll"></a></td>
                    <td class="td-title-episode"><a href="#">미스터 기간제 (특별회: 2019년 7월 7일 방송)</a></td>
                    <td><button class="btn">다운로드</button></td>
                </tr>
            </tbody>
        </table>
        

        <!-- <nav class="text-center">
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
        </nav> -->
    </div>
</div>
</body>