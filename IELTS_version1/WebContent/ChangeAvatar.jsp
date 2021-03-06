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
					<li><a href="#">Home</a></li>
					<li class="active"><a href="MyProfile.jsp">My Profile</a></li>
					<li><a href="MyProfile.jsp">My File</a></li>
					<li><a href="MyBox.jsp">My Box</a></li>
					<li><a href="PublicFile.jsp">Public File</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="MyProfile.jsp"><span
							class="glyphicon glyphicon-user"></span>kemotsach</a></li>
					<li><a href="WEB.jsp"><span
							class="glyphicon glyphicon-log-in"></span>Log out</a></li>
				</ul>
			</div>
		</div>
		<!--  -->
		<div id="left"></div>
		<!--  -->
		<div id="content" class="row">
			<br>
			<br>
			<br>
			<div class="col-md-4 col-sm-4 col-xs-12 text-center">
				<img id="avatar" src="imgs/hoa.jpg" class="img-responsive"
					alt="exo1" width="304" height="236"> <br>
				<button type="button" class="changeavatar">
					<span class="glyphicon glyphicon-pencil" style="color: red"></span>
					Change avatar
				</button>
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<table class="table table-hover" id="#accordion" style="width: 100%">
					<tr>
						<td>Fullname:</td>
						<td>Phạm Xuân Hoàng</td>
						<td><a data-toggle="collapse" data-parent="#accordion"
							href="#editfullname" style="color: red"
							class="glyphicon glyphicon-pencil"></a></td>
					</tr>
					<tr id="editfullname" class="panel-collapse collapse info">
						<td class="form-horizontal"><label class="control-label">New
								fullname: </label></td>
						<td class="form-inline"><input class="form-control"
							placeholder="fullname..."> <a type="button-right"
							class="btn btn-save" href="">Save</a> <a type="button"
							class="btn btn-cancel" href="">Cancel</a></td>
						<td></td>
					</tr>
					<tr>
						<td>Username:</td>
						<td>kemotsach</td>
						<td><a data-toggle="collapse" data-parent="#accordion"
							href="#edituser" style="color: red"
							class="glyphicon glyphicon-pencil"></a></td>
					</tr>
					<tr id="edituser" class="panel-collapse collapse info">
						<td class="form-horizontal"><label class="control-label">New
								username: </label></td>
						<td class="form-inline"><input class="form-control"
							placeholder="username..."> <a type="button-right"
							class="btn btn-save" href="">Save</a> <a type="button"
							class="btn btn-cancel" href="">Cancel</a></td>
						<td></td>
					</tr>
					<tr>
						<td>Telephone number:</td>
						<td>0999999199919</td>
						<td><a data-toggle="collapse" data-parent="#accordion"
							href="#editphone" style="color: red"
							class="glyphicon glyphicon-pencil"></a></td>
					</tr>
					<tr id="editphone" class="panel-collapse collapse info">
						<td class="form-horizontal"><label class="control-label">New
								telephone number: </label></td>
						<td class="form-inline"><input class="form-control"
							placeholder="telephone number..."> <a type="button-right"
							class="btn btn-save" href="">Save</a> <a type="button"
							class="btn btn-cancel" href="">Cancel</a></td>
						<td></td>
					</tr>
					<tr>
						<td>Date of birth:</td>
						<td>30/07/1996</td>
						<td><a data-toggle="collapse" data-parent="#accordion"
							href="#editbirth" style="color: red"
							class="glyphicon glyphicon-pencil"></a></td>
					</tr>
					<tr id="editbirth" class="panel-collapse collapse info">
						<td class="form-horizontal"><label class="control-label">New
								date of birth: </label></td>
						<td class="form-inline"><input class="form-control"
							placeholder="date of birth..."> <a type="button-right"
							class="btn btn-save" href="">Save</a> <a type="button"
							class="btn btn-cancel" href="">Cancel</a></td>
						<td></td>
					</tr>
					<tr>
						<td>Nationaly:</td>
						<td>Vietnamese</td>
						<td><a data-toggle="collapse" data-parent="#accordion"
							href="#editnational" style="color: red"
							class="glyphicon glyphicon-pencil"></a></td>
					</tr>
					<tr id="editnational" class="panel-collapse collapse info">
						<td class="form-horizontal"><label class="control-label">New
								national: </label></td>
						<td class="form-inline"><input class="form-control"
							placeholder="national..."> <a type="button-right"
							class="btn btn-save" href="">Save</a> <a type="button"
							class="btn btn-cancel" href="">Cancel</a></td>
						<td></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td>qwerty@gmail.com</td>
						<td><a data-toggle="collapse" data-parent="#accordion"
							href="#editemail" style="color: red"
							class="glyphicon glyphicon-pencil"></a></td>
					</tr>
					<tr id="editemail" class="panel-collapse collapse info">
						<td class="form-horizontal"><label class="control-label">New
								email: </label></td>
						<td class="form-inline"><input class="form-control"
							placeholder="email..."> <a type="button-right"
							class="btn btn-save" href="">Save</a> <a type="button"
							class="btn btn-cancel" href="">Cancel</a></td>
						<td></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td>************</td>
						<td><a data-toggle="collapse" data-parent="#accordion"
							href="#editpass" style="color: red"
							class="glyphicon glyphicon-pencil"></a></td>
					</tr>
					<tr id="editpass" class="panel-collapse collapse info">
						<td><br>
						<label class="control-label col-sm-2 col-sm-2 col-xs-2">Current</label><br>
						<br> <label class="control-label col-sm-2">New</label><br>
						<br> <label class="control-label col-sm-2">Retype</label></td>
						<td><input type="current" class="form-control" id="cr"
							placeholder="current"> <input type="password"
							class="form-control" id="np" placeholder="new"> <input
							type="password" class="form-control" id="repw"
							placeholder="Re-enter password"> <a type="button-right"
							class="btn btn-save" href="">Save</a> <a type="button"
							class="btn btn-cancel" href="">Cancel</a></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
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
	</div>
	<!-- PHAN HOP THOAI CHANGE AVATAR -->
	<div id="showmodalchangeavatar" class="opacityFull"></div>
	<div id="opacityFullPage" class="modalUpload">
		<div class="panel panel-info">
			<div class="panel-heading">
				<strong>Update Avatar</strong>
			</div>
			<div class="btn panel-info  btn-block btn-file">
				<strong><input type="file" class=""></strong>
				<hr>
				<a href="MyProfile.jsp"><input type="button"
					class="btn btn-md btn-ok okAvatar" value="OK"></a> <input
					type="button" class="btn btn-md btn-cancel cancelAvatar"
					value="Cancel">
			</div>
		</div>
	</div>
	<!-- PHAN TAO BUTTON CHAT VOI DOI HO TRO KY THUAT -->
	<button class="btn btn-info fixChat chatKyThuat">ĐỘI HỖ TRỢ KỸ
		THUẬT</button>
	<div id="abc">
		<div class="panel panel-info fixPa">
			<div class="panel-heading">
				<strong>ĐỘI HỖ TRỢ KỸ THUẬT CHÀO BẠN</strong>
			</div>
			<div class="panel-body">
				<div class="row">
					<span class="badge pull-left"> Chào bạn! </span> <br> <br>
					<span class="badge"> Bạn đang gặp phải vấn đề gì? </span>
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
	       $(".chatKyThuat").click(function(){
	           $("#abc").toggle();
	       })
	})
    $(document).ready(function(){
        $(".changeavatar").click(function(){
            $("#opacityFullPage").toggle();
            $("#showmodalchangeavatar").toggle();
        })
    });
	$(document).ready(function(){
        $(".cancelAvatar").click(function(){
            $("#opacityFullPage").hide();
            $("#showmodalchangeavatar").hide();
        })
    });
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