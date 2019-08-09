<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="ko">
<head>
<title>네이버 시리즈</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
    .td-title-episode {
        font-weight: bold;
    }
    
    .td-price {
        font-weight: bold;
        color: dodgerblue;
    }
</style>
</head>
<body>
<div class="container">
    <div class="col-sm-12">
        <h1>나의 포인트   ${login_user.point}원</h1>
        <ul class="nav nav-pills nav-justified">
            <li class="active"><a href="#">구입내역</a></li>
            <li><a href="#">관심작품</a></li>
        </ul>
        
        <table class="table table-hover table-condensed">
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
                    <th>금액</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2019.07.18.</td>
                    <td><img src="../no_images.jpg" width="40px"; height="60px";></td>
                    <td class="td-title-episode">미스터 기간제 (특별회: 2019년 7월 7일 방송)</td>
                    <td class="td-price">무료</td>
                </tr>
            </tbody>
        </table>
        

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
</body>