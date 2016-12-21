<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<link rel="stylesheet" href="css/ChatBox.css" media="screen">
<link rel="stylesheet" href="css/Calendar_style.css" media="screen">
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui-datepicker.min.js"></script>
<!--  -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
<script src="http://malsup.github.com/jquery.form.js"></script>
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
		<!-- PHAN MAIN -->	
		<div class="row" style ='border: 1px solid #CDCDCD;width: 843px;min-height: 900px;   float:left;margin-left: 5px;margin-bottom: 5px;'>
			<!-- Navbar chính -->
			<div class="navbar navbar-default">
  				<div class="container-fluid">
				    <form class="navbar-form" role="search" style='margin-top:2%'>
  						<div class="input-group">
      						<span class="input-group-btn">
        						<button class="btn btn-default " type="button">Tạo đề <span class="glyphicon glyphicon-plus"></span></button>
      							<button class="btn btn-default " type="button">Xem <span class="glyphicon glyphicon-next"></span></button>
      						</span>
    					</div>
					</form>
  				</div>
			</div>
			<form method="post" action="${pageContext.request.contextPath}/doCreateTest" enctype="multipart/form-data">
				<div class="row">
				<div class="form-group">
				    <label for="tende" class="col-sm-1 control-label">Tên đề:</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="tende" placeholder="Đề số mấy">
				    </div>
				</div>
				</div>
				<br>
				<div class="panel panel-info">
					<div class="panel-heading">PHẦN ĐỀ</div>
					<div class="panel-body">
						Select file to upload:
				        <br />
				        <div class="form-group">
			    			<label for="inputTailieu3" class="col-sm-3 control-label">Tài liệu:</label>
			    			<div class="col-sm-9">
				        		<input type="file" name="file"  />
				        		<br />
				        	</div>
				        </div>
				        <div class="form-group">
			    			<label for="inputTailieu3" class="col-sm-3 control-label">mp3 kèm:</label>
			    			<div class="col-sm-9">
				        		<input type="file" name="file"  />
				        		<br />
				        	</div>
				        </div>
					</div>
				</div>
				<div class="panel panel-info">
					<div class="panel-heading">PHẦn ĐÁP ÁN</div>
					<div class="panel-body">
					        Select file to upload:
					        <br />
					        <input type="file" name="file"  />
					        <br />
					        <input type="file" name="file" />
					</div>
				</div>
			<div class="panel panel-info">
				<div class="panel-heading">PHẦN SCRIPT</div>
				<div class="panel-body">
				        Select file to upload:
				        <br />
				        <input type="file" name="file"  />
				        <br />
				        <input type="file" name="file" />
				</div>
			</div>
				<br />
				<br />
				<input type="submit" value="Upload" style='float:right; margin:8%'>
			</form>
		</div>		
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
</div>
</body>
</html>