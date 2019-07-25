<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
    <title>Link : </title>
	<link rel="shortcut icon" type="image/x-icon" href="../../../resources/images/shortcut-icon.PNG">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="https://www.gstatic.com/charts/loader.js">
    </script>
      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="../../../../resources/css/accountBook/expensive.css">
	  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
        select{width: 20%; padding: 10px 10px 10px 10px; border: 1px solid #ccc;border-radius: 3px; resize: vertical;}
    </style>
    
    <script type="text/javascript">
        /*원형 그래프*/
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['분류', '금액'],
          ['수입',    2000000],
          ['지출',    600000],
        ]);

        var options = {
          title: '수입/지출 분석'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
    
    <!--막대그래프-->
    <script>
        google.charts.load('current', {packages: ['corechart', 'bar']});
        google.charts.setOnLoadCallback(drawBasic);

        function drawBasic() {
            
            var data = google.visualization.arrayToDataTable([
         ['분류', '금액', { role: 'style' }],
         ['식비', 1000000, '#395fbf'],            
         ['주거통신', 2000000, '#395fbf'],            
         ['생활용품', 5000000, '#395fbf'],
         ['의복', 200000, '#395fbf' ],
         ['건강', 200000, '#395fbf' ],
         ['교육', 200000, '#395fbf' ],
         ['용돈', 1000000, '#395fbf'],            
         ['기타', 2000000, '#395fbf'],            
         ['기타', 5000000, '#395fbf'],
         ['기타', 200000, '#395fbf' ],
         ['기타', 200000, '#395fbf' ],
         ['기타', 200000, '#395fbf' ],
      ]);

      var options = {
        width: 1250,
        height: 400,
        legend: { position: 'top', maxLines: 3 },
        bar: { groupWidth: '50%' },
        isStacked: true,
      };

        
        var chart = new google.visualization.ColumnChart(
        document.getElementById('chart_div1'));

        chart.draw(data, options);
        }
    </script>
</head>
<body>
    <nav class="navbar navbar-default">    
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">LINK</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Page 1</a></li>
                <li><a href="#">Page 2</a></li>
                <li><a href="#">Page 3</a></li>
            </ul>
        </div>
    </nav>
    <div class="container-fluid">
        
        <div class="row">
            <div class="col-sm-2" style="background-color: lightgray; ">
                <button type="button" class="btn-button btn" data-toggle="modal" data-target="#open-writing-account">
                   <strong>빠른 쓰기</strong>
                </button>
                <div>
                    <ul>
                       <li>
                           <a href="#" style="color: dimgray"><h4>쓰기</h4></a>
                       </li>
                        <li>
                           <a href="#" class="active"><h4>보고서</h4></a>
                       </li>
                        <li>
                            <a href="#" style="color: dimgray"><h4>예산쓰기</h4></a>
                       </li>
                        <li>
                            <a href="#" style="color: dimgray"><h4>목표</h4></a>
                       </li>
                       <li>
                           <a href="#"  style="color: dimgray"><h4>월결산</h4></a>
                       </li>
                       <li class="month-accountBook" >▼이달의 가계<ul>
                            <li>+수입</li>
                            <li>-지출</li>
                        </ul>
                       </li>
                       <li>▼이달의 지출 분석<ul>
                           <li>*그래프</li>
                           <li><p>저축/보험= 파란색 (%)표시</p>
                               <p>소비지출= 초록색 (%)표시</p>
                               <p>분류(사용많이한 top4) %표시</p></li>
                           </ul>
                          
                       </li>
                       <li>
                           <a href="#" style="color: black">▼총 누적 자산</a>
                               <ul>
                                   <li>
                                        자산합계
                                   </li>
                               </ul>
                       </li>
                       <li>▼최근 태그</li>
                       <ul>
                           <li>미정국수</li>
                       </ul>
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
                        <strong>2019-07-01 ~ 2019-07-31</strong>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li  class="active"><a href="#">월 보고서</a></li>
                            <li><a href="#">연간 보고서</a></li>
                            <li><a href="#">지출 분석</a></li>
                            
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                          <div class="row">
                            <div class="col-sm-12">
                               <div class="col-sm-3"></div>
                                <div class="col-sm-9">
                                    <div><div id="piechart" style="width: 800px; height: 300px;">
                            </div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                           <div class="col-sm-12" style="padding: 36px 10px 3px 35px; border-bottom: 2px solid #496e85">
                             <strong >지출 현황</strong>   
                           </div>
                        </div>    
                        </div>
                        
                        
                        <div class="row">
                           <div class="col-sm-12" style="padding: 20px 10px 3px 35px;">
                              <div class="col-sm-3">
                                  
                              </div>
                              <div class="col-sm-9">
                                  <label class="radio-inline">
                                  <input type="radio" value="option1">지출
                              </label>
                                <select id="category" name="category">
                                  <option value="">전체보기</option>
                                  <option  value="">식비</option>
                                  <option  value="">주거통신</option>
                                  <option  value="">생활용품</option>
                                  <option  value="">의복/미용</option>
                                  <option  value="">기타 등등</option>
                                </select>
                                <label class="radio-inline">
                                    <input type="radio" value="option2">저축
                              </label>
                              </div>
                               
                           </div>
                        </div>
                        <div class="row" style="padding: 30px 10px 30px 35px;">
                                <div class="col-sm-12">
                                      <div class="col-sm-2"></div>
                                      <div class="col-sm-10">
                                       <div id="chart_div1" style="width: 1000; height: 1000;"></div>   
                                      </div>
                                        
                                 
                                </div>
                            
                        </div>
                        
                    </div>
                    <div class="col-sm-12" style="padding: 4px 10px 3px 35px;  border-top:2px solid black; border-bottom: 2px solid black">
                            <div class="col-sm-3">지출합계  211,600</div>
                            <div class="col-sm-3">저축/보험합계</div>
                            <div class="col-sm-3">카드대금</div>
                            <div class="col-sm-3"></div>
                             
                        </div>
                    <div class="row">
                        
                    </div>
                </div>
                
            </div>
        </div>
</body>
</html>