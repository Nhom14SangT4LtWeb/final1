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
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/master
		<div class="row" style='margin-left:1%'>
			<div class="col-sm-6" >
				<div align="justify" class="col-md-8">
				     <div class="col-md-3">
						<form name="counter"><input type="text" size="8" name="d2" disabled ></form> 
						<script> 
						 var minutes=20
						 var seconds=0 
						 document.counter.d2.value='0.20' 
						 
						function display()
						{ 
							 
							   
							 if(seconds<=0 && seconds<0)
								 {
								 	$("#frmlambai input").prop("disabled", "disabled");
								 	XuatDiem();
								 	return;
								 }
								 else
									 {
									 	document.counter.d2.value="00:"+minutes+":"+seconds 
									    setTimeout("display()",1000) 
										 if (seconds<=0)
										 { 
											 seconds=59 
											 minutes-=1 
										 } 
										 if (minutes<=-1)
										 { 
											 seconds=-1 
											 minutes+=1 
										 } 
										 else
											 seconds-=1 
											
								 	}
						} 
						display()
						</script> 
					</div> 
			</div>
			<div class="col-sm-4">
				<audio controls>
		          <source src="${de.mp3Guid}" type="audio/mpeg">
		        </audio>
		    </div>
		</div>
		<div class="row">
			<div class="col-sm-8">
				<iframe style='width:100%;height:900px' name="path" src="${de.docGuid}" ></iframe>
			</div>
			<div class="col-sm-4">
				<form  id="frmlambai?idDe=${de.idDe}" method="post" action="cham_bai" >
		           <center><input type="hidden"  name="idDe" value="${de.idDe}"/>
		           <table border="1" width="100%" height="900px" cellpadding="5">
		               <thead>
		                   <tr>
		                      <th colspan="2"><br><strong>Phần trả lời</strong></th>
		                   </tr>
		               </thead>
		               <tbody>
		                   <tr>
		                       <td>Câu 1:</td>
		                       <td><input type="text" name="cau1" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 2:</td>
		                       <td><input type="text" name="cau2" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 3:</td>
		                       <td><input type="text" name="cau3" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 4:</td>
		                       <td><input type="text" name="cau4" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 5:</td>
		                       <td><input type="text" name="cau5" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 6:</td>
		                       <td><input type="text" name="cau6" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 7:</td>
		                       <td><input type="text" name="cau7" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 8:</td>
		                       <td><input type="text" name="cau8" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 9:</td>
		                       <td><input type="text" name="cau9" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 10:</td>
		                       <td><input type="text" name="cau10" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 11:</td>
		                       <td><input type="text" name="cau11" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 12:</td>
		                       <td><input type="text" name="cau12" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 13:</td>
		                       <td><input type="text" name="cau13" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 14:</td>
		                       <td><input type="text" name="cau14" value="" /></td>
		                   </tr>
		                   <tr>
		                       <td>Câu 15:</td>
		                       <td><input type="text" name="cau15" value="" /></td>
		                   </tr>
		                   <tr>
		                   	<td></td>
		                       <td>
		                       <input type="reset" value="Reset" class="btn btn-info"/>
		                       <input id="btnnop" class="btn btn-info" onclick="return confirmAction()" type="submit" value="Nộp bài" />
		                       </td>
		                   </tr>
		               </tbody>
		           </table>
		           </center>
		       </form>
		</div>
<<<<<<< HEAD
=======
=======
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
>>>>>>> origin/master
>>>>>>> origin/master
		</div>
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
<<<<<<< HEAD
=======
	<!-- PHAN TAO BUTTON CHAT VOI DOI HO TRO KY THUAT -->
		<jsp:include page="_chatkythuat.jsp"></jsp:include>
>>>>>>> origin/master
		<script>
	  		$( function() {
	    	$( document ).tooltip();
	  		} );
  		</script>
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/master
  		<SCRIPT LANGUAGE="JavaScript">
		function confirmAction() {
			return confirm("Nộp bài thi!")
			document.getElementById('btnnop').disabled = true;
		}
	</SCRIPT>
<<<<<<< HEAD
=======
=======
<script>
$('#danhmuc').val("{tende}");
</script>
>>>>>>> origin/master
>>>>>>> origin/master
</body>
</html>