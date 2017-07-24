<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>登录页面</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<img alt="书山有路" src="images/Logol2.jpg">
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-3">
				</div>
				<div class="col-md-3">
					<h3><font face="华文行楷">
						书山有路勤为径<br>
						学海无涯苦作舟</font>
					</h3>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<form class="form-horizontal" role="form" action="login" method="post">
				<div class="form-group">
					 
					<label for="inputEmail3" class="col-sm-2 control-label">
						用户名
					</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="loginname" name="loginname" value="请输入您的用户名">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						密码
					</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password" name="password" value="请输入您的密码">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 
							<label>
								<input type="checkbox"> 记住我
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 
						<button type="submit" class="btn btn-default">
							登录
						</button>
						<button type="button" class="btn btn-default">
							<a href="resigter">注册</a>
						</button>
						<button type="button" class="btn btn-default">
							<a href="forget">忘记密码</a>
						</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-4">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<h5 class="text-center">
				Java EE 大作业应用
			</h5>
			<h5 class="text-center text-muted">
				电子商务15-2高垚攀（09153677）
			</h5>
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>