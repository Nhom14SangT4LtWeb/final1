<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Website ho tro luyen thi IELTS</title>
<jsp:include page="_lib.jsp"></jsp:include>
<!-- Thu vien calendar -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui-datepicker.min.js"></script>
</head>
<body>
	<div id="main">
		<!-- PHAN LOGO AND COVER IMAGES -->
		<jsp:include page="_header.jsp"></jsp:include>
		<!-- PHAN HEADER -->
		<div id="head-link" class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">THE WORLD SPEAKING IELTS</a>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="webUser">Home</a></li>
					<li><a href="publicWebUser">Public File</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="userInfo"><span
							class="glyphicon glyphicon-user"></span>${user.userName}</a></li>
					<li><a href="doLogout"><span class="glyphicon glyphicon-log-in"></span>Log
							out</a></li>
				</ul>
			</div>
		</div>
		<!--  -->
		<div class="row" style ='border: 1px solid #CDCDCD; min-height: 900px;margin-left: 5px;margin-right: 5px;margin-bottom: 5px;'>
			<div class="navbar navbar-default">
	  				<div class="container-fluid">
	    				<form class="navbar-form navbar-right" role="search">
	  						<div class="input-group">
	      						<input type="text" class="form-control" aria-label="..." style='width:300px'>
						      	<div class="input-group-btn">
						        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">.<span class="caret">.</span></button>
						        <ul class="dropdown-menu dropdown-menu-right" style='width: 337px'>
						          <li><a href="#">Tất cả mail</a></li>
						          <li role="separator" class="divider"></li>
						          <li><a href="#">Mail tin tức</a></li>
						          <li role="separator" class="divider"></li>
						          <li><a href="#">Mail tài liệu</a></li>
						        </ul>
						      	</div><!-- /btn-group -->
	      						<span class="input-group-btn">
	        						<button class="btn btn-default " type="button">.<span class="glyphicon glyphicon-search"></span></button>
	      						</span>
	    					</div>
						</form>
	  				</div>
				</div>
				<form method="post" action="registration.jsp">
		<div class="table-responsive">
			<table class="table table-hover" style="width: 100%">
				<thead>
					<tr>
						<td>STT</td>
						<td>Ten Tài Liệu</td>
						<td>Tên Thành Viên Shared</td>
						<td>Ngày share</td>
						<td>Thao tác</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>6</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>7</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>6</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>7</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>6</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>7</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>6</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
					<tr>
						<td>7</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td><a class="glyphicon glyphicon-save"></a> <a
							class="glyphicon glyphicon-cloud-download"></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
	</div>
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
	<!-- PHAN TAO BUTTON CHAT VOI DOI HO TRO KY THUAT -->
	<jsp:include page="_chatkythuat.jsp"></jsp:include>
</body>
</html>