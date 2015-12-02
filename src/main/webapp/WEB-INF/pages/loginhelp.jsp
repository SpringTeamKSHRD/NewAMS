<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jquery/jquery.js"></script>
</head>
<style>
* {
	padding: 0px;
	margin: 0px;
	background: white;
}

li {
	font-family: Georgia;
	font-size: 16px;
	color: blue;
}

b {
	background: none;
}

li:hover {
	background: white;
}
</style>
<body>
	<div class="container-fluid" style="background: rgb(240, 240, 240);">
		<div class="row col-md-12" style="padding: 0px; margin: auto;">
			<!--row1  -->
			<div class="col-sm-12" style="padding: 0px;">
				<h1
					style="text-align: center; font-family: 'Monotype Corsiva'; font-weight: bold; color: blue; border-bottom: 2px solid blue;">
					Article Management API</h1>
			</div>
		</div>
		<!--end row1  -->
		<div class="row col-md-12" style="padding: 0px; margin: auto;">
			<!--row2  -->
			<div class="col-sm-12" style="padding: 0px;">
				<ul class="nav nav-tabs nav-justified">
					<li role="presentation"><a class="act" href="api">Article</a></li>
					<li role="presentation" class="active"><a href="loginhelp">User Login</a></li>
					<li role="presentation"><a
						href="userarticlepage">User Article</a></li>
					<li role="presentation"><a href="adminuser">Admin
							User</a></li>
				</ul>
			</div>
		</div>
		
		<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">			
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color: red; text-align: center;">Login
						Method POST</h4>
					<h4 style="text-align: center; color: green;">URL:http://team-master.herokuapp.com/api/login</h4>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="4" class="form-control" id="textget1"></textarea>
					<button type="button" style="margin-top: 10px;"
						class="btn btn-primary pull-right" onclick="send1()">
						<b>S</b>end
					</button>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="8" style="color: blue;" cols="auto"
						class="form-control" id="display1"></textarea>
				</div>
			</div>			
		</div>
		<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">			
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color: red; text-align: center;">Login Status
						Method GET</h4>
					<h4 style="text-align: center; color: green;">URL:http://team-master.herokuapp.com/api/login/status</h4>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="25" style="color: blue;" cols="auto"
						class="form-control" id="display2"></textarea>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<button type="button" style="margin-top: 10px;"
						class="btn btn-primary pull-right" onclick="send2()">
						<b>S</b>end
					</button>
				</div>				
			</div>			
		</div>
		<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">			
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color: red; text-align: center;">Logout
						Method GET</h4>
					<h4 style="text-align: center; color: green;">URL:http://team-master.herokuapp.com/api/logout</h4>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="10" style="color: blue;" cols="auto"
						class="form-control" id="display3"></textarea>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<button type="button" style="margin-top: 10px;"
						class="btn btn-primary pull-right" onclick="send3()">
						<b>S</b>end
					</button>
				</div>
			</div>			
		</div>		
		
	</div>
	<script type="text/javascript">
		$("#textget1").val(JSON.stringify({
			"username":"admin","password":"1"
		}, null, '\t'));
		function send1() {
			$
					.ajax({
						type : "POST",
						contentType : 'application/json',
						data : $("#textget1").val(),
						url : "${pageContext.request.contextPath}/api/login",
						success : function(data) {
							$("#display1")
									.val(JSON.stringify(data, null, '\t'));
						},
						error : function(data) {
							$("#display1")
									.val(JSON.stringify(data, null, '\t'));
						}
					});
		}
		function send2() {
			$
					.ajax({
						type : "GET",
						contentType : 'application/json',
						url : "${pageContext.request.contextPath}/api/login/status",
						success : function(data) {
							$("#display2")
									.val(JSON.stringify(data, null, '\t'));
						},
						error : function(data) {
							$("#display2")
									.val(JSON.stringify(data, null, '\t'));
						}
					});
		}
		function send3() {
			$
					.ajax({
						type : "GET",
						contentType : 'application/json',
						url : "${pageContext.request.contextPath}/api/logout",
						success : function(data) {
							$("#display3")
									.val(JSON.stringify(data, null, '\t'));
						},
						error : function(data) {
							$("#display3")
									.val(JSON.stringify(data, null, '\t'));
						}
					});
		}
	</script>
</body>
</html>