<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="head-link" class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">THE WORLD SPEAKING IELTS</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="userHome">Home</a></li>
			<li><a href="userInfo">My Profile</a></li>
			<li><a href="userMyFile">My File</a></li>
			<li><a href="userMail">My Box</a></li>
			<li><a href="">Public File</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="userInfo"><span
					class="glyphicon glyphicon-user"></span>${user.userName}</a></li>
			<li><a href="web"><span class="glyphicon glyphicon-log-in"></span>Log
					out</a></li>
		</ul>
	</div>
</div>