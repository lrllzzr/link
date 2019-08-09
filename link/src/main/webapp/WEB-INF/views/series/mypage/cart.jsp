<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    /* div {border: 1px dotted red} */
    .img-size {width: 70px; height: 100px;}
    td{vertical-align: middle !important;}
</style>
</head>
<body>
<%@ include file="../common/jstl.jsp" %>
<%@ include file="../common/nav.jsp" %>
<div class="container">
<h3>${LOGIN_USER.nickName }님의 장바구니에 담긴 상품입니다.</h3>
    <form>
		<div><input id="checkall" type="checkbox">전체</div>
		<table class="table table-condensed well">
               <colgroup>
                  <col width="3%">
                  <col width="10%">
                  <col width="25%">
                  <col width="*">
                  <col width="10%">
                  <col width="10%">
               </colgroup>
               <tbody>
               		<c:forEach var="cart" items="${carts }">
						<tr>
							<td><input type="checkbox" name="chk" value="" style=""></td>
							<td><img class="img-size" src="/link/resources/images/series/vods/${cart.img }"></td>
							<td>${cart.vtitle }</td>
							<td>${cart.etitle }</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.price }"></fmt:formatNumber>원</td>
							<td><button class="btn">삭제</button></td>
						</tr>
					</c:forEach>
               </tbody>
        </table>
        <div class="text-right">
            결제 금액(<span class="checked">0</span>건 선택): x,xxx원
        </div>

        <div class="text-right">
        	<button class="btn btn-default">선택상품 삭제</button>
            <button class="btn" type="submit">선택상품 구매</button>
        </div>
    </form>
</div>
<script type="text/javascript">
	$(function(){
		$("#checkall").change(function(){
	        if($("#checkall").prop("checked")){
	            $("input[name=chk]").prop("checked",true);
	        }else{
	            $("input[name=chk]").prop("checked",false);
	        }
		    var checked = $("input:checkbox[name=chk]:checked").length;
		    $(".checked").text(checked);
	    });
		
		$("input[name=chk]").change(function(){
	    	var checked = $("input:checkbox[name=chk]:checked").length;
		    $(".checked").text(checked);
	    });
	})
</script>
</body>