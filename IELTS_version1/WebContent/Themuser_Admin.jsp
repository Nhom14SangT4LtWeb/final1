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
		<div id="head-link" class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">THE WORLD SPEAKING IELTS</a>
				</div>
				<ul class="nav navbar-nav">
					<li ><a href="#">Home</a></li>
					<li class="active"><a class="dropdown-toggle"
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
		<!-- PHAN CONTAIN -->
		<div class="row" style='margin:0'>
			<div class= "content">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4>
							<span class="glyphicon glyphicon-pencil"></span> Add Admin
						</h4>
					</div>
					<div class="panel-body">
							<div class="form-group">
								<label for="inputName3" class="col-sm-3 control-label ">Full
									name</label>
								<div class="col-sm-9 ">
									<input type="text" name="fullNameRegis"
										value="" class="form-control"
										id="inputName3" placeholder="Name">
									<p class="text-right" style="color: red;"></p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputUsername3" class="col-sm-3 control-label">Username</label>
								<div class="col-sm-9">
									<input type="text" name="userNameRegis"
										value="" class="form-control"
										id="inputUsername3" placeholder="Username">
									<p class="text-right" style="color: red;"></p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
								<div class="col-sm-9">
									<input type="password" name="passwordRegis"
										value="" class="form-control"
										id="inputPassword3" placeholder="Password">
									<p class="text-right" style="color: red;"></p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputReenterPassword3"
									class="col-sm-3 control-label">Re-enter Password</label>
								<div class="col-sm-9">
									<input type="password" name="re_enterRegis"
										value="" class="form-control"
										id="inputReenterPassword3" placeholder="Re-enter Password">
									<p class="text-right" style="color: red;"></p>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">Email</label>
								<div class="col-sm-9">
									<input type="email" name="emailRegis"
										value="" class="form-control"
										id="inputEmail3" placeholder="Email">
									<p class="text-right" style="color: red;"></p>
									<br>
									<span class="form_hint">Proper format
										"name@something.com"</span>
								</div>
							</div>
							<div class ="from-group">
								<label for= "inputTelephone" class="col-sm-3 control-label">Phone number</label>
								<div class="col-sm-9">
									<input type="Phone number" name="PhonenumberRegis"
										value="" class="form-control"
										id="" placeholder="Phone number">
									<p class="text-right" style="color: red;"></p>
								</div>
							</div>
							<div class = "from - group">
								<label for= "inputNationaly" class="col-sm-3 control-label">Nationaly</label>
								<div class="col-sm-9">
									<input type="Nationaly" name="NationalyRegis"
										value="" class="form-control"
										id="" placeholder="Nationaly">
									<p class="text-right" style="color: red;"></p>
								</div>
							</div>
							<div class = "from - group">
								<label for= "inputDateofbirth" class="col-sm-3 control-label">Date of birth</label>
								<div class="col-sm-9">
									<input type="Dateofbirth" name="DateofbirthRegis"
										value="" class="form-control"
										id="" placeholder="Date of birth">
									<p class="text-right" style="color: red;"></p>
								</div>
							</div>
							<div class= "row" style='float:right; margin:2%'>
								 <div class="btn-group">
    								<button type="button" class="btn btn-default" >Add</button>
    								<button type="button" class="btn btn-default" >Cancel</button>
 								 </div>
							</div>
						</form>
					</div>	
				</div>
			</div>
			</div>
		</div>
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>