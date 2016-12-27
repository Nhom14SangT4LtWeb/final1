<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Insert title here</title>
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
			<div class="col-md-3 col-sm-3 col-xs-3">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4>
							<span class="glyphicon glyphicon-lock"></span> Login
						</h4>
					</div>
					<div class="panel-body">
						<p style="color: red;">${errorString}</p>
						<form method="POST" action="doLogin">
							<div class="row">
								<table class="table-responsive" style="width: 100%">
									<tbody>
										<tr>
											<td>User Name</td>
											<td><input type="text" name="userName"
												value="${user.userName}" /></td>
										</tr>
										<tr>
											<td>Password</td>
											<td><input type="password" name="password"
												value="${user.password}" /></td>
										</tr>
										<tr>
											<td>Remember me</td>
											<td><input type="checkbox" name="rememberMe" value="Y" /></td>
										</tr>
										<tr class="text-right">
											<td colspan="2">
												<a href=""><input type="reset"	value="Reset"/></a> 
												<a href="${pageContext.request.contextPath}/"><input type="button" value="Cancel" /></a>
												<a href=""><input type="submit" value="Submit" /></a>
											</td>
										</tr>
								</table>
							</div>
						</form>
					</div>
					<div class="panel-footer">
						<div class="row">
							<table class="table-responsive" style="width: 100%">
								<thead>
									<tr>
										<td class="text-center">Not a member?</td>
										<td class="text-center">Forgot</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center"><a href="register">Sign Up</a></td>
										<td class="text-center"><a href="#">Password?</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-6 text-right">
				<p class="glyphicon glyphicon-hand-right" style="font-size: 200%;">
					NOW!</p>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-3 text-right">
				<button class="btn btn-sm">Sign In</button>
				<button class="btn btn-sm">REGISTER</button>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-3 text-left">
				<a href="#" class="glyphicon glyphicon-hand-up "
					style="font-size: 300%;"></a>
			</div>
		</div>
		<hr>
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
	<!-- PHAN TAO BUTTON CHAT VOI DOI HO TRO KY THUAT -->
	<jsp:include page="_chatkythuat.jsp"></jsp:include>
</body>
</html>