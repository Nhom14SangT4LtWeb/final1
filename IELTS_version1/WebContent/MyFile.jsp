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
		<div id="left"></div>
		<div id="content">
			<div>
				<div class="text-left"
					style='margin-top: 5px; margin-left: 5px; margin-bottom: 5px'>
					<small>Folder</small>
				</div>
				<div class="row"></div>
			</div>
			<hr>
			<div class="text-left"
				style='margin-top: 5px; margin-left: 5px; margin-bottom: 5px'>
				<small>File</small>
			</div>
			<div class="row">
				<iframe src="File.jsp"
					style='margin-left: 15px; margin-bottom: 2%; width: 48%; height: 600px; border: 1px solid #CDCDCD;'></iframe>
				<iframe src=""
					style='width: 45%; margin-bottom: 2%; height: 600px; border: 1px solid #CDCDCD;'></iframe>
			</div>
		</div>
		<!-- PHAN CANLENDAR, THOI KHOA BIEU, NHAC NHO -->
		<div id="right" class="navbar-inverse">
			<div class="navbar navbar-inverse">
				<div class="container-fluid">
					<ul class="nav navbar-nav navbar-right">
						<li><a data-toggle="collapse" href="#calendar">CALENDAR......</a>
						</li>
						<li><label for="TaoTKB"></label> <a href="userTimetable"><span
								class="glyphicon glyphicon-plus" id="TaoTKB"
								title="Tao thoi khoa bieu"></span></a></li>
					</ul>
					<div id="calendar" class="panel-collapse collapse"></div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="widget-title ">
						<strong>Thời khóa biểu của bạn hôm nay</strong>
					</h3>
				</div>
				<div class="panel-body">
					<div class="alert alert-success">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Success!</strong> 8:30 SA || Learning "Listening 1".
					</div>
					<div class="alert alert-warning">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Warning!</strong> 15:30 SA || Learning "Speaking 2".
					</div>
					<div class="alert alert-info">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Info!</strong> 20:00 SA || Practice Learning "Listening
						1".
					</div>
				</div>
			</div>
			<div class="sidebar-item">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="widget-title">
							<strong>Những công việc đang dở dang</strong>
						</h3>
					</div>
					<div class="panel-body">
						<div class="alert alert-warning ">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Warning!</strong> 23/09/2016 || "Listening 1" chưa hoàn
							thành!.
						</div>
						<div class="alert alert-warning">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Warning!</strong> 24/09/2016 || "Speaking 2" chưa hoàn
							thành!.
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
		</div>
		<!-- PHAN TAO BUTTON CHAT VOI DOI HO TRO KY THUAT -->
		<jsp:include page="_chatkythuat.jsp"></jsp:include>
		<!-- TRUYEN CALENDAR -->
		<script>
    	$('#calendar').datepicker({
      	  	inline: true,
        	firstDay: 1,
        	showOtherMonths: true,
        	dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
    	});
	</script>
		<!--  -->
		<script>
  		$( function() {
    	$( document ).tooltip();
  		} );
  	</script>
</body>
</html>