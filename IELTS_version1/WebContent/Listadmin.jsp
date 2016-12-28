<%@ page import="java.util.*"%>
<%@page import="java.*"%>

<%@page import="org.o7planning.simplewebapp.utils.Taikhoan"%>
<%@page import="org.o7planning.simplewebapp.utils.DBUtils"%>
<%@ page import="java.sql.*"%>
<%@page import="org.o7planning.simplewebapp.conn.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page import="UserAccount.TaiKhoaNguoiDung1"%>
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
<script src="//rawgithub.com/stidges/jquery-searchable/master/dist/jquery.searchable-1.0.0.min.js"></script>
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
					<li ><a href="#">Home</a></li>
					<li class="active"><a class="dropdown-toggle"
						data-toggle="dropdown" href="MyFile.jsp"> Tài khoản <span
							class="caret"></span>
					</a>
						<ul class=" navbar-inverse dropdown-menu">
							<li><a href="listUser" style='color: white'>User</a></li>
							<li><a href="listAdmin" style='color: white'>Admin</a></li>
						</ul></li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a><span
							class="glyphicon glyphicon-user"></span>Admin</a></li>
					<li><a href="doLogout"><span
							class="glyphicon glyphicon-log-in"></span>Log out</a></li>
				</ul>
			</div>
		</div>
		<!--  -->
		<div class="row"
			style='border: 1px solid #CDCDCD; width: 998px; min-height: 900px; float: left; margin-left: 5px; margin-bottom: 5px;'>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-6">
						<a href="Themuser_Admin"><type
								="button" class="btn btn-primary"> <span
								class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add
							</button></a>
					</div>
					<!-- /.col-lg-6 -->

					<form method="post" name="frm" action="search" class="form-inline">
						<!--                                   <form action="Search" class="form-inline" data-ajax="true" data-ajax-loading="#ajax-loader" data-ajax-loading-duration="2000" data-ajax-method="Get" data-ajax-mode="replace" data-ajax-update="#result" id="form0" method="post"> -->
						<!--                                     <input type="hidden" name="MaChuDe" value="LT" /> -->
						<div class="col-md-6">
							<div class="input-group">
								<input type="search" id="search" class="form-control"
									placeholder="Find..."> <span class="input-group-btn">
									<button class="btn btn-default" type="submit">
										.<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
									</button>
								</span>
							</div>
							<!-- /input-group -->
						</div>


					</form>



					<!-- /.col-lg-6 -->
				</div>
				<!-- /.row -->
				<hr>
				<div style="overflow: auto">
					<table class="table" id="table">
						<thead>
							<tr>
								<th>Fullname</th>
								<th>Username</th>
								<th>Avatar</th>
								<th>Email</th>
								<th>Phone Number</th>
								<th>Nationaly</th>
								<th>Active</th>
								<th>Public Time</th>
							</tr>
						</thead>
						<tbody>
							<% Taikhoan db=new Taikhoan();
	         Connection conn =DBConnect.getConnection();
	         DBUtils dbs=new DBUtils();	                   
									if (request.getAttribute("piList") == null) {
										for (TaiKhoaNguoiDung1 thr :dbs.Listadmin(conn)) {
								%>
							<tr>
								<td><%=thr.getFullName() %></td>
								<td><%=thr.getUserName() %></td>
								<td></td>
								<td><%=thr.getEmail() %></td>
								<td><%=thr.getTelephone() %></td>
								<td><%=thr.getDateOfBirth() %></td>
								<td><%=thr.getActive() %></td>
								<td><%=thr.getPublicDate() %></td>
							</tr>
							<%
									}
									}
								%>


							<%
									int count = 0;
									String color = "#F9EBB3";
									if (request.getAttribute("piList") != null) {
										ArrayList al = (ArrayList) request.getAttribute("piList");
										System.out.println(al);
										Iterator itr = al.iterator();
										while (itr.hasNext()) {
											if ((count % 2) == 0) {
												color = "#eeffee";
											}
											count++;
											ArrayList pList = (ArrayList) itr.next();
							
											%>

							<tr>
								<td><a href="#"><%=pList.get(2) %></a></td>
								<td><%=pList.get(3) %></td>
								<td><%=pList.get(3) %></td>
								<td><%=pList.get(3) %>></td>
								<td><%=pList.get(3) %></td>
								<td><%=pList.get(3) %></td>
								<td><%=pList.get(3) %></td>
								<td><%=pList.get(3) %></td>

								<%
									}
									}
								if (count == 0&&request.getAttribute("piList") != null) {
								%>
								<b>Không tìm thấy thread nào!!!</b>
								<%
									}
								%>
							
						</tbody>
					</table>
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
	<script>
	$(function () {
	    $( '#table' ).searchable({
	        striped: true,
	        searchType: 'fuzzy'
	    });
	    
	    $( '#searchable-container' ).searchable({
	        searchField: '#container-search',
	        selector: '.row',
	        childSelector: '.col-xs-4',
	        show: function( elem ) {
	            elem.slideDown(100);
	        },
	        hide: function( elem ) {
	            elem.slideUp( 100 );
	        }
	    })
	});	
	</script>	
</body>
</html>
</html>