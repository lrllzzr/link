<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Link : </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link rel="shortcut icon" type="image/x-icon" href="../../../resources/images/shortcut-icon.PNG">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
    </style>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
       <script>
       google.charts.load('current', {packages: ['corechart', 'bar']});
       google.charts.setOnLoadCallback(drawBasic);

       function drawBasic() {

             var data = new google.visualization.DataTable();
             data.addColumn('string', '카테고리');
             data.addColumn('number', '금액');

             data.addRows([
            <c:forEach var="income" items="${totalIncome}">
               ['${income.CATEGORY_NAME}', ${income.TOTAL}],
			</c:forEach>
               ]);

             var options = {
               title: '카테고리별 총 수입금액',
               hAxis: {
                 title: '카테고리'
               },
               vAxis: {
                 title: '수입금액(원)'
               }
             };

             var chart = new google.visualization.ColumnChart(
               document.getElementById('chart_div'));

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
                        <button class="btn btn-default btn-xs">금액감추기</button>
                    </div>
                    <div class="col-sm-6 text-right">
                        <div class="form-inline">
                            <div class="form-group">
                                <input type="text" class="form-control">
                                <button class="btn btn-success">검색</button>
                            </div>
                        </div>
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
                            <li ><a href="/link/accountbook/expense.do">지출</a></li>
                            <li class="active"><a href="/link/accountbook/income.do">수입</a></li>
                            <li><a href="/link/accountbook/calendar.do">달력</a></li>
                        </ul>
                        <div id="outcome">
                             <div id="chart_div"></div>
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    <div class="col-sm-12">
                    	<form action="income.do" method="post">
                        <table class="table table-bordered" class="form-inline">
                            <thead>
                                <tr>
                                   <th><input type="checkbox"/></th>
                                   <th>날짜</th>
                                   <th>수입내역</th>
                                   <th>금액</th>
                                   <th>분류</th>
                                   <th>태그</th>
                               </tr>
                            </thead>   
                            <tbody>
                            	<c:forEach var="income" items="${incomeList }">
                                <tr>
                            	   <td><input type="checkbox" /></td>
                                   <td><input class="form-control" type="text" value="${income.dateString }"></td>
                                   <td><input class="form-control" type="text"  value="${income.detail }"></td>
                                   <td ><input class="form-control" type="text"  value="${income.cash }"></td>
                                   <td>
										<select id="cat"  class="form-control">
											<option value="">카테고리 선택</option>
											<c:forEach var="category" items="${incomeCategory }">
												<option  value="${category.categoryNo }"  ${income.category.categoryNo eq category.categoryNo ? 'selected' :'' }> 
												${category.categoryName }
												</option>
											</c:forEach>
										</select>
									</td>
                                   <td><input class="form-control" type="text" value="${income.tag.tagName }"></td>
                                </tr>
                            	</c:forEach>
                               	
                               	<tr>
									<td><input type="checkbox" /></td>
									<td><input class="form-control" type="date" name="date" ></td>
									<td><input class="form-control" type="text" name="detail" ></td>
									<td class="text-right"><input class="form-control" type="text"  name="cash" ></td>
									<td>
										<select id="cat" name="category" class="form-control">
											<option value="">카테고리 선택</option>
											<c:forEach var="category" items="${incomeCategory }">
												<option value="${category.categoryNo }"> ${category.categoryName }</option>
											</c:forEach>
										</select>
									</td>
									<td><input class="form-control" type="text" name="tag" ></td>
								</tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="3">
                                        <button class="btn btn-default btn-sm">선택삭제</button>
                                        <button class="btn btn-default btn-sm">전부삭제</button>
                                    </td>
                                    <td class="text-right"><fmt:formatNumber value="${totalCash }"/></td>
                                    <td class="text-right"></td>
                                    <td colspan="2" rowspan="2" class="text-center" style="vertical-align: middle;">
                                          <button class="btn btn-primary" type="submit">저장하기</button>
                                        <button class="btn btn-default">정산하기</button>   
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <strong>수입합계</strong>
                                    </td>
                                    <td class="text-right" colspan="2" >
                                    	<fmt:formatNumber value="${totalCash }"/>
                                    </td>
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