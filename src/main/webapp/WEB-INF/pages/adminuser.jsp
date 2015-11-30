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
					<li role="presentation"><a href="userarticlepage">User
							Article</a></li>
					<li role="presentation" class="active"><a href="adminuser">Admin
							User</a></li>
				</ul>
			</div>
		</div>
		<!--end row2  -->
		<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">
			<!--row3  -->
			<div class="col-sm-12">
				<h4 style="color: red; text-align: center;">Save Article:
					Method POST</h4>
				<h4 style="text-align: center; color: green;">URL:http://localhost:8080/ArticleManagement/api/admin/user/</h4>
			</div>
			<div class="col-sm-12" style="margin: 0px 0px 10px 0px;">
			    <form action="">
			       <input type="file" name="file" id="file"/> 
			    </form> 
				<textarea rows="10" cols="auto" class="form-control" id="textget"></textarea>
				<button type="button" style="margin-top: 10px;"
					class="btn btn-primary pull-right" onclick="send1()">
					<b>S</b>end
				</button>
			</div>
			<div class="col-sm-12" style="margin: 0px 0px 10px 0px;">
				<textarea rows="4" style="color: blue;" " cols="auto"
					class="form-control" id="display1"></textarea>
			</div>
		</div>
		<!--end row3  -->
		<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">
			<!--row4  -->
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color: red; text-align: center;">Update Article:
						Method PUT</h4>
					<h4 style="text-align: center; color: green;">URL:http://localhost:8080/ArticleManagement/api/admin/user/</h4>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
				     <form action="">
			       <input type="file" name="file" id="file2"/> 
			    </form> 
					<textarea rows="11" cols="auto" class="form-control" id="textget2"></textarea>
					<button type="button" style="margin-top: 10px;"
						class="btn btn-primary pull-right" onclick="send2()">
						<b>S</b>end
					</button>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="4" style="color: blue;" " cols="auto"
						class="form-control" id="display2"></textarea>
				</div>
			</div>
		</div>
		<!--end row4  -->
		<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">
			<!--row5  -->
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color: red; text-align: center;">Get User
						Detail: Method GET</h4>
					<h4 style="text-align: center; color: green;">URL:http://localhost:8080/ArticleManagement/api/admin/user/{id}</h4>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<input type="text" class="form-control" id="textget3" />
					<button type="button" style="margin-top: 10px;"
						class="btn btn-primary pull-right" onclick="send3()">
						<b>S</b>end
					</button>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="10" style="color: blue;" cols="auto"
						class="form-control" id="display3"></textarea>
				</div>
			</div>
			<!--end row5  -->
		</div>
		<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">
			<!--row6  -->
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color: red; text-align: center;">Search User:
						Method GET</h4>
					<h4 style="text-align: center; color: green;">URL:http://localhost:8080/ArticleManagement/api/admin/user/</h4>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="7" cols="auto" class="form-control" id="textget4"></textarea>
					<button type="button" style="margin-top: 10px;"
						class="btn btn-primary pull-right" onclick="send4()">
						<b>S</b>end
					</button>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="15" style="color: blue;" cols="auto"
						class="form-control" id="display4"></textarea>
				</div>
			</div>
		</div>
		<!--end row6  -->
		<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">
			<!--row7  -->
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color: red; text-align: center;">Delete User
						Detail: Method DELETE</h4>
					<h4 style="text-align: center; color: green;">URL:http://localhost:8080/ArticleManagement/api/admin/user/{id}</h4>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<input type="text" class="form-control" id="textget5" />
					<button type="button" style="margin-top: 10px;"
						class="btn btn-primary pull-right" onclick="send5()">
						<b>S</b>end
					</button>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="4" style="color: blue;" cols="auto"
						class="form-control" id="display5"></textarea>
				</div>
			</div>
			<!--end row7  -->
		</div>
	</div>
	<div class="row col-md-12"
			style="margin: 5px auto; padding: 0px; box-shadow: -1px -1px 3px gray;">
			<!--row6  -->
			<div class="col-sm-12">
				<div class="col-sm-12">
					<h4 style="color: red; text-align: center;">List User:
						Method GET</h4>
					<h4 style="text-align: center; color: green;">URL:http://localhost:8080/ArticleManagement/api/admin/user/</h4>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="5" cols="auto" class="form-control" id="textget6"></textarea>
					<button type="button" style="margin-top: 10px;"
						class="btn btn-primary pull-right" onclick="send6()">
						<b>S</b>end
					</button>
				</div>
				<div class="col-sm-12" style="margin-bottom: 10px;">
					<textarea rows="15" style="color: blue;" cols="auto"
						class="form-control" id="display6"></textarea>
				</div>
			</div>
		</div>
		<!--end row6  -->
	<script type="text/javascript">
	  //Save
		$("#textget").val(JSON.stringify({
			name : "Nem Sopheak",
			gender : "f",
			email : "nemsopheak123@yahoo.com",
			address : "Phnom Penh",
			phone : "012345678",
			username : "sopheak",
			password : "876543",
		}, null, '\t'));
		function send1() {
			var json = JSON.parse($("#textget").val());
		    json.image=$("#file").val().replace(/^.*[\\\/]/, '');
			$.ajax({
				type : "POST",
				dataType : 'json',
				data :json,
				url : "${pageContext.request.contextPath}/api/admin/user/",
				success : function(data) {
					processUpload();
					$("#display1").val(JSON.stringify(data, null, '\t'));
				},
				error : function(data) {
					$("#display1").val(JSON.stringify(data, null, '\t'));
				}
			});
		}
		function processUpload() {
			var oMyForm = new FormData();
			oMyForm.append('file', $('#file')[0].files[0]);
			$.ajax({
				dataType : 'json',
				url : "${pageContext.request.contextPath}/api/admin/user/uploadprofile",
				data : oMyForm,
				type : "POST",
				enctype : 'multipart/form-data',
				processData : false,
				contentType : false,
				success : function(result) {
						alert("Save and Upload Successful..!");
				},
				error:function(result){
					alert(result.MESSAGE);
				}
			});
		}
		//Updat User
		$("#textget2").val(JSON.stringify({
			id : 3,
			name : "Nem Sopheak",
			gender : "f",
			email : "nemsopheak123@yahoo.com",
			address : "Phnom Penh",
			phone : "012345678",
			username : "sopheak",
			password : "876543",
		}, null, '\t'));
		function send2() {
			var json=JSON.parse($("#textget2").val());
			json.image=$("#file2").val().replace(/^.*[\\\/]/, '');
			$.ajax({
				type : "PUT",
				contentType : 'application/json',
				data :JSON.stringify(json),
				url : "${pageContext.request.contextPath}/api/admin/user/",
				success : function(data) {
					if(ischange){
					processUpload2();
					}
					ischange=false;
					$("#display2").val(JSON.stringify(data, null, '\t'));
				},
				error : function(data) {
					$("#display2").val(JSON.stringify(data, null, '\t'));
				}
			});
		}
		function processUpload2() {
			var oMyForm = new FormData();
			oMyForm.append('file', $('#file2')[0].files[0]);
			$.ajax({
				dataType : 'json',
				url : "${pageContext.request.contextPath}/api/admin/user/uploadprofile",
				data : oMyForm,
				type : "POST",
				enctype : 'multipart/form-data',
				processData : false,
				contentType : false,
				success : function(result) {
						alert("Save and Upload Successful..!");
				},
				error:function(result){
					alert(result.MESSAGE);
				}
			});
		}
		//Get User Detail
		function send3(){
			 $.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/api/admin/user/"+ $("#textget3").val(),
				success : function(data) {
					$("#display3").val(JSON.stringify(data,null,'\t'));
				},
				error : function(data) {
					$("#display3").val(JSON.stringify(data,null,'\t'));
				}
			});
		}
		
		//Search User
		$("#textget4").val(JSON.stringify({
			keyword:"S",
			key:"l",
			limit:10,
			page:1,
			columnName:"name"
		}, null, '\t'));
		function send4() {
			$.ajax({
				type : "GET",
				dataType : 'json',
				data : JSON.parse($("#textget4").val()),
				url : "${pageContext.request.contextPath}/api/admin/user/",
				success : function(data) {
					$("#display4").val(JSON.stringify(data, null, '\t'));
				},
				error : function(data) {
					$("#display4").val(JSON.stringify(data, null, '\t'));
				}
			});
		}
		//Delete User
		function send5(){
			 $.ajax({
				type : "DELETE",
				url : "${pageContext.request.contextPath}/api/admin/user/"+ $("#textget5").val(),
				success : function(data) {
					$("#display5").val(JSON.stringify(data,null,'\t'));
				},
				error : function(data) {
					$("#display5").val(JSON.stringify(data,null,'\t'));
				}
			});
		}
		
		//List User
		$("#textget6").val(JSON.stringify({
			keyword:"R",
			page:1,
			limit:10
		}, null, '\t'));
		function send6() {
			$.ajax({
				type : "GET",
				dataType : 'json',
				data : JSON.parse($("#textget6").val()),
				url : "${pageContext.request.contextPath}/api/admin/user/",
				success : function(data) {
					$("#display6").val(JSON.stringify(data, null, '\t'));
				},
				error : function(data) {
					$("#display6").val(JSON.stringify(data, null, '\t'));
				}
			});
		}
		var ischange=false;
	    $("#file2").change(function(){
	    	ischange=true;
	    });
	</script>
</body>
</html>