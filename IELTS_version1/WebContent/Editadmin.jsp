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
		<div id="head">
			<div id="logo" class="img-responsive"></div>
			<div id="baner" class="img-responsive"></div>
		</div>
		<!-- PHAN HEADER -->
		<div id="head-link" class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">THE WORLD SPEAKING IELTS</a>
				</div>
				<ul class="nav navbar-nav">
					<li ><a href="#">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="MyFile.jsp"> Tài khoản <span
							class="caret"></span>
					</a>
						<ul class=" navbar-inverse dropdown-menu">
							<li class ="active"><a href="ListUser.jsp" style='color: white'>User</a></li>
							<li><a href="Listadmin.jsp" style='color: white'>Admin</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="MyFile.jsp"> Kho tài liệu <span
							class="caret"></span>
					</a>
						<ul class=" navbar-inverse dropdown-menu">
							<li><a href="#paper51" style='color: white'>Đã lưu trữ</a></li>
							<li><a href="#paper52" style='color: white'>Đang chờ phê
									duyệt</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="MyFile.jsp"> Mail <span
							class="caret"></span>
					</a>
						<ul class=" navbar-inverse dropdown-menu">
							<li><a href="#paper51" style='color: white'>Mail hệ
									thống</a></li>
							<li><a href="#paper52" style='color: white'>Mục chờ xử
									lý</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="MyProfile.jsp"><span
							class="glyphicon glyphicon-user"></span>Admin</a></li>
					<li><a href="WEB.jsp"><span
							class="glyphicon glyphicon-log-in"></span>Log out</a></li>
				</ul>
			</div>
		</div>
		<!--  -->
		<div id="left">
			<jsp:include page="_menuadmin.jsp"></jsp:include>
		</div>
		<div class="row" style ='border: 1px solid #CDCDCD;width: 843px;min-height: 900px;   float:left;margin-left: 5px;margin-bottom: 5px;'>
			<div class="navbar navbar-default">
	  				<div class="container-fluid">
	        			<button type="button" class="btn btn-default ">.<input type="checkbox" aria-label="..." ></button>
	    				<button type="button" class="btn btn-default ">.<span class="glyphicon glyphicon-trash"></span></button>
	    				<button type="button" class="btn btn-default ">.<span class="glyphicon glyphicon-pencil"></span></button>
	    				<button type="button" value="Refresh Page" onClick="window.location.reload()" class="btn btn-default navbar-btn" >.<span class="glyphicon glyphicon-repeat"></span></button>
						<button type="button" class="btn btn-default navbar-btn" >.<span class="glyphicon glyphicon-arrow-left"></span></button>
	    				<select id ="danhmuc" class="btn btn-default navbar-btn" style='width:40%'>
				          <option>Tất cả admin</option>
				        </select>
					</div>
				</div>
				<form method="post" action="registration.jsp">
		<div class="table-responsive">
			<table class="table table-hover" style="width: 100%">
				<thead>
					<tr>
						<td style='width:20%' class="text-center">Thao tác</td>
						<td>Fullname</td>
						<td>Username</td>
						<td>Avatar</td>
						<td>Email</td>
						<td>Active</td>
						<td>Public Time</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>	
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" aria-label="..." style='margin-left:25%;margin-right:20%'>
							<a href="" class="glyphicon glyphicon-trash"></a>
							<a href="" class="glyphicon glyphicon-pencil"></a>
						</td>
						<td></a></td>
						<td><a href=""></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<br>
		</div>
		<script src="//rawgithub.com/stidges/jquery-searchable/master/dist/jquery.searchable-1.0.0.min.js"></script>
		<!-- PHAN FOOTER -->
		<div id="footer" class="navbar navbar-inverse ">
			<div class="row">
				<div class="text-center">
					<address>
						<strong style="color: #dbdbdb"> Trường Đại học Sư Phạm Kỹ
							Thuật TP. Hồ Chí Minh - Khoa Công Nghệ Thông Tin<br> THIẾT
							KẾ WEBSITE HỖ TRỢ LUYỆN THI IELTS<br> Nhóm thực hiện:
							GROUP14_ST4_LTW_EGT Địa chỉ: 484 Lê Văn Việt,Q9,Tp.HCM. <br>
						</strong>
					</address>
				</div>
			</div>
	
</body>
</html>