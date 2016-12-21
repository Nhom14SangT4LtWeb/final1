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
			<iframe src="File.jsp"
				style='margin-left: 2%; width: 48%; height: 900px; border: 1px solid #CDCDCD;'></iframe>
			<iframe src=""
				style='width: 48%; height: 900px; border: 1px solid #CDCDCD;'></iframe>
		</div>
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
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
	<div class="container">
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog modal-sm">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-lock"></span> Login
						</h4>
					</div>
					<div class="modal-body" style="padding: 40px 50px;">
						<form method="POST" action="doLogin">
							<div class="form-group">
								<label>User Name</label> <input type="text" name="userName"
									value="${user.userName}" />
							</div>
							<div class="form-group">
								<label>Password</label> <input type="text" name="password"
									value="${user.password}" />
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="rememberMe"
									value="Y" />Remember me</label>
							</div>
							<input type="submit" value="Submit"
								class="btn btn-primary btn-block" /><span
								class="glyphicon glyphicon-off"></span> <a
								href="${pageContext.request.contextPath}/">Cancel</a>
						</form>
					</div>
					<div class="modal-footer">
						<div class="row">
							<div class="col-md-5">
								<p>
									Not a member? <a href="#"><br>Sign Up</a>
								</p>
							</div>
							<div class="col-md-offset-4">
								<p>
									Forgot <a href="#"><br>Password?</a>
								</p>
							</div>
						</div>
					</div>
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
	<script>
    $(document).ready(function(){
        $(".fixChat").click(function(){
            $("#showhidechatbox").toggle();
        })
        $(document).ready(function(){
        	$("#btnsig").click(function(){
            $("#myModal").modal();
        	});
    		});
        $(document).ready(function(){
        	$("#btnreg ").click(function(){
            $("#modlRegis").modal();
        	});
    		});
    })
  	</script>
</body>
</html>