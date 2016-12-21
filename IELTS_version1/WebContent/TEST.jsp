<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<link rel="stylesheet" href="css/ChatBox.css" media="screen">
<link rel="stylesheet" href="css/Calendar_style.css" media="screen">
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui-datepicker.min.js"></script>
<!--  -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
<script src="http://malsup.github.com/jquery.form.js"></script>
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
				    <form id="frmdanhmuc" name="frmdanhmuc" action="doDanhMuc?selected" method="POST" class="navbar-form navbar-left" style='width:60%'>
					    <button type="button" class="btn btn-default navbar-btn">.<span class="glyphicon glyphicon-th-list"></span></button>
					    <select id ="danhmuc" name="danhmuc" onchange="document.frmdanhmuc.submit();" class="btn btn-default navbar-btn" style='width:40%;'>
				          <option value="Document" selected>TEST</option>
				         </select>
			        </form>
  				</div>
			</div>
			<form method="post" action="">
			<div class="table-responsive">
			<table class="table table-hover" style="width: 100%">
				<thead>
					<tr>
						<td class="text-center">Tên đề</td>
						<td class="text-center" >Ten Tài Liệu</td>
						<td style='width:15%'>Ngày tạo</td>
						<td class="text-center" style='width:10%'>Thao tác</td>
				</thead>
				<tbody>
					<c:forEach items="${docList}" var="docs" >
					<tr>
						<td>${tende}</td>
						<td><p name="doc_name" id="doc_name">${docs.doc_name}</p></td>
						<td>${docs.upload_date}</td>
						<td class="text-center">
							<a name="doc_guid"href="" class="glyphicon glyphicon-tasks"></a>
							<a href="" class="glyphicon glyphicon-cloud-download"></a>
							<a name="doc_guid"href="" class="glyphicon glyphicon-trash"></a>
						</td>
					</tr>
					</c:forEach>
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
		<script>
	  		$( function() {
	    	$( document ).tooltip();
	  		} );
  		</script>
<script>
$('#danhmuc').val("{tende}");
</script>
</body>
</html>