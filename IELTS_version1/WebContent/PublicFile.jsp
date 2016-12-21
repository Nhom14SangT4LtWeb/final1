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
		<jsp:include page="_menu.jsp"></jsp:include>
		<!--  -->
		<div id="left"></div>
		<div id="content"></div>
		<!-- PHAN CANLENDAR, THOI KHOA BIEU, NHAC NHO -->
		<div id="right" class="navbar-inverse">
			<div class="navbar navbar-inverse">
				<div class="container-fluid">
					<ul class="nav navbar-nav navbar-right">
						<li><a data-toggle="collapse" href="#calendar">CALENDAR......</a>
						</li>
						<li><label for="TaoTKB"></label> <a href="IndexCalendar.jsp"><span
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