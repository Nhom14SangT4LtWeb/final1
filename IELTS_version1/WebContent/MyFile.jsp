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
				          <option value="Document" selected>Document</option>
				          <option value="Listening">Listening</option>
				          <option value="Reading">Reading</option>
				         </select>
			        </form>
				    <form class="navbar-form navbar-right" role="search" style='margin-top:2%'>
  						<div class="input-group">
      						<input type="text" class="form-control" placeholder="Search for...">
      						<span class="input-group-btn">
        						<button class="btn btn-default " type="button">.<span class="glyphicon glyphicon-search"></span></button>
      						</span>
    					</div>
					</form>
  				</div>
			</div>
			
			<!-- Navbar phụ -->
			<div class="navbar navbar-default">
 				<div class="container-fluid">		
       				<form class="navbar-form navbar-left" role="typeupload">
       				<div class="input-group">	
       					<div class="input-group-btn">	
					        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Upload<span class="glyphicon glyphicon-upload"></span></button>
					        <ul class="dropdown-menu">
					          <li><a href="#" class="btnuploadFile">File</a></li>
					          <li role="separator" class="divider"></li>
					        </ul>
					  	</div>
					</div>
					</form>
					<form name="sortby" action="doDanhMuc?danhmuc=${danhmuchienhanh}" method="POST" class="navbar-form navbar-right" role="search" style='margin:0'>
						<select id ="sort"  name="sort" onchange="document.sortby.submit();" class="btn btn-default navbar-btn">
				          <option selected="selected" value="">-Sort by-</option>
				          <option value="" >File</option>
				        </select>
			        </form>
       				<button id ="viewdoc"name="viewdoc" type="button" class="btn btn-default navbar-btn"><span class="glyphicon glyphicon-tasks"></span> View Document</button>
    			</div>
			</div>
			<!--  -->
			<form method="post" action="">
			<div class="table-responsive">
			<table class="table table-hover" style="width: 100%">
				<thead>
					<tr>
						<td class="text-center" style='width:5%'>Loại</td>
						<td class="text-center" >Ten Tài Liệu</td>
						<td style='width:15%'>Ngày tạo</td>
						<td class="text-center" style='width:10%'>Thao tác</td>
				</thead>
				<tbody>
					<c:forEach items="${docList}" var="docs" >
					<tr>
						<td class="text-center"><a class="glyphicon glyphicon-file"></a></td>
						<td ><p name="doc_name" id="doc_name">${docs.doc_name}</p></td>
						<td>${docs.upload_date}</td>
						<td class="text-center">
							<a name="doc_guid"href="doViewDoc?doc_guid=${docs.doc_guid}" class="glyphicon glyphicon-tasks"></a>
							<a href="doDownloadFile?doc_guid=${docs.doc_guid}" class="glyphicon glyphicon-cloud-download"></a>
							<a href="doDeleteFile?doc_id=${docs.doc_id}&doc_guid=${docs.doc_guid}&danhmuchienhanh=${danhmuchienhanh}" class="glyphicon glyphicon-trash"></a>
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
	<!-- HOP THOAI UPLOAD FILE -->
	<div id="uploadFile" class="modalUpload">
		<form id="uploadForm" action="${pageContext.request.contextPath}/doUploadFile" method="post" enctype="multipart/form-data">
			<div class="panel panel-info">
				<div class="panel-heading">
					<strong>Update File</strong>
				</div>
				<div class="btn panel-info  btn-block">
					<strong><input type="file" size="60" id="file" name="file"></strong>
					<hr>
					<input name="danhmuchienhanh" value="${danhmuchienhanh}"/>
					<input type="submit" class="btn btn-md btn-ok"  value="OK">
					<input type="button" class="btn btn-md btn-cancel" value="Cancel"/>
				</div>
			</div>
		</form>
	</div>
	  <!-- Modal -->
 <div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Share File</h4>
            </div>
            <div class="modal-body">
				<form class="form-horizontal" role="form">
				  <div class="form-group">
				    <label for="inputNguoinhan3" class="col-sm-3 control-label">Người nhận</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" id="inputNguoinhan3" placeholder="">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputTailieu3" class="col-sm-3 control-label">Tài liệu:</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" name="tailieu3" value="${doc_name}"id="tailieu3" placeholder="">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputloinhan3" class="col-sm-3 control-label">Lời nhắn</label>
				    <div class="col-sm-9">
				      <textarea class="form-control" id="inputloinhan3" placeholder=""></textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-5">
				      <div class="checkbox">
				        <label class="col-sm-9">
				          <input type="checkbox"> Share cho publicFile
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group">
				  <button type="button" style="float:right; margin-right:3%" class="btn btn-primary">Send</button>
				    <button type="button" style="float:right; margin-right:3%"class="btn btn-default" data-dismiss="modal">Close</button>
                	
				  </div>
				</form>
            </div>
        </div>
    </div>
</div>
		<!-- TRUYEN CALENDAR -->
		<!-- hien thi hop thoai upload -->
		<script>
		    $(document).ready(function(){
		        $(".btnuploadFile").click(function(){
		            $("#uploadFile").show();
		        })
		    });
		    $(document).ready(function(){
		        $(".btn-cancel").click(function(){
		            $("#uploadFile").hide();
		        })
		    });
		</script>
		<script>
	  		$( function() {
	    	$( document ).tooltip();
	  		} );
  		</script>
<script>
$('#danhmuc').val("${danhmuchienhanh}");
</script>
</body>
</html>