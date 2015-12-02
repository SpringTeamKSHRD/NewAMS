<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
li{
 font-family: Georgia;
 font-size: 16px;
 color: blue;
}
b{
background: none;
}
li:hover{
background: white;
}
</style>
<body>
	<div class="container-fluid" style="background:rgb(240,240,240);">
		<div class="row col-md-12" style="padding: 0px; margin: auto;">
			<!--row1  -->
			<div class="col-sm-12" style="padding: 0px; ">
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
					<li role="presentation" class="active"><a class="act" href="api">Article</a></li>
					<li role="presentation"><a href="userarticlepage">User Article</a></li>
					<li role="presentation"><a href="adminuser">Admin User</a></li>
				</ul>
			</div>
		</div>
		<!--end row2  -->
		<div class="row col-md-12" style="margin:5px auto; padding:0px; box-shadow:-1px -1px 3px gray;">
			<!--row3  -->
			<div class="col-sm-12">
					<h4 style="color:red; text-align: center;">Get Article List: Method GET</h4>
					<h4 style="text-align: center; color: green;">URL:http://team-master.herokuapp.com/api/article/</h4>
			</div>
			<div class="col-sm-12" style="margin:0px 0px 10px 0px;">
					<textarea rows="5" cols="auto" class="form-control" id="textget"></textarea>
					<button type="button" style="margin-top: 10px;" class="btn btn-primary pull-right"
					 onclick="send1()">
						<b>S</b>end
					</button>
			</div>
			<div class="col-sm-12" style="margin:0px 0px 10px 0px;">
					<textarea rows="20" style="color:blue;" cols="auto" class="form-control" id="display1"></textarea>
			</div>
		</div>
		<!--end row3  -->
		<div class="row col-md-12" style="margin:5px auto; padding:0px; box-shadow:-1px -1px 3px gray;">
			<!--row4  -->
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color:red; text-align: center;">Search Article: Method GET</h4>
					<h4 style="text-align: center; color: green;">URL:http://team-master.herokuapp.com/api/article/</h4>
			</div>
			<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="10" cols="auto" class="form-control" id="textget2"></textarea>
					<button type="button" style="margin-top: 10px;" class="btn btn-primary pull-right"
					 onclick="send2()">
						<b>S</b>end
					</button>
			</div>
			<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="10" style="color:blue;"" cols="auto" class="form-control" id="display2"></textarea>
			</div>
		</div>
		</div>
		<!--end row4  -->
		<div class="row col-md-12" style="margin:5px auto; padding:0px; box-shadow:-1px -1px 3px gray;">
			<!--row4  -->
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color:red; text-align: center;">Get Article Detail: Method GET</h4>
					<h4 style="text-align: center; color: green;">URL:http://team-master.herokuapp.com/api/article/{id}</h4>
			</div>
			<div class="col-sm-12" style="margin-bottom: 10px;">
					<input type="text"  class="form-control" id="textget3"/>
					<button type="button" style="margin-top: 10px;" class="btn btn-primary pull-right"
					 onclick="send3()">
						<b>S</b>end
					</button>
			</div>
			<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="10" style="color:blue;" cols="auto" class="form-control" id="display3"></textarea>
			</div>
		</div>
		<!--end row4  -->
	</div>
	</div>
	<script type="text/javascript">
	    $("#textget").val(JSON.stringify({
	    	limitRow:10,
	    	page:1,
	    	key:"R"},null,'\t'));
	    function send1(){
	    	var json=JSON.parse($("#textget").val());
	    	 $.ajax({
	    		type : "POST",
	    		url : "${pageContext.request.contextPath}/api/article/",
	    		dataType : 'json',
	    		data : json,
	    		success : function(data) {
	    			$("#display1").val(JSON.stringify(data,null,'\t'));
	    		},
	    		error : function(data) {
	    			$("#display1").val(JSON.stringify(data,null,'\t'));
	    		}
	    	});
	    }
	    $("#textget2").val(JSON.stringify({
	    	limitRow:10,page:1,
	    	search:"Ch",
	    	columnName:"title",
	    	key:"S"},null,'\t'));
	    function send2(){
	    	var json=JSON.parse($("#textget2").val());
	    	 $.ajax({
	    		type : "POST",
	    		url : "${pageContext.request.contextPath}/api/article/",
	    		dataType : 'json',
	    		data : json,
	    		success : function(data) {
	    			$("#display2").val(JSON.stringify(data,null,'\t'));
	    		},
	    		error : function(data) {
	    			$("#display2").val(JSON.stringify(data,null,'\t'));
	    		}
	    	});
	    }
	    function send3(){
	    	 $.ajax({
	    		type : "GET",
	    		url : "${pageContext.request.contextPath}/api/article/"+ $("#textget3").val(),
	    		success : function(data) {
	    			$("#display3").val(JSON.stringify(data,null,'\t'));
	    		},
	    		error : function(data) {
	    			$("#display3").val(JSON.stringify(data,null,'\t'));
	    		}
	    	});
	    }
	</script>
</body>
</html>