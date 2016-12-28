<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Website ho tro luyen thi IELTS</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>
<script src="js/npm.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
<link
	href="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/ResetFormatPage.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/selector.css">
<link href="css/reponsive.css" rel="stylesheet" type="text/css" />

<!-- Thu vien calendar -->
<link rel="stylesheet" href="css/Calendar_style.css" media="screen">
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui-datepicker.min.js"></script>
<link rel="stylesheet" href="css/ChatBox.css" media="screen">

<link rel="stylesheet" href="css/ChatBox.css" media="screen">
</head>
<body>
	<div id="main">
		<!-- PHAN LOGO AND COVER IMAGES -->
		<jsp:include page="_header.jsp"></jsp:include>
		<!-- PHAN HEADER -->
		<jsp:include page="_menu.jsp"></jsp:include>
		<!--  -->
		<div id="left">
			<jsp:include page="_menuleft.jsp"></jsp:include>
		</div>
		<div class="row" style ='border: 1px solid #CDCDCD;width: 843px;min-height: 900px;   float:left;margin-left: 5px;margin-bottom: 5px;'>
			<div class="navbar navbar-default">
	  				<div class="container-fluid">
	        			<form name="frmdanhmucmail" action="demo" method="POST" class="navbar-form navbar-left" style='width:60%'>
	        			<button type="button" class="btn btn-default ">.<input type="checkbox" aria-label="..." /></button>
	    				<button type="button" class="btn btn-default ">.<span class="glyphicon glyphicon-trash"></span></button>
	    				<select id ="danhmuc" class="btn btn-default navbar-btn" style='width:40%'>
				          <option>Tất cả mail</option>
				          <option>Mail tin tức</option>
				          <option>Mail tài liệu</option>
				        </select>
				        <button type="submit" class="btn btn-default navbar-btn" >GO</button>
						</form>
					</div>
				</div>
				<form method="post" action="registration.jsp">
		<div class="table-responsive">
			<table class="table table-hover" style="width: 100%">
				<thead>
					<tr>
						<td style='width:15%' class="text-center">Thao tác</td>
						<td>Tiêu đề</td>
						<td>Người gửi</td>
						<td>Ngày nhận</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>	
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
						</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
		</div>
		<!-- PHAN FOOTER -->
		<!--<jsp:include page="_footer.jsp"></jsp:include>-->
		</div>
</body>
</html>