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
    div {border: 1px dotted red}
</style>
</head>
<body>
<div class="container">
    <div class="col-sm-12">
        <h1>나의 포인트   ${login_user.point}원</h1>
        <ul class="nav nav-pills nav-justified">
            <li><a href="orderlist.jsp">구입내역</a></li>
            <li class="active"><a href="#">관심작품</a></li>
        </ul>

        <table>
           <colgroup>
              <col width="3%">
               <col width="10%">
               <col width="75%">
               <col width="*%">
           </colgroup>
           <tbody>
               <tr>
                   <td rowspan="2"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></td>
                   <td rowspan="2"><img src="http://placehold.it/80X90"></td>
                   <td>호텔 델루나 | 방영중</td>
                   <td rowspan="2">${관심.createDate}</td>

               </tr>
               <tr>
                   <td>주연 아이유, 여진구, 조현철, 정동환, 신정근, 배해선, 피오, 이도현, 이태선, 서이숙, 강홍석, 미나 | 2019.07.21. (일)</td>
               </tr>

               <tr>
                   <td rowspan="2"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></td>
                   <td rowspan="2"><img src="http://placehold.it/80X90"></td>
                   <td>호텔 델루나 | 방영중</td>
                   <td rowspan="2">${관심.createDate}</td>

               </tr>
               <tr>
                   <td>주연 아이유, 여진구, 조현철, 정동환, 신정근, 배해선, 피오, 이도현, 이태선, 서이숙, 강홍석, 미나 | 2019.07.21. (일)</td>
               </tr>
           </tbody>
        </table>
    
    </div>
</div>
</body>