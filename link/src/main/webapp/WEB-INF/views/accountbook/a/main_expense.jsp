<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Link : </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="../../../resources/images/shortcut-icon.PNG">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="/link/resources/css/accountBook/expensive.css">
	<link rel="stylesheet" href="/link/resources/css/blog/blog.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<style>
        div {
           margin-top: 2px;
        }
        .ACbook{
              width:66px;
              height:20px;
              font-size:12px;
        }
        li{list-style: none; }
         .active{
            color: #111;
            font-weight: bold;
        }
         .btn-button{float: right;padding: 1px 7px; font-size: 13px;}
    	
    </style>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
       <script>
           google.charts.load('current', {packages: ['corechart', 'bar']});
           google.charts.setOnLoadCallback(drawStacked);

           function drawStacked() {
           var data = new google.visualization.DataTable();
           data.addColumn('timeofday', 'Time of Day');
           data.addColumn('number', 'Motivation Level');
           data.addColumn('number', 'Energy Level');

           data.addRows([
           [{v: [8, 0, 0], f: '8 am'}, 1, .25],
           [{v: [9, 0, 0], f: '9 am'}, 2, .5],
           [{v: [10, 0, 0], f:'10 am'}, 3, 1],
           [{v: [11, 0, 0], f: '11 am'}, 4, 2.25],
           [{v: [12, 0, 0], f: '12 pm'}, 5, 2.25],
           [{v: [13, 0, 0], f: '1 pm'}, 6, 3],
           [{v: [14, 0, 0], f: '2 pm'}, 7, 4],
           [{v: [15, 0, 0], f: '3 pm'}, 8, 5.25],
           [{v: [16, 0, 0], f: '4 pm'}, 9, 7.5],
           [{v: [17, 0, 0], f: '5 pm'}, 10, 10],
           ]);

           var options = {
           title: '2017.01.01~2017.01.31',
           isStacked: true,
           hAxis: {
           title: '',
           format: 'h:mm a',
           viewWindow: {
           min: [7, 30, 0],
           max: [17, 30, 0]
           }
           },
           vAxis: {
           title: ')'
           }
           };
               
            var data = google.visualization.arrayToDataTable([
           ['카테고리', '금액', { role: 'style' }],
           ['식비', 300000, '#365bd6'], // RGB value
           ['주거', 1500000, '#365bd6'], // English color name
           ['건강', 150000, '#365bd6'],
           ['교통/차량', 250000, '#365bd6'],
           ['경조사', 50000, '#365bd6'],
           ['용돈', 350000, '#365bd6'],
           ['생활용품', 350000, '#365bd6'],
           ['기타', 21450, '#365bd6' ], // CSS-style declaration
           ]);

          var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
           chart.draw(data, options);
           }
           
           </script>
</head>
<body>
     <%@include file="../../common/nav.jsp"%>
    <div class="container-fluid">
        <div class="row">
        
            <div class="col-sm-2" style="background-color: lightgray; ">
                  <%@ include file="../modal.jsp" %>
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
                        <!-- Button trigger modal -->
                        <button class="btn btn-default btn-xs">금액감추기</button>
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
                    <div class="col-sm-12 text-center">
                        <strong></strong>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="/link/accountbook/expense.do">지출</a></li>
                            <li><a href="/link/accountbook/income.do">수입</a></li>
                            <li><a href="/link/accountbook/calendar.do">달력</a></li>
                        </ul>
                        <div id="outcome">
                               <div id="chart_div"></div>
                        </div>
                        
                    </div>
                </div>
               
                <div class="row">
						<div class="col-sm-12">
							<form action="expense.do" method="post">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox" /></th>
											<th>날짜</th>
											<th>사용내역</th>
											<th>현금</th>
											<th>카드</th>
											<th>분류</th>
											<th>태그</th>
										</tr>
									</thead>
									<tbody>
										<tr>
										<c:forEach var="expense" items="${expenseList }">
											<td><input type="checkbox" /></td>
											<td><input class="form-control" type="text" name="date"
												placeholder="${expense.dateString }"></td>
											<td><input class="form-control" type="text" name=""
												placeholder="${expense.detail }"></td>
											<td class="text-right"><input class="form-control"
												type="text"  name="cash" placeholder="${expense.cash }"></td>
											<td class="text-right"><input class="form-control"
												type="text" name="card"  placeholder="${expense.card }"></td>
											<td><input class="form-control" type="text" name=""
												placeholder="${expense.category.categoryName}"></td>
											<td><input class="form-control" type="text" name=""
												placeholder="${expense.tag.tagName }"></td>
										</c:forEach>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="3">
												<button class="btn btn-default btn-sm">선택삭제</button>
												<button class="btn btn-default btn-sm">전부삭제</button>
											</td>
											<td class="text-right">0</td>
											<td class="text-right">6900</td>
											<td colspan="2" rowspan="2" class="text-center"
												style="vertical-align: middle;">
												<button class="btn btn-primary" type="submit">저장하기</button>
												<button class="btn btn-default">정산하기</button>

											</td>
										</tr>
										<tr>
											<td colspan="3"><strong>지출합계</strong></td>
											<td class="text-right" colspan="2">1,226,900</td>
										</tr>
									</tfoot>
								</table>
							</form>
						</div>
					</div>                
            </div>
        </div>
    </div>
</body>
</html>