<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="row" style='margin-left:0px;margin-right:0px'>
		<a href="userInfo" class="thumbnail" >
		<img id="avatar" src="${avatar_guid}" class="img-responsive"
					alt="exo1" >
		</a>
	</div>
	<ul class="nav nav-pills nav-stacked ">
		<li role="presentation"><a href="doDanhMuc?danhmuc=${'Document'}">Document</a></li>
		<li role="presentation"><a href="doDanhMuc?danhmuc=${'Listening'}">Listening</a></li>
		<li role="presentation"><a href="doDanhMuc?danhmuc=${'Reading'}">Reading</a></li>
		<li role="presentation"><a href="createTest">Create Test</a></li>
		<li role="presentation"><a href="doTest">Test</a></li>
	</ul>