<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Website ho tro luyen thi IELTS</title>
<jsp:include page="_lib.jsp"></jsp:include>
</head>
<body>
	<div id="main">
		<!-- PHAN LOGO AND COVER IMAGES -->
		<jsp:include page="_header.jsp"></jsp:include>
		<!-- PHAN HEADER -->
		<jsp:include page="_menuweb.jsp"></jsp:include>
		<!-- PHAN CONTAIN -->
		<div class="row">
			<div class="col-md-9 col-sm-9 col-xs-9">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe class="embed-responsive-item" src="imgs/video.mp4"></iframe>
				</div>
				<div class="panel panel-info">
					<div class="panel-heading">WHAT...?</div>
					<div class="panel-body">Panel content</div>
				</div>
				<br>
				<div class="panel panel-info">
					<div class="panel-heading">WHERE...?</div>
					<div class="panel-body">Panel content</div>
				</div>
				<br>
				<div class="panel panel-info">
					<div class="panel-heading">WHEN...?</div>
					<div class="panel-body">Panel content</div>
				</div>
				<br>
				<div class="panel panel-info">
					<div class="panel-heading">HOW...?</div>
					<div class="panel-body">Panel content</div>
				</div>
				<br>
				<div class="panel panel-info">
					<div class="panel-heading">WHO...?</div>
					<div class="panel-body">Panel content</div>
				</div>
				<br>
				<div class="panel panel-info">
					<div class="panel-heading">WHY...?</div>
					<div class="panel-body">Panel content</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-6 text-right">
				<p class="glyphicon glyphicon-hand-right" style="font-size: 200%;">
					NOW!</p>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-3 text-right">
				<a href="login"><button class="btn btn-sm">Sign In</button></a> <a
					href="register"><button class="btn btn-sm">REGISTER</button></a>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-3 text-left">
				<a href="#" class="glyphicon glyphicon-hand-up "
					style="font-size: 300%;"></a>
			</div>
		</div>
		<hr>
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
		<div class="col-md-2 col-sm-2 col-xs-2"
			style='float: right; display: block; bottom: 8%; right: 10%; position: fixed;'>
			<img class="img-responsive" src="imgs/questions-to-ask-0.jpg">
			<img class="img-responsive" src="imgs/baz-question.png">
		</div>
	</div>
</body>
</html>