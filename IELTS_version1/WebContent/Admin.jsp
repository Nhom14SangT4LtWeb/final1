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
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="MyFile.jsp"> Tài khoản <span
							class="caret"></span>
					</a>
						<ul class=" navbar-inverse dropdown-menu">
							<li><a href="#paper51" style='color: white'>User</a></li>
							<li><a href="#paper52" style='color: white'>Admin</a></li>
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
						<strong>Bảng tin</strong>
					</h3>
				</div>
				<div class="panel-body">
					<div class="alert alert-success">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						Admin giải quyết mục mail chờ xử lý.
					</div>
					<div class="alert alert-success">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						Admin đội hỗ trợ kỹ thuật làm ...
					</div>
					<div class="alert alert-success">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						Xem lại mục duyệt file Pubic.
					</div>
				</div>
			</div>
		</div>
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
		</div>
		<!-- PHAN TAO BUTTON CHAT VOI DOI HO TRO KY THUAT -->
		<p>
			<button class="btn btn-info fixChat">ĐỘI HỖ TRỢ KỸ THUẬT</button>
		</p>
		<div id="abc">
			<div class="panel panel-info fixPa">
				<div class="panel-heading">
					<strong>ĐỘI HỖ TRỢ KỸ THUẬT CHÀO BẠN</strong>
				</div>
				<div class="panel-body">
					<div class="row">
						<span class="badge pull-left">
							<h5>Chào bạn!</h5>
						</span> <br> <br> <span class="badge">
							<h5>Bạn đang gặp phải vấn đề gì?</h5>
						</span>
						<div class="input-group fixInp">
							<input type="text" class="form-control"> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">Send!</button>
								<button type="button" class="btn btn-default ">
									<span class="glyphicon glyphicon-paperclip"></span>
								</button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
				</div>
			</div>
		</div>
		<!-- SHOW HIDE CHAT BOX HO TRO KY THUAT -->
		<script>
    $(document).ready(function(){
        $(".btn-info").click(function(){
            $("#abc").toggle();
        })
    })
  </script>
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