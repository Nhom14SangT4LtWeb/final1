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

<link href="css/fullcalendar.min.css" rel="stylesheet" />
<link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print" />
<script src="js/moment.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script>
	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay,listWeek'
			},
			defaultDate: '2016-12-12',
			navLinks: true, // can click day/week names to navigate views

			weekNumbers: true,
			weekNumbersWithinDays: true,
			weekNumberCalculation: 'ISO',

			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'All Day Event',
					start: '2016-12-01'
				},
				{
					title: 'Long Event',
					start: '2016-12-07',
					end: '2016-12-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-12-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-12-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2016-12-11',
					end: '2016-12-13'
				},
				{
					title: 'Meeting',
					start: '2016-12-12T10:30:00',
					end: '2016-12-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2016-12-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2016-12-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2016-12-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2016-12-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2016-12-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2016-12-28'
				}
			]
		});
		
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}

</style>
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
			<div class="navbar navbar-">
  				<div id='calendar'></div>
			</div>
			
		</div>
		<!-- PHAN FOOTER -->
		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
		<!-- PHAN TAO BUTTON CHAT VOI DOI HO TRO KY THUAT -->
</body>
</html>