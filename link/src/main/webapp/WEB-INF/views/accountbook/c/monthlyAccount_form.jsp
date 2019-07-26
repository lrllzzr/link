
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Link : </title>
	<link rel="shortcut icon" type="image/x-icon" href="../../../resources/images/shortcut-icon.PNG">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	 <link rel="stylesheet" href="/link/resources/css/accountBook/expensive.css">
	<link rel="stylesheet" href="/link/resources/css/blog/blog.css">
	<style>
        div {
           margin-top: 2px;
        }
        .ACbook{
              width:66px;
              height:20px;
              font-size:12px;
        }
        #line{
        
        }
        li{
            list-style: none;
        }
        .active{
            color: #111;
            font-weight: bold;
        }
        .btn-button{float: right;padding: 1px 7px; font-size: 13px;}
        .tb{padding: 50px;}
    </style>
</head>
<body>
    <%@include file="../../common/nav.jsp"%>
    <div class="container-fluid">
        <div class="row">
<div class="col-sm-2" style="background-color: lightgray; ">
                 <button type="button" class="btn-button btn" data-toggle="modal" data-target="#open-writing-account">
                      <strong>빠른 쓰기</strong>
                 </button>
                <div>
					<ul>
						<li><a href="/link/accountbook/expense.do" class="active"><h4>가계부</h4></a></li>
						<li><a href="/link/accountbook/monthly.do"
							style="color: dimgray"><h4>보고서</h4></a></li>
						<li><a href="/link/accountbook/budget.do"
							style="color: dimgray"><h4>예산쓰기</h4></a></li>
						<li><a href="/link/accountbook/mylist.do"
							style="color: dimgray"><h4>월결산</h4></a></li>
						
						<li class="month-accountBook">▼이달의 가계
							<ul>
								<li>+수입</li>
								<li>-지출</li>
							</ul>
						</li>
						
						<li>▼총 누적 자산</li>

						<li>자산합계</li>
						
						<li>▼최근 태그</li>

						<li>미정국수</li>

					</ul>
				</div> 
            </div>
            <div class="col-sm-10">
                <div class="row">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6 text-right">
                        <form class="form-inline">
                            <div class="form-group">
                                <input type="text" class="form-control">
                                <button class="btn btn-success">검색</button>
                            </div>
                        </form>
                    </div>
                </div>
           
              
                <div class="row">
                    <div class="col-sm-12">
                          <div class="row">
                              <div class="col-sm-12" style="padding-left: 25px; border-bottom: 2px grey solid;">
                                   <h3>월결산 쓰기</h3>
                              </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="padding-top: 50px;">
                    <div class="col-sm-12">
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                        <p>글쓰는 폼 들어갈자리</p>
                    </div>
                </div>
            <div class="row" style="padding-top: 50px; padding-bottom: 30px; border-bottom: 1px grey solid">
                <div class="col-sm-12">
                    <div class="col-sm-1">
                        설정정보
                    </div>
                    <div class="col-sm-2" style="outline: 1px grey solid;">
                       <div class="row">
                        <strong>글공개 </strong>
                        <input type="radio" name="public" value=""> 공개  
                        <input type="radio" name="no" value=""> 비공개 
                       </div>
                         <div class="row">
                        <strong>스크랩 </strong>   
                        <input type="radio" name="y" value="">허용   
                        <input type="radio" name="n" value=""> 허용안함 
                       </div>
                    </div>
                </div>
            </div>
            <div class="row">
               <div class="col-sm-12">
                    <form action="">
                    <button type="btn btn-button" name="" value="">
                        저장
                    </button>
                    <button type="btn btn-button">
                        취소
                    </button>   
                </form>
               </div>
               
            </div>
            </div>
        </div>
    </div>
</body>
</html>