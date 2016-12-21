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
    				<div class="navbar-header">
        				<button type="button" class="btn btn-default navbar-btn">.<span class="glyphicon glyphicon-th"></span></button>
        				<button type="button" class="btn btn-default navbar-btn">.<span class="glyphicon glyphicon-th-list"></span></button>
    				</div>
    				<form class="navbar-form navbar-right" role="search">
  						<div class="input-group">
      						<input type="text" class="form-control" placeholder="Search for...">
      						<span class="input-group-btn">
        						<button class="btn btn-default " type="button">.<span class="glyphicon glyphicon-search"></span></button>
      						</span>
    					</div>
					</form>
					<form class="navbar-form navbar-right" role="input">
						<div class="input-group">
					      <input type="text" class="form-control" aria-label="..." style='width:300px'>
					      <div class="input-group-btn">
					        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">.<span class="caret">.</span></button>
					        <ul class="dropdown-menu dropdown-menu-right" style='width: 337px'>
					          <li><a href="#">Document</a></li>
					          <li role="separator" class="divider"></li>
					          <li><a href="#">Listening</a></li>
					          <li role="separator" class="divider"></li>
					          <li><a href="#">Reading</a></li>
					          <li role="separator" class="divider"></li>
					          <li><a href="#">Test</a></li>
					          <li role="separator" class="divider"></li>
					          <li><a href="#">Create test</a></li>
					        </ul>
					      </div><!-- /btn-group -->
				    	</div><!-- /input-group -->
				    </form>
					<button type="button" class="btn btn-default navbar-btn" style='float:right'>.<span class="glyphicon glyphicon-repeat"></span></button>
					<button type="button" class="btn btn-default navbar-btn" style='float:right'>.<span class="glyphicon glyphicon-arrow-left"></span></button>
  				</div>
			</div>
			<!-- Navbar phụ -->
			<div class="navbar navbar-default" style='margin-bottom: 0px;'>
  				<div class="container-fluid">
        				<button type="button" class="btn btn-default navbar-btn"><span class="glyphicon glyphicon-share"></span>.Share</button>
        				<button type="button" class="btn btn-default navbar-btn"><span class="glyphicon glyphicon-download-alt"></span>.Download</button>
        				<button type="button" class="btn btn-default navbar-btn"><span class="glyphicon glyphicon-tasks"></span>.View Document</button>
        				<button type="button" class="btn btn-default navbar-btn"><span class="glyphicon glyphicon-copy"></span>.Copy</button>
        				<button type="button" class="btn btn-default navbar-btn"><span class="glyphicon glyphicon-scissors"></span>.Cut</button>
        				<button type="button" class="btn btn-default navbar-btn"><span class="glyphicon glyphicon-trash"></span>.Detelet</button>
	    				<form class="navbar-form navbar-right" role="sort">
							<div class="input-group">
			    				<div class="input-group-btn">	
							        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort by<span class="caret"></span></button>
							        <ul class="dropdown-menu">
							          <li><a href="#">Name</a></li>
							          <li role="separator" class="divider"></li>
							          <li><a href="#">Type</a></li>
							        </ul>
							  	</div>
							</div>
							<div class="input-group">
								.<span class="input-group-addon" style='float:right'>
									<input type="checkbox" aria-label="..." >
								</span>
						    </div>
					     </form>
    			</div>
			</div>
			<!--  -->
			<form method="post" action="registration.jsp">
		<div class="table-responsive">
			<table class="table table-hover" style="width: 100%">
				<thead>
					<tr>
						<td>STT</td>
						<td>Ten Tài Liệu</td>
						<td>Tạo bởi</td>
						<td>Ngày tạo</td>
						<td >Thao tác</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>6</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>7</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>6</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>7</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="">Listening 1</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="">Listening 2</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="">Listening 3</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="">Listening 4</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="">Listening 5</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>6</td>
						<td><a href="">Listening 6</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
					<tr>
						<td>7</td>
						<td><a href="">Listening 7</a></td>
						<td>kemotsach</td>
						<td>15-08-2016</td>
						<td> 
							<a class="glyphicon glyphicon-save"></a>
							<a class="glyphicon glyphicon-cloud-download"></a>
							<span class="input-group" style='float:right; margin-right: 17px'>
								<input type="checkbox" aria-label="..." style=''>
							</span>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
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