<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4>
							<span class="glyphicon glyphicon-pencil"></span> Register
						</h4>
					</div>
					<div class="panel-body">
						<form method="POST" action="doRegister" class="form-horizontal">
							<div class="form-group">
								<label for="inputName3" class="col-sm-3 control-label ">Full
									name</label>
								<div class="col-sm-9 ">
									<input type="text" name="fullNameRegis"
										value="${user.fullName}" class="form-control"
										id="inputName3" placeholder="Name">
									<p class="text-right" style="color: red;">${errorfullNameRegis}</p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputUsername3" class="col-sm-3 control-label">Username</label>
								<div class="col-sm-9">
									<input type="text" name="userNameRegis"
										value="${user.userName}" class="form-control"
										id="inputUsername3" placeholder="Username">
									<p class="text-right" style="color: red;">${erroruserNameRegis}</p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
								<div class="col-sm-9">
									<input type="password" name="passwordRegis"
										value="${user.password}" class="form-control"
										id="inputPassword3" placeholder="Password">
									<p class="text-right" style="color: red;">${errorpasswordRegis}</p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputReenterPassword3"
									class="col-sm-3 control-label">Re-enter Password</label>
								<div class="col-sm-9">
									<input type="password" name="re_enterRegis"
										value="" class="form-control"
										id="inputReenterPassword3" placeholder="Re-enter Password">
									<p class="text-right" style="color: red;">${errorre_enterRegis}</p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">Email</label>
								<div class="col-sm-9">
									<input type="email" name="emailRegis"
										value="${user.email }" class="form-control"
										id="inputEmail3" placeholder="Email">
									<p class="text-right" style="color: red;">${erroremailRegis}</p>
									<br>
									<span class="form_hint">Proper format
										"name@something.com"</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Remember me</label>
								<div class="col-sm-9">
									<div class="checkbox">
										<label> <input type="checkbox" name="rememberRigis"
											value="Y">
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-9 col-sm-3">
									<a href=""><input type="reset" value="Reset" /></a> <a href=""><input
										type="submit" value="Submit" /></a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-3">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe class="embed-responsive-item" src="imgs/video.mp4"></iframe>
				</div>
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
											<td colspan="2"><a href=""><input type="reset"
													value="Reset" /></a> <a
												href="${pageContext.request.contextPath}/"><input
													type="button" value="Cancel" /></a> <a href=""><input
													type="submit" value="Submit" /></a></td>
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
										<td class="text-center"><a href="#">Sign Up</a></td>
										<td class="text-center"><a href="#">Password?</a></td>
									</tr>
								</tbody>
							</table>
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
</body>
</html>