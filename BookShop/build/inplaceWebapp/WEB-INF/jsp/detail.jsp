<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>商品详情</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
 <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
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
						<div class="col-md-8">
							<ul class="nav nav-pills">
								<li class="active">
									<a href="home">首页</a>
								</li>
								<li>
									<a href="novel">小说</a>
								</li>
								<li>
									<a href="literature">文学</a>
								</li>
								<li>
									<a href="history">历史</a>
								</li>
								<li>
									<a href="science">科普</a>
								</li>
								<li>
									<a href="cart">购物车</a>
								</li>
								<li class="dropdown pull-right">
									 <a href="#" data-toggle="dropdown" class="dropdown-toggle">其他<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="background">管理员后台</a>
										</li>
										<li>
											<a href="resigter">注册</a>
										</li>
										<li>
											<a href="loginForm">用户切换</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="col-md-4">
							 
							<address>
								 <strong>${sessionScope.user_session.identity } ${sessionScope.user_session.username }</strong><br> 欢迎您的光临！<br> 您是今天在线的1位顾客之一
							</address>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="panel-group" id="panel-970909">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-970909" href="#panel-element-272487">书海拾珠</a>
					</div>
					<div id="panel-element-272487" class="panel-collapse collapse in">
						<div class="panel-body">
							<a href="home">首页</a><br>
							<a href="novel">小说</a><br>
							<a href="literature">文学</a><br>
							<a href="history">历史</a><br>
							<a href="science">科普</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-970909" href="#panel-element-389560">其他</a>
					</div>
					<div id="panel-element-389560" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="cart">购物车</a><br>
							<a href="resigter">注册</a><br>
							<a href="background">管理员后台</a><br>
							<a href="loginForm">用户切换</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="row">
			
				<div class="col-md-9">
				
					<div class="col-md-9">
							<img alt="商品图片" src="images/${book.picture_l }">
					</div>
					<div class="col-md-9">
							<img alt="商品图片" src="images/${book.picture_s }">
					</div>
					<blockquote>
						<p>
							<font size=5 face="方正舒体"><strong>亲爱的书友, 衷心的感谢您能来看我的书《<font color="red">${book.bookname }</font>》</strong></font>
						</p> <font size=5><small>您的朋友<cite>${book.author }</cite></small></font>
					</blockquote>
					<dl>
						<dt>
							<font size=4>出版社</font>
						</dt>
						<dd>
							<font size=4>${book.publish }</font>
						</dd>
						<dt>
							<font size=4>书号</font>
						</dt>
						<dd>
							<font size=4>${book.bookID }</font>
						</dd>
						<dt>
							<font size=4>价格</font>
						</dt>
						<dd>
							<font size=6>${book.price }</font>
						</dd>
						<dt>
							<font size=4>希望您能享受您的阅读生活</font>
						</dt>
						
					 </dl>
				 <form  action="addDetail" method="post">
					<input type="hidden" name="loginname" id="loginname" value="${sessionScope.user_session.loginname }"   >
					<input type="hidden" name="bookname" id="bookname" value="${book.bookname }"   >
					<input type="hidden" name="price" id="price" value="${book.price }"   >
					购买份数：<input type="text" name="count" id="count" value="1" >
					<input type="submit" class="btn btn-danger btn-lg  active" value="购买" />
				</form> 
				<!-- <a href="addDetail?loginname=${sessionScope.user_session.loginname }&bookname=${book.bookname}&price=${book.price }"	>加入购物车</a> -->
				</div>
			</div>
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